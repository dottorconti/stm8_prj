   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.10.2 - 02 Nov 2011
   3                     ; Generator (Limited) V4.3.7 - 29 Nov 2011
  17                     ; 53 void EXTI_DeInit(void)
  17                     ; 54 {
  18                     	scross	off
  19                     .text:	section	.text,new
  20  0000               _EXTI_DeInit:
  22                     ; 55   EXTI->CR1 = EXTI_CR1_RESET_VALUE;
  23  0000 725f50a0      	clr	20640
  24                     ; 56   EXTI->CR2 = EXTI_CR2_RESET_VALUE;
  25  0004 725f50a1      	clr	20641
  26                     ; 57 }
  27  0008 81            	ret
  29                     ; 70 void EXTI_SetExtIntSensitivity(EXTI_Port_TypeDef Port, EXTI_Sensitivity_TypeDef SensitivityValue)
  29                     ; 71 {
  30                     .text:	section	.text,new
  31  0000               _EXTI_SetExtIntSensitivity:
  32  0000 89            	pushw	x
  33       00000000      OFST:	set	0
  35                     ; 73   assert_param(IS_EXTI_PORT_OK(Port));
  36  0001 a30000        	cpw	x,#0
  37  0004 2714          	jreq	L01
  38  0006 a30001        	cpw	x,#1
  39  0009 270f          	jreq	L01
  40  000b a30002        	cpw	x,#2
  41  000e 270a          	jreq	L01
  42  0010 a30003        	cpw	x,#3
  43  0013 2705          	jreq	L01
  44  0015 a30004        	cpw	x,#4
  45  0018 2603          	jrne	L6
  46  001a               L01:
  47  001a 4f            	clr	a
  48  001b 2010          	jra	L21
  49  001d               L6:
  50  001d ae0049        	ldw	x,#73
  51  0020 89            	pushw	x
  52  0021 ae0000        	ldw	x,#0
  53  0024 89            	pushw	x
  54  0025 ae0000        	ldw	x,#L71
  55  0028 cd0000        	call	_assert_failed
  57  002b 5b04          	addw	sp,#4
  58  002d               L21:
  59                     ; 74   assert_param(IS_EXTI_SENSITIVITY_OK(SensitivityValue));
  60  002d 1e05          	ldw	x,(OFST+5,sp)
  61  002f 2715          	jreq	L61
  62  0031 1e05          	ldw	x,(OFST+5,sp)
  63  0033 a30001        	cpw	x,#1
  64  0036 270e          	jreq	L61
  65  0038 1e05          	ldw	x,(OFST+5,sp)
  66  003a a30002        	cpw	x,#2
  67  003d 2707          	jreq	L61
  68  003f 1e05          	ldw	x,(OFST+5,sp)
  69  0041 a30003        	cpw	x,#3
  70  0044 2603          	jrne	L41
  71  0046               L61:
  72  0046 4f            	clr	a
  73  0047 2010          	jra	L02
  74  0049               L41:
  75  0049 ae004a        	ldw	x,#74
  76  004c 89            	pushw	x
  77  004d ae0000        	ldw	x,#0
  78  0050 89            	pushw	x
  79  0051 ae0000        	ldw	x,#L71
  80  0054 cd0000        	call	_assert_failed
  82  0057 5b04          	addw	sp,#4
  83  0059               L02:
  84                     ; 77   switch (Port)
  85  0059 1e01          	ldw	x,(OFST+1,sp)
  87                     ; 99   default:
  87                     ; 100     break;
  88  005b 5d            	tnzw	x
  89  005c 270e          	jreq	L3
  90  005e 5a            	decw	x
  91  005f 271d          	jreq	L5
  92  0061 5a            	decw	x
  93  0062 272e          	jreq	L7
  94  0064 5a            	decw	x
  95  0065 2742          	jreq	L11
  96  0067 5a            	decw	x
  97  0068 2756          	jreq	L31
  98  006a 2064          	jra	L32
  99  006c               L3:
 100                     ; 79   case EXTI_PORT_GPIOA:
 100                     ; 80     EXTI->CR1 &= (uint8_t)(~EXTI_CR1_PAIS);
 101  006c c650a0        	ld	a,20640
 102  006f a4fc          	and	a,#252
 103  0071 c750a0        	ld	20640,a
 104                     ; 81     EXTI->CR1 |= (uint8_t)(SensitivityValue);
 105  0074 c650a0        	ld	a,20640
 106  0077 1a06          	or	a,(OFST+6,sp)
 107  0079 c750a0        	ld	20640,a
 108                     ; 82     break;
 109  007c 2052          	jra	L32
 110  007e               L5:
 111                     ; 83   case EXTI_PORT_GPIOB:
 111                     ; 84     EXTI->CR1 &= (uint8_t)(~EXTI_CR1_PBIS);
 112  007e c650a0        	ld	a,20640
 113  0081 a4f3          	and	a,#243
 114  0083 c750a0        	ld	20640,a
 115                     ; 85     EXTI->CR1 |= (uint8_t)((uint8_t)(SensitivityValue) << 2);
 116  0086 7b06          	ld	a,(OFST+6,sp)
 117  0088 48            	sll	a
 118  0089 48            	sll	a
 119  008a ca50a0        	or	a,20640
 120  008d c750a0        	ld	20640,a
 121                     ; 86     break;
 122  0090 203e          	jra	L32
 123  0092               L7:
 124                     ; 87   case EXTI_PORT_GPIOC:
 124                     ; 88     EXTI->CR1 &= (uint8_t)(~EXTI_CR1_PCIS);
 125  0092 c650a0        	ld	a,20640
 126  0095 a4cf          	and	a,#207
 127  0097 c750a0        	ld	20640,a
 128                     ; 89     EXTI->CR1 |= (uint8_t)((uint8_t)(SensitivityValue) << 4);
 129  009a 7b06          	ld	a,(OFST+6,sp)
 130  009c 97            	ld	xl,a
 131  009d a610          	ld	a,#16
 132  009f 42            	mul	x,a
 133  00a0 9f            	ld	a,xl
 134  00a1 ca50a0        	or	a,20640
 135  00a4 c750a0        	ld	20640,a
 136                     ; 90     break;
 137  00a7 2027          	jra	L32
 138  00a9               L11:
 139                     ; 91   case EXTI_PORT_GPIOD:
 139                     ; 92     EXTI->CR1 &= (uint8_t)(~EXTI_CR1_PDIS);
 140  00a9 c650a0        	ld	a,20640
 141  00ac a43f          	and	a,#63
 142  00ae c750a0        	ld	20640,a
 143                     ; 93     EXTI->CR1 |= (uint8_t)((uint8_t)(SensitivityValue) << 6);
 144  00b1 7b06          	ld	a,(OFST+6,sp)
 145  00b3 97            	ld	xl,a
 146  00b4 a640          	ld	a,#64
 147  00b6 42            	mul	x,a
 148  00b7 9f            	ld	a,xl
 149  00b8 ca50a0        	or	a,20640
 150  00bb c750a0        	ld	20640,a
 151                     ; 94     break;
 152  00be 2010          	jra	L32
 153  00c0               L31:
 154                     ; 95   case EXTI_PORT_GPIOE:
 154                     ; 96     EXTI->CR2 &= (uint8_t)(~EXTI_CR2_PEIS);
 155  00c0 c650a1        	ld	a,20641
 156  00c3 a4fc          	and	a,#252
 157  00c5 c750a1        	ld	20641,a
 158                     ; 97     EXTI->CR2 |= (uint8_t)(SensitivityValue);
 159  00c8 c650a1        	ld	a,20641
 160  00cb 1a06          	or	a,(OFST+6,sp)
 161  00cd c750a1        	ld	20641,a
 162                     ; 98     break;
 163  00d0               L51:
 164                     ; 99   default:
 164                     ; 100     break;
 165  00d0               L32:
 166                     ; 102 }
 167  00d0 85            	popw	x
 168  00d1 81            	ret
 170                     ; 111 void EXTI_SetTLISensitivity(EXTI_TLISensitivity_TypeDef SensitivityValue)
 170                     ; 112 {
 171                     .text:	section	.text,new
 172  0000               _EXTI_SetTLISensitivity:
 173  0000 89            	pushw	x
 174       00000000      OFST:	set	0
 176                     ; 114   assert_param(IS_EXTI_TLISENSITIVITY_OK(SensitivityValue));
 177  0001 a30000        	cpw	x,#0
 178  0004 2705          	jreq	L62
 179  0006 a30004        	cpw	x,#4
 180  0009 2603          	jrne	L42
 181  000b               L62:
 182  000b 4f            	clr	a
 183  000c 2010          	jra	L03
 184  000e               L42:
 185  000e ae0072        	ldw	x,#114
 186  0011 89            	pushw	x
 187  0012 ae0000        	ldw	x,#0
 188  0015 89            	pushw	x
 189  0016 ae0000        	ldw	x,#L71
 190  0019 cd0000        	call	_assert_failed
 192  001c 5b04          	addw	sp,#4
 193  001e               L03:
 194                     ; 117   EXTI->CR2 &= (uint8_t)(~EXTI_CR2_TLIS);
 195  001e 721550a1      	bres	20641,#2
 196                     ; 118   EXTI->CR2 |= (uint8_t)(SensitivityValue);
 197  0022 c650a1        	ld	a,20641
 198  0025 1a02          	or	a,(OFST+2,sp)
 199  0027 c750a1        	ld	20641,a
 200                     ; 119 }
 201  002a 85            	popw	x
 202  002b 81            	ret
 204                     ; 126 EXTI_Sensitivity_TypeDef EXTI_GetExtIntSensitivity(EXTI_Port_TypeDef Port)
 204                     ; 127 {
 205                     .text:	section	.text,new
 206  0000               _EXTI_GetExtIntSensitivity:
 207  0000 89            	pushw	x
 208  0001 88            	push	a
 209       00000001      OFST:	set	1
 211                     ; 128   uint8_t value = 0;
 212  0002 0f01          	clr	(OFST+0,sp)
 213                     ; 131   assert_param(IS_EXTI_PORT_OK(Port));
 214  0004 a30000        	cpw	x,#0
 215  0007 2714          	jreq	L63
 216  0009 a30001        	cpw	x,#1
 217  000c 270f          	jreq	L63
 218  000e a30002        	cpw	x,#2
 219  0011 270a          	jreq	L63
 220  0013 a30003        	cpw	x,#3
 221  0016 2705          	jreq	L63
 222  0018 a30004        	cpw	x,#4
 223  001b 2603          	jrne	L43
 224  001d               L63:
 225  001d 4f            	clr	a
 226  001e 2010          	jra	L04
 227  0020               L43:
 228  0020 ae0083        	ldw	x,#131
 229  0023 89            	pushw	x
 230  0024 ae0000        	ldw	x,#0
 231  0027 89            	pushw	x
 232  0028 ae0000        	ldw	x,#L71
 233  002b cd0000        	call	_assert_failed
 235  002e 5b04          	addw	sp,#4
 236  0030               L04:
 237                     ; 133   switch (Port)
 238  0030 1e02          	ldw	x,(OFST+1,sp)
 240                     ; 150   default:
 240                     ; 151     break;
 241  0032 5d            	tnzw	x
 242  0033 270e          	jreq	L52
 243  0035 5a            	decw	x
 244  0036 2714          	jreq	L72
 245  0038 5a            	decw	x
 246  0039 271c          	jreq	L13
 247  003b 5a            	decw	x
 248  003c 2725          	jreq	L33
 249  003e 5a            	decw	x
 250  003f 2730          	jreq	L53
 251  0041 2035          	jra	L34
 252  0043               L52:
 253                     ; 135   case EXTI_PORT_GPIOA:
 253                     ; 136     value = (uint8_t)(EXTI->CR1 & EXTI_CR1_PAIS);
 254  0043 c650a0        	ld	a,20640
 255  0046 a403          	and	a,#3
 256  0048 6b01          	ld	(OFST+0,sp),a
 257                     ; 137     break;
 258  004a 202c          	jra	L34
 259  004c               L72:
 260                     ; 138   case EXTI_PORT_GPIOB:
 260                     ; 139     value = (uint8_t)((uint8_t)(EXTI->CR1 & EXTI_CR1_PBIS) >> 2);
 261  004c c650a0        	ld	a,20640
 262  004f a40c          	and	a,#12
 263  0051 44            	srl	a
 264  0052 44            	srl	a
 265  0053 6b01          	ld	(OFST+0,sp),a
 266                     ; 140     break;
 267  0055 2021          	jra	L34
 268  0057               L13:
 269                     ; 141   case EXTI_PORT_GPIOC:
 269                     ; 142     value = (uint8_t)((uint8_t)(EXTI->CR1 & EXTI_CR1_PCIS) >> 4);
 270  0057 c650a0        	ld	a,20640
 271  005a a430          	and	a,#48
 272  005c 4e            	swap	a
 273  005d a40f          	and	a,#15
 274  005f 6b01          	ld	(OFST+0,sp),a
 275                     ; 143     break;
 276  0061 2015          	jra	L34
 277  0063               L33:
 278                     ; 144   case EXTI_PORT_GPIOD:
 278                     ; 145     value = (uint8_t)((uint8_t)(EXTI->CR1 & EXTI_CR1_PDIS) >> 6);
 279  0063 c650a0        	ld	a,20640
 280  0066 a4c0          	and	a,#192
 281  0068 4e            	swap	a
 282  0069 44            	srl	a
 283  006a 44            	srl	a
 284  006b a403          	and	a,#3
 285  006d 6b01          	ld	(OFST+0,sp),a
 286                     ; 146     break;
 287  006f 2007          	jra	L34
 288  0071               L53:
 289                     ; 147   case EXTI_PORT_GPIOE:
 289                     ; 148     value = (uint8_t)(EXTI->CR2 & EXTI_CR2_PEIS);
 290  0071 c650a1        	ld	a,20641
 291  0074 a403          	and	a,#3
 292  0076 6b01          	ld	(OFST+0,sp),a
 293                     ; 149     break;
 294  0078               L73:
 295                     ; 150   default:
 295                     ; 151     break;
 296  0078               L34:
 297                     ; 154   return((EXTI_Sensitivity_TypeDef)value);
 298  0078 7b01          	ld	a,(OFST+0,sp)
 299  007a 5f            	clrw	x
 300  007b 97            	ld	xl,a
 302  007c 5b03          	addw	sp,#3
 303  007e 81            	ret
 305                     ; 162 EXTI_TLISensitivity_TypeDef EXTI_GetTLISensitivity(void)
 305                     ; 163 {
 306                     .text:	section	.text,new
 307  0000               _EXTI_GetTLISensitivity:
 308  0000 88            	push	a
 309       00000001      OFST:	set	1
 311                     ; 164   uint8_t value = 0;
 312                     ; 167   value = (uint8_t)(EXTI->CR2 & EXTI_CR2_TLIS);
 313  0001 c650a1        	ld	a,20641
 314  0004 a404          	and	a,#4
 315  0006 6b01          	ld	(OFST+0,sp),a
 316                     ; 169   return((EXTI_TLISensitivity_TypeDef)value);
 317  0008 7b01          	ld	a,(OFST+0,sp)
 318  000a 5f            	clrw	x
 319  000b 97            	ld	xl,a
 321  000c 84            	pop	a
 322  000d 81            	ret
 324                     	xdef	_EXTI_GetTLISensitivity
 325                     	xdef	_EXTI_GetExtIntSensitivity
 326                     	xdef	_EXTI_SetTLISensitivity
 327                     	xdef	_EXTI_SetExtIntSensitivity
 328                     	xdef	_EXTI_DeInit
 329                     	xref	_assert_failed
 330                     .const:	section	.text
 331  0000               L71:
 332  0000 2e2e5c2e2e5c  	dc.b	"..\..\..\libraries"
 333  0012 5c73746d3873  	dc.b	"\stm8s_stdperiph_d"
 334  0024 72697665725c  	dc.b	"river\src\stm8s_ex"
 335  0036 74692e6300    	dc.b	"ti.c",0
 336                     	end

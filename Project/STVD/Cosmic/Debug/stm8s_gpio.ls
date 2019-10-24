   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.10.2 - 02 Nov 2011
   3                     ; Generator (Limited) V4.3.7 - 29 Nov 2011
  17                     ; 53 void GPIO_DeInit(GPIO_TypeDef* GPIOx)
  17                     ; 54 {
  18                     	scross	off
  19                     .text:	section	.text,new
  20  0000               _GPIO_DeInit:
  22                     ; 55   GPIOx->ODR = GPIO_ODR_RESET_VALUE; /* Reset Output Data Register */
  23  0000 7f            	clr	(x)
  24                     ; 56   GPIOx->DDR = GPIO_DDR_RESET_VALUE; /* Reset Data Direction Register */
  25  0001 6f02          	clr	(2,x)
  26                     ; 57   GPIOx->CR1 = GPIO_CR1_RESET_VALUE; /* Reset Control Register 1 */
  27  0003 6f03          	clr	(3,x)
  28                     ; 58   GPIOx->CR2 = GPIO_CR2_RESET_VALUE; /* Reset Control Register 2 */
  29  0005 6f04          	clr	(4,x)
  30                     ; 59 }
  31  0007 81            	ret
  33                     ; 71 void GPIO_Init(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef GPIO_Pin, GPIO_Mode_TypeDef GPIO_Mode)
  33                     ; 72 {
  34                     .text:	section	.text,new
  35  0000               _GPIO_Init:
  36  0000 89            	pushw	x
  37       00000000      OFST:	set	0
  39                     ; 77   assert_param(IS_GPIO_MODE_OK(GPIO_Mode));
  40  0001 1e07          	ldw	x,(OFST+7,sp)
  41  0003 274d          	jreq	L01
  42  0005 1e07          	ldw	x,(OFST+7,sp)
  43  0007 a30040        	cpw	x,#64
  44  000a 2746          	jreq	L01
  45  000c 1e07          	ldw	x,(OFST+7,sp)
  46  000e a30020        	cpw	x,#32
  47  0011 273f          	jreq	L01
  48  0013 1e07          	ldw	x,(OFST+7,sp)
  49  0015 a30060        	cpw	x,#96
  50  0018 2738          	jreq	L01
  51  001a 1e07          	ldw	x,(OFST+7,sp)
  52  001c a300a0        	cpw	x,#160
  53  001f 2731          	jreq	L01
  54  0021 1e07          	ldw	x,(OFST+7,sp)
  55  0023 a300e0        	cpw	x,#224
  56  0026 272a          	jreq	L01
  57  0028 1e07          	ldw	x,(OFST+7,sp)
  58  002a a30080        	cpw	x,#128
  59  002d 2723          	jreq	L01
  60  002f 1e07          	ldw	x,(OFST+7,sp)
  61  0031 a300c0        	cpw	x,#192
  62  0034 271c          	jreq	L01
  63  0036 1e07          	ldw	x,(OFST+7,sp)
  64  0038 a300b0        	cpw	x,#176
  65  003b 2715          	jreq	L01
  66  003d 1e07          	ldw	x,(OFST+7,sp)
  67  003f a300f0        	cpw	x,#240
  68  0042 270e          	jreq	L01
  69  0044 1e07          	ldw	x,(OFST+7,sp)
  70  0046 a30090        	cpw	x,#144
  71  0049 2707          	jreq	L01
  72  004b 1e07          	ldw	x,(OFST+7,sp)
  73  004d a300d0        	cpw	x,#208
  74  0050 2603          	jrne	L6
  75  0052               L01:
  76  0052 4f            	clr	a
  77  0053 2010          	jra	L21
  78  0055               L6:
  79  0055 ae004d        	ldw	x,#77
  80  0058 89            	pushw	x
  81  0059 ae0000        	ldw	x,#0
  82  005c 89            	pushw	x
  83  005d ae0000        	ldw	x,#L3
  84  0060 cd0000        	call	_assert_failed
  86  0063 5b04          	addw	sp,#4
  87  0065               L21:
  88                     ; 78   assert_param(IS_GPIO_PIN_OK(GPIO_Pin));
  89  0065 1e05          	ldw	x,(OFST+5,sp)
  90  0067 2703          	jreq	L41
  91  0069 4f            	clr	a
  92  006a 2010          	jra	L61
  93  006c               L41:
  94  006c ae004e        	ldw	x,#78
  95  006f 89            	pushw	x
  96  0070 ae0000        	ldw	x,#0
  97  0073 89            	pushw	x
  98  0074 ae0000        	ldw	x,#L3
  99  0077 cd0000        	call	_assert_failed
 101  007a 5b04          	addw	sp,#4
 102  007c               L61:
 103                     ; 81   GPIOx->CR2 &= (uint8_t)(~(GPIO_Pin));
 104  007c 1e01          	ldw	x,(OFST+1,sp)
 105  007e 7b06          	ld	a,(OFST+6,sp)
 106  0080 43            	cpl	a
 107  0081 e404          	and	a,(4,x)
 108  0083 e704          	ld	(4,x),a
 109                     ; 87   if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x80) != (uint8_t)0x00) /* Output mode */
 110  0085 7b08          	ld	a,(OFST+8,sp)
 111  0087 a580          	bcp	a,#128
 112  0089 271f          	jreq	L5
 113                     ; 89     if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x10) != (uint8_t)0x00) /* High level */
 114  008b 7b08          	ld	a,(OFST+8,sp)
 115  008d a510          	bcp	a,#16
 116  008f 2708          	jreq	L7
 117                     ; 91       GPIOx->ODR |= (uint8_t)GPIO_Pin;
 118  0091 1e01          	ldw	x,(OFST+1,sp)
 119  0093 f6            	ld	a,(x)
 120  0094 1a06          	or	a,(OFST+6,sp)
 121  0096 f7            	ld	(x),a
 123  0097 2007          	jra	L11
 124  0099               L7:
 125                     ; 95       GPIOx->ODR &= (uint8_t)(~(GPIO_Pin));
 126  0099 1e01          	ldw	x,(OFST+1,sp)
 127  009b 7b06          	ld	a,(OFST+6,sp)
 128  009d 43            	cpl	a
 129  009e f4            	and	a,(x)
 130  009f f7            	ld	(x),a
 131  00a0               L11:
 132                     ; 98     GPIOx->DDR |= (uint8_t)GPIO_Pin;
 133  00a0 1e01          	ldw	x,(OFST+1,sp)
 134  00a2 e602          	ld	a,(2,x)
 135  00a4 1a06          	or	a,(OFST+6,sp)
 136  00a6 e702          	ld	(2,x),a
 138  00a8 2009          	jra	L31
 139  00aa               L5:
 140                     ; 103     GPIOx->DDR &= (uint8_t)(~(GPIO_Pin));
 141  00aa 1e01          	ldw	x,(OFST+1,sp)
 142  00ac 7b06          	ld	a,(OFST+6,sp)
 143  00ae 43            	cpl	a
 144  00af e402          	and	a,(2,x)
 145  00b1 e702          	ld	(2,x),a
 146  00b3               L31:
 147                     ; 110   if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x40) != (uint8_t)0x00) /* Pull-Up or Push-Pull */
 148  00b3 7b08          	ld	a,(OFST+8,sp)
 149  00b5 a540          	bcp	a,#64
 150  00b7 270a          	jreq	L51
 151                     ; 112     GPIOx->CR1 |= (uint8_t)GPIO_Pin;
 152  00b9 1e01          	ldw	x,(OFST+1,sp)
 153  00bb e603          	ld	a,(3,x)
 154  00bd 1a06          	or	a,(OFST+6,sp)
 155  00bf e703          	ld	(3,x),a
 157  00c1 2009          	jra	L71
 158  00c3               L51:
 159                     ; 116     GPIOx->CR1 &= (uint8_t)(~(GPIO_Pin));
 160  00c3 1e01          	ldw	x,(OFST+1,sp)
 161  00c5 7b06          	ld	a,(OFST+6,sp)
 162  00c7 43            	cpl	a
 163  00c8 e403          	and	a,(3,x)
 164  00ca e703          	ld	(3,x),a
 165  00cc               L71:
 166                     ; 123   if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x20) != (uint8_t)0x00) /* Interrupt or Slow slope */
 167  00cc 7b08          	ld	a,(OFST+8,sp)
 168  00ce a520          	bcp	a,#32
 169  00d0 270a          	jreq	L12
 170                     ; 125     GPIOx->CR2 |= (uint8_t)GPIO_Pin;
 171  00d2 1e01          	ldw	x,(OFST+1,sp)
 172  00d4 e604          	ld	a,(4,x)
 173  00d6 1a06          	or	a,(OFST+6,sp)
 174  00d8 e704          	ld	(4,x),a
 176  00da 2009          	jra	L32
 177  00dc               L12:
 178                     ; 129     GPIOx->CR2 &= (uint8_t)(~(GPIO_Pin));
 179  00dc 1e01          	ldw	x,(OFST+1,sp)
 180  00de 7b06          	ld	a,(OFST+6,sp)
 181  00e0 43            	cpl	a
 182  00e1 e404          	and	a,(4,x)
 183  00e3 e704          	ld	(4,x),a
 184  00e5               L32:
 185                     ; 131 }
 186  00e5 85            	popw	x
 187  00e6 81            	ret
 189                     ; 141 void GPIO_Write(GPIO_TypeDef* GPIOx, uint8_t PortVal)
 189                     ; 142 {
 190                     .text:	section	.text,new
 191  0000               _GPIO_Write:
 192  0000 89            	pushw	x
 193       00000000      OFST:	set	0
 195                     ; 143   GPIOx->ODR = PortVal;
 196  0001 7b05          	ld	a,(OFST+5,sp)
 197  0003 1e01          	ldw	x,(OFST+1,sp)
 198  0005 f7            	ld	(x),a
 199                     ; 144 }
 200  0006 85            	popw	x
 201  0007 81            	ret
 203                     ; 154 void GPIO_WriteHigh(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef PortPins)
 203                     ; 155 {
 204                     .text:	section	.text,new
 205  0000               _GPIO_WriteHigh:
 206  0000 89            	pushw	x
 207       00000000      OFST:	set	0
 209                     ; 156   GPIOx->ODR |= (uint8_t)PortPins;
 210  0001 f6            	ld	a,(x)
 211  0002 1a06          	or	a,(OFST+6,sp)
 212  0004 f7            	ld	(x),a
 213                     ; 157 }
 214  0005 85            	popw	x
 215  0006 81            	ret
 217                     ; 167 void GPIO_WriteLow(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef PortPins)
 217                     ; 168 {
 218                     .text:	section	.text,new
 219  0000               _GPIO_WriteLow:
 220  0000 89            	pushw	x
 221       00000000      OFST:	set	0
 223                     ; 169   GPIOx->ODR &= (uint8_t)(~PortPins);
 224  0001 7b06          	ld	a,(OFST+6,sp)
 225  0003 43            	cpl	a
 226  0004 f4            	and	a,(x)
 227  0005 f7            	ld	(x),a
 228                     ; 170 }
 229  0006 85            	popw	x
 230  0007 81            	ret
 232                     ; 180 void GPIO_WriteReverse(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef PortPins)
 232                     ; 181 {
 233                     .text:	section	.text,new
 234  0000               _GPIO_WriteReverse:
 235  0000 89            	pushw	x
 236       00000000      OFST:	set	0
 238                     ; 182   GPIOx->ODR ^= (uint8_t)PortPins;
 239  0001 f6            	ld	a,(x)
 240  0002 1806          	xor	a,	(OFST+6,sp)
 241  0004 f7            	ld	(x),a
 242                     ; 183 }
 243  0005 85            	popw	x
 244  0006 81            	ret
 246                     ; 191 uint8_t GPIO_ReadOutputData(GPIO_TypeDef* GPIOx)
 246                     ; 192 {
 247                     .text:	section	.text,new
 248  0000               _GPIO_ReadOutputData:
 250                     ; 193   return ((uint8_t)GPIOx->ODR);
 251  0000 f6            	ld	a,(x)
 253  0001 81            	ret
 255                     ; 202 uint8_t GPIO_ReadInputData(GPIO_TypeDef* GPIOx)
 255                     ; 203 {
 256                     .text:	section	.text,new
 257  0000               _GPIO_ReadInputData:
 259                     ; 204   return ((uint8_t)GPIOx->IDR);
 260  0000 e601          	ld	a,(1,x)
 262  0002 81            	ret
 264                     ; 213 BitStatus GPIO_ReadInputPin(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef GPIO_Pin)
 264                     ; 214 {
 265                     .text:	section	.text,new
 266  0000               _GPIO_ReadInputPin:
 267  0000 89            	pushw	x
 268  0001 89            	pushw	x
 269       00000002      OFST:	set	2
 271                     ; 215   return ((BitStatus)(GPIOx->IDR & (uint8_t)GPIO_Pin));
 272  0002 7b08          	ld	a,(OFST+6,sp)
 273  0004 5f            	clrw	x
 274  0005 97            	ld	xl,a
 275  0006 1f01          	ldw	(OFST-1,sp),x
 276  0008 1e03          	ldw	x,(OFST+1,sp)
 277  000a e601          	ld	a,(1,x)
 278  000c 5f            	clrw	x
 279  000d 97            	ld	xl,a
 280  000e 01            	rrwa	x,a
 281  000f 1402          	and	a,(OFST+0,sp)
 282  0011 01            	rrwa	x,a
 283  0012 1401          	and	a,(OFST-1,sp)
 284  0014 01            	rrwa	x,a
 286  0015 5b04          	addw	sp,#4
 287  0017 81            	ret
 289                     ; 225 void GPIO_ExternalPullUpConfig(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef GPIO_Pin, FunctionalState NewState)
 289                     ; 226 {
 290                     .text:	section	.text,new
 291  0000               _GPIO_ExternalPullUpConfig:
 292  0000 89            	pushw	x
 293       00000000      OFST:	set	0
 295                     ; 228   assert_param(IS_GPIO_PIN_OK(GPIO_Pin));
 296  0001 1e05          	ldw	x,(OFST+5,sp)
 297  0003 2703          	jreq	L04
 298  0005 4f            	clr	a
 299  0006 2010          	jra	L24
 300  0008               L04:
 301  0008 ae00e4        	ldw	x,#228
 302  000b 89            	pushw	x
 303  000c ae0000        	ldw	x,#0
 304  000f 89            	pushw	x
 305  0010 ae0000        	ldw	x,#L3
 306  0013 cd0000        	call	_assert_failed
 308  0016 5b04          	addw	sp,#4
 309  0018               L24:
 310                     ; 229   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 311  0018 1e07          	ldw	x,(OFST+7,sp)
 312  001a 2707          	jreq	L64
 313  001c 1e07          	ldw	x,(OFST+7,sp)
 314  001e a30001        	cpw	x,#1
 315  0021 2603          	jrne	L44
 316  0023               L64:
 317  0023 4f            	clr	a
 318  0024 2010          	jra	L05
 319  0026               L44:
 320  0026 ae00e5        	ldw	x,#229
 321  0029 89            	pushw	x
 322  002a ae0000        	ldw	x,#0
 323  002d 89            	pushw	x
 324  002e ae0000        	ldw	x,#L3
 325  0031 cd0000        	call	_assert_failed
 327  0034 5b04          	addw	sp,#4
 328  0036               L05:
 329                     ; 231   if (NewState != DISABLE) /* External Pull-Up Set*/
 330  0036 1e07          	ldw	x,(OFST+7,sp)
 331  0038 270a          	jreq	L52
 332                     ; 233     GPIOx->CR1 |= (uint8_t)GPIO_Pin;
 333  003a 1e01          	ldw	x,(OFST+1,sp)
 334  003c e603          	ld	a,(3,x)
 335  003e 1a06          	or	a,(OFST+6,sp)
 336  0040 e703          	ld	(3,x),a
 338  0042 2009          	jra	L72
 339  0044               L52:
 340                     ; 236     GPIOx->CR1 &= (uint8_t)(~(GPIO_Pin));
 341  0044 1e01          	ldw	x,(OFST+1,sp)
 342  0046 7b06          	ld	a,(OFST+6,sp)
 343  0048 43            	cpl	a
 344  0049 e403          	and	a,(3,x)
 345  004b e703          	ld	(3,x),a
 346  004d               L72:
 347                     ; 238 }
 348  004d 85            	popw	x
 349  004e 81            	ret
 351                     	xdef	_GPIO_ExternalPullUpConfig
 352                     	xdef	_GPIO_ReadInputPin
 353                     	xdef	_GPIO_ReadOutputData
 354                     	xdef	_GPIO_ReadInputData
 355                     	xdef	_GPIO_WriteReverse
 356                     	xdef	_GPIO_WriteLow
 357                     	xdef	_GPIO_WriteHigh
 358                     	xdef	_GPIO_Write
 359                     	xdef	_GPIO_Init
 360                     	xdef	_GPIO_DeInit
 361                     	xref	_assert_failed
 362                     .const:	section	.text
 363  0000               L3:
 364  0000 2e2e5c2e2e5c  	dc.b	"..\..\..\libraries"
 365  0012 5c73746d3873  	dc.b	"\stm8s_stdperiph_d"
 366  0024 72697665725c  	dc.b	"river\src\stm8s_gp"
 367  0036 696f2e6300    	dc.b	"io.c",0
 368                     	end

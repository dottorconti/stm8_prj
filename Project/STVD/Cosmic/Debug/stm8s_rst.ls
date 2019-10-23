   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.10.2 - 02 Nov 2011
   3                     ; Generator (Limited) V4.3.7 - 29 Nov 2011
   4                     ; Optimizer V4.3.6 - 29 Nov 2011
 125                     ; 54 FlagStatus RST_GetFlagStatus(RST_Flag_TypeDef RST_Flag)
 125                     ; 55 {
 127                     .text:	section	.text,new
 128  0000               _RST_GetFlagStatus:
 130  0000 89            	pushw	x
 131       00000000      OFST:	set	0
 134                     ; 57   assert_param(IS_RST_FLAG_OK(RST_Flag));
 136  0001 a30010        	cpw	x,#16
 137  0004 2720          	jreq	L21
 138  0006 a30008        	cpw	x,#8
 139  0009 271b          	jreq	L21
 140  000b a30004        	cpw	x,#4
 141  000e 2716          	jreq	L21
 142  0010 a30002        	cpw	x,#2
 143  0013 2711          	jreq	L21
 144  0015 5a            	decw	x
 145  0016 270e          	jreq	L21
 146  0018 ae0039        	ldw	x,#57
 147  001b 89            	pushw	x
 148  001c 5f            	clrw	x
 149  001d 89            	pushw	x
 150  001e ae0000        	ldw	x,#L55
 151  0021 cd0000        	call	_assert_failed
 153  0024 5b04          	addw	sp,#4
 154  0026               L21:
 155                     ; 60   return((FlagStatus)(((uint8_t)(RST->SR & RST_Flag) == (uint8_t)0x00) ? RESET : SET));
 157  0026 c650b3        	ld	a,20659
 158  0029 1502          	bcp	a,(OFST+2,sp)
 159  002b 2603          	jrne	L61
 160  002d 5f            	clrw	x
 161  002e 2003          	jra	L02
 162  0030               L61:
 163  0030 ae0001        	ldw	x,#1
 164  0033               L02:
 167  0033 5b02          	addw	sp,#2
 168  0035 81            	ret	
 204                     ; 69 void RST_ClearFlag(RST_Flag_TypeDef RST_Flag)
 204                     ; 70 {
 205                     .text:	section	.text,new
 206  0000               _RST_ClearFlag:
 208  0000 89            	pushw	x
 209       00000000      OFST:	set	0
 212                     ; 72   assert_param(IS_RST_FLAG_OK(RST_Flag));
 214  0001 a30010        	cpw	x,#16
 215  0004 2720          	jreq	L03
 216  0006 a30008        	cpw	x,#8
 217  0009 271b          	jreq	L03
 218  000b a30004        	cpw	x,#4
 219  000e 2716          	jreq	L03
 220  0010 a30002        	cpw	x,#2
 221  0013 2711          	jreq	L03
 222  0015 5a            	decw	x
 223  0016 270e          	jreq	L03
 224  0018 ae0048        	ldw	x,#72
 225  001b 89            	pushw	x
 226  001c 5f            	clrw	x
 227  001d 89            	pushw	x
 228  001e ae0000        	ldw	x,#L55
 229  0021 cd0000        	call	_assert_failed
 231  0024 5b04          	addw	sp,#4
 232  0026               L03:
 233                     ; 74   RST->SR = (uint8_t)RST_Flag;
 235  0026 7b02          	ld	a,(OFST+2,sp)
 236  0028 c750b3        	ld	20659,a
 237                     ; 75 }
 240  002b 85            	popw	x
 241  002c 81            	ret	
 254                     	xdef	_RST_ClearFlag
 255                     	xdef	_RST_GetFlagStatus
 256                     	xref	_assert_failed
 257                     .const:	section	.text
 258  0000               L55:
 259  0000 2e2e5c2e2e5c  	dc.b	"..\..\..\libraries"
 260  0012 5c73746d3873  	dc.b	"\stm8s_stdperiph_d"
 261  0024 72697665725c  	dc.b	"river\src\stm8s_rs"
 262  0036 742e6300      	dc.b	"t.c",0
 282                     	end

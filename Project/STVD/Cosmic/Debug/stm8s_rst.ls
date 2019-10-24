   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.10.2 - 02 Nov 2011
   3                     ; Generator (Limited) V4.3.7 - 29 Nov 2011
 121                     ; 54 FlagStatus RST_GetFlagStatus(RST_Flag_TypeDef RST_Flag)
 121                     ; 55 {
 123                     .text:	section	.text,new
 124  0000               _RST_GetFlagStatus:
 126  0000 89            	pushw	x
 127       00000000      OFST:	set	0
 130                     ; 57   assert_param(IS_RST_FLAG_OK(RST_Flag));
 132  0001 a30010        	cpw	x,#16
 133  0004 2714          	jreq	L01
 134  0006 a30008        	cpw	x,#8
 135  0009 270f          	jreq	L01
 136  000b a30004        	cpw	x,#4
 137  000e 270a          	jreq	L01
 138  0010 a30002        	cpw	x,#2
 139  0013 2705          	jreq	L01
 140  0015 a30001        	cpw	x,#1
 141  0018 2603          	jrne	L6
 142  001a               L01:
 143  001a 4f            	clr	a
 144  001b 2010          	jra	L21
 145  001d               L6:
 146  001d ae0039        	ldw	x,#57
 147  0020 89            	pushw	x
 148  0021 ae0000        	ldw	x,#0
 149  0024 89            	pushw	x
 150  0025 ae0000        	ldw	x,#L55
 151  0028 cd0000        	call	_assert_failed
 153  002b 5b04          	addw	sp,#4
 154  002d               L21:
 155                     ; 60   return((FlagStatus)(((uint8_t)(RST->SR & RST_Flag) == (uint8_t)0x00) ? RESET : SET));
 157  002d c650b3        	ld	a,20659
 158  0030 1502          	bcp	a,(OFST+2,sp)
 159  0032 2603          	jrne	L41
 160  0034 5f            	clrw	x
 161  0035 2003          	jra	L61
 162  0037               L41:
 163  0037 ae0001        	ldw	x,#1
 164  003a               L61:
 167  003a 5b02          	addw	sp,#2
 168  003c 81            	ret
 204                     ; 69 void RST_ClearFlag(RST_Flag_TypeDef RST_Flag)
 204                     ; 70 {
 205                     .text:	section	.text,new
 206  0000               _RST_ClearFlag:
 208  0000 89            	pushw	x
 209       00000000      OFST:	set	0
 212                     ; 72   assert_param(IS_RST_FLAG_OK(RST_Flag));
 214  0001 a30010        	cpw	x,#16
 215  0004 2714          	jreq	L42
 216  0006 a30008        	cpw	x,#8
 217  0009 270f          	jreq	L42
 218  000b a30004        	cpw	x,#4
 219  000e 270a          	jreq	L42
 220  0010 a30002        	cpw	x,#2
 221  0013 2705          	jreq	L42
 222  0015 a30001        	cpw	x,#1
 223  0018 2603          	jrne	L22
 224  001a               L42:
 225  001a 4f            	clr	a
 226  001b 2010          	jra	L62
 227  001d               L22:
 228  001d ae0048        	ldw	x,#72
 229  0020 89            	pushw	x
 230  0021 ae0000        	ldw	x,#0
 231  0024 89            	pushw	x
 232  0025 ae0000        	ldw	x,#L55
 233  0028 cd0000        	call	_assert_failed
 235  002b 5b04          	addw	sp,#4
 236  002d               L62:
 237                     ; 74   RST->SR = (uint8_t)RST_Flag;
 239  002d 7b02          	ld	a,(OFST+2,sp)
 240  002f c750b3        	ld	20659,a
 241                     ; 75 }
 244  0032 85            	popw	x
 245  0033 81            	ret
 258                     	xdef	_RST_ClearFlag
 259                     	xdef	_RST_GetFlagStatus
 260                     	xref	_assert_failed
 261                     .const:	section	.text
 262  0000               L55:
 263  0000 2e2e5c2e2e5c  	dc.b	"..\..\..\libraries"
 264  0012 5c73746d3873  	dc.b	"\stm8s_stdperiph_d"
 265  0024 72697665725c  	dc.b	"river\src\stm8s_rs"
 266  0036 742e6300      	dc.b	"t.c",0
 286                     	end

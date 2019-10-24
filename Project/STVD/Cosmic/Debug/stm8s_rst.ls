   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.10.2 - 02 Nov 2011
   3                     ; Generator (Limited) V4.3.7 - 29 Nov 2011
  17                     ; 54 FlagStatus RST_GetFlagStatus(RST_Flag_TypeDef RST_Flag)
  17                     ; 55 {
  18                     	scross	off
  19                     .text:	section	.text,new
  20  0000               _RST_GetFlagStatus:
  21  0000 89            	pushw	x
  22       00000000      OFST:	set	0
  24                     ; 57   assert_param(IS_RST_FLAG_OK(RST_Flag));
  25  0001 a30010        	cpw	x,#16
  26  0004 2714          	jreq	L6
  27  0006 a30008        	cpw	x,#8
  28  0009 270f          	jreq	L6
  29  000b a30004        	cpw	x,#4
  30  000e 270a          	jreq	L6
  31  0010 a30002        	cpw	x,#2
  32  0013 2705          	jreq	L6
  33  0015 a30001        	cpw	x,#1
  34  0018 2603          	jrne	L4
  35  001a               L6:
  36  001a 4f            	clr	a
  37  001b 2010          	jra	L01
  38  001d               L4:
  39  001d ae0039        	ldw	x,#57
  40  0020 89            	pushw	x
  41  0021 ae0000        	ldw	x,#0
  42  0024 89            	pushw	x
  43  0025 ae0000        	ldw	x,#L3
  44  0028 cd0000        	call	_assert_failed
  46  002b 5b04          	addw	sp,#4
  47  002d               L01:
  48                     ; 60   return((FlagStatus)(((uint8_t)(RST->SR & RST_Flag) == (uint8_t)0x00) ? RESET : SET));
  49  002d c650b3        	ld	a,20659
  50  0030 1502          	bcp	a,(OFST+2,sp)
  51  0032 2603          	jrne	L21
  52  0034 5f            	clrw	x
  53  0035 2003          	jra	L41
  54  0037               L21:
  55  0037 ae0001        	ldw	x,#1
  56  003a               L41:
  58  003a 5b02          	addw	sp,#2
  59  003c 81            	ret
  61                     ; 69 void RST_ClearFlag(RST_Flag_TypeDef RST_Flag)
  61                     ; 70 {
  62                     .text:	section	.text,new
  63  0000               _RST_ClearFlag:
  64  0000 89            	pushw	x
  65       00000000      OFST:	set	0
  67                     ; 72   assert_param(IS_RST_FLAG_OK(RST_Flag));
  68  0001 a30010        	cpw	x,#16
  69  0004 2714          	jreq	L22
  70  0006 a30008        	cpw	x,#8
  71  0009 270f          	jreq	L22
  72  000b a30004        	cpw	x,#4
  73  000e 270a          	jreq	L22
  74  0010 a30002        	cpw	x,#2
  75  0013 2705          	jreq	L22
  76  0015 a30001        	cpw	x,#1
  77  0018 2603          	jrne	L02
  78  001a               L22:
  79  001a 4f            	clr	a
  80  001b 2010          	jra	L42
  81  001d               L02:
  82  001d ae0048        	ldw	x,#72
  83  0020 89            	pushw	x
  84  0021 ae0000        	ldw	x,#0
  85  0024 89            	pushw	x
  86  0025 ae0000        	ldw	x,#L3
  87  0028 cd0000        	call	_assert_failed
  89  002b 5b04          	addw	sp,#4
  90  002d               L42:
  91                     ; 74   RST->SR = (uint8_t)RST_Flag;
  92  002d 7b02          	ld	a,(OFST+2,sp)
  93  002f c750b3        	ld	20659,a
  94                     ; 75 }
  95  0032 85            	popw	x
  96  0033 81            	ret
  98                     	xdef	_RST_ClearFlag
  99                     	xdef	_RST_GetFlagStatus
 100                     	xref	_assert_failed
 101                     .const:	section	.text
 102  0000               L3:
 103  0000 2e2e5c2e2e5c  	dc.b	"..\..\..\libraries"
 104  0012 5c73746d3873  	dc.b	"\stm8s_stdperiph_d"
 105  0024 72697665725c  	dc.b	"river\src\stm8s_rs"
 106  0036 742e6300      	dc.b	"t.c",0
 107                     	end

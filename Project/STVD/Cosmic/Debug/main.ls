   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.10.2 - 02 Nov 2011
   3                     ; Generator (Limited) V4.3.7 - 29 Nov 2011
  18                     	switch	.data
  19  0000               _mainFsm:
  20  0000 01            	dc.b	1
  21  0001               _S1_enable:
  22  0001 00            	dc.b	0
  23  0002               _S2_enable:
  24  0002 00            	dc.b	0
  25  0003               _SndDip:
  26  0003 01            	dc.b	1
  27  0004               _debugCnt:
  28  0004 0000          	dc.w	0
  29  0006               _RAW_Data:
  30  0006 0000          	dc.w	0
  72                     ; 28 void main(void)
  72                     ; 29 {
  74                     .text:	section	.text,new
  75  0000               _main:
  79                     ; 30 	init_setup();
  81  0000 cd0000        	call	_init_setup
  83  0003               L52:
  84                     ; 33 		if (timeout500ms)
  86  0003 ce0000        	ldw	x,_timeout500ms
  87                     ; 38 		if (timeout50ms)
  89  0006 ce0000        	ldw	x,_timeout50ms
  90  0009 2703          	jreq	L33
  91                     ; 40 			inputRead();
  93  000b cd0000        	call	_inputRead
  95  000e               L33:
  96                     ; 43 		if (timeout10ms)
  98  000e ce0000        	ldw	x,_timeout10ms
  99  0011 276b          	jreq	L53
 100                     ; 46 			switch (mainFsm)
 102  0013 c60000        	ld	a,_mainFsm
 104                     ; 77 				break;
 105  0016 4a            	dec	a
 106  0017 2705          	jreq	L3
 107  0019 4a            	dec	a
 108  001a 2759          	jreq	L5
 109  001c 2060          	jra	L53
 110  001e               L3:
 111                     ; 48 				case SELCFG:
 111                     ; 49 				if ((S1_IN==1) && (S2_IN==1))
 113  001e ce0000        	ldw	x,_S1_IN
 114  0021 a30001        	cpw	x,#1
 115  0024 2610          	jrne	L34
 117  0026 ce0000        	ldw	x,_S2_IN
 118  0029 a30001        	cpw	x,#1
 119  002c 2608          	jrne	L34
 120                     ; 51 					S1_enable 	= 0;
 122  002e 725f0001      	clr	_S1_enable
 123                     ; 52 					S2_enable 	= 0;
 125  0032 725f0002      	clr	_S2_enable
 126  0036               L34:
 127                     ; 55 				if ((S1_IN==0) && (S2_IN==1))
 129  0036 ce0000        	ldw	x,_S1_IN
 130  0039 2617          	jrne	L54
 132  003b ce0000        	ldw	x,_S2_IN
 133  003e a30001        	cpw	x,#1
 134  0041 260f          	jrne	L54
 135                     ; 57 					S1_enable 	= 1;
 137  0043 35010001      	mov	_S1_enable,#1
 138                     ; 58 					S2_enable 	= 0;
 140  0047 725f0002      	clr	_S2_enable
 141                     ; 59 					SndDip = dipRead(0);
 143  004b 4f            	clr	a
 144  004c cd0000        	call	_dipRead
 146  004f c70003        	ld	_SndDip,a
 147  0052               L54:
 148                     ; 62 				if ((S1_IN==1) && (S2_IN==0))
 150  0052 ce0000        	ldw	x,_S1_IN
 151  0055 a30001        	cpw	x,#1
 152  0058 2615          	jrne	L74
 154  005a ce0000        	ldw	x,_S2_IN
 155  005d 2610          	jrne	L74
 156                     ; 64 					S1_enable 	= 0;
 158  005f 725f0001      	clr	_S1_enable
 159                     ; 65 					S2_enable 	= 1;
 161  0063 35010002      	mov	_S2_enable,#1
 162                     ; 66 					SndDip = dipRead(1);
 164  0067 a601          	ld	a,#1
 165  0069 cd0000        	call	_dipRead
 167  006c c70003        	ld	_SndDip,a
 168  006f               L74:
 169                     ; 69 				mainFsm=RUN;
 171  006f 35020000      	mov	_mainFsm,#2
 172                     ; 70 				break;
 174  0073 2009          	jra	L53
 175  0075               L5:
 176                     ; 72 				case RUN:
 176                     ; 73 				if(timeout10ms)
 178  0075 ce0000        	ldw	x,_timeout10ms
 179  0078 2704          	jreq	L53
 180                     ; 75 					mainFsm=SELCFG;
 182  007a 35010000      	mov	_mainFsm,#1
 183  007e               L14:
 184  007e               L53:
 185                     ; 80 		UpdateTask();			
 187  007e cd0000        	call	_UpdateTask
 190  0081 2080          	jra	L52
 247                     	xdef	_main
 248                     	xdef	_debugCnt
 249                     	xref	_dipRead
 250                     	xref	_init_setup
 251                     	xref	_UpdateTask
 252                     	xref	_inputRead
 253                     	xref	_S2_IN
 254                     	xref	_S1_IN
 255                     	xref	_timeout500ms
 256                     	xref	_timeout50ms
 257                     	xref	_timeout10ms
 258                     	xdef	_RAW_Data
 259                     	xdef	_SndDip
 260                     	xdef	_S2_enable
 261                     	xdef	_S1_enable
 262                     	xdef	_mainFsm
 281                     	end

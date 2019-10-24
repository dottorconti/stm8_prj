   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.10.2 - 02 Nov 2011
   3                     ; Generator (Limited) V4.3.7 - 29 Nov 2011
  17                     	switch	.data
  18  0000               _mainFsm:
  19  0000 01            	dc.b	1
  20  0001               _S1_enable:
  21  0001 00            	dc.b	0
  22  0002               _S2_enable:
  23  0002 00            	dc.b	0
  24  0003               _SndDip:
  25  0003 01            	dc.b	1
  26  0004               _debugCnt:
  27  0004 0000          	dc.w	0
  28  0006               _RAW_Data:
  29  0006 0000          	dc.w	0
  30                     ; 28 void main(void)
  30                     ; 29 {
  31                     	scross	off
  32                     .text:	section	.text,new
  33  0000               _main:
  35                     ; 30 	init_setup();
  36  0000 cd0000        	call	_init_setup
  38  0003               L7:
  39                     ; 33 		if (timeout500ms)
  40  0003 ce0000        	ldw	x,_timeout500ms
  41                     ; 38 		if (timeout50ms)
  42  0006 ce0000        	ldw	x,_timeout50ms
  43  0009 2703          	jreq	L51
  44                     ; 40 			inputRead();
  45  000b cd0000        	call	_inputRead
  47  000e               L51:
  48                     ; 43 		if (timeout10ms)
  49  000e ce0000        	ldw	x,_timeout10ms
  50  0011 276b          	jreq	L71
  51                     ; 46 			switch (mainFsm)
  52  0013 c60000        	ld	a,_mainFsm
  54                     ; 77 				break;
  55  0016 4a            	dec	a
  56  0017 2705          	jreq	L3
  57  0019 4a            	dec	a
  58  001a 2759          	jreq	L5
  59  001c 2060          	jra	L71
  60  001e               L3:
  61                     ; 48 				case SELCFG:
  61                     ; 49 				if ((S1_IN==1) && (S2_IN==1))
  62  001e ce0000        	ldw	x,_S1_IN
  63  0021 a30001        	cpw	x,#1
  64  0024 2610          	jrne	L52
  66  0026 ce0000        	ldw	x,_S2_IN
  67  0029 a30001        	cpw	x,#1
  68  002c 2608          	jrne	L52
  69                     ; 51 					S1_enable 	= 0;
  70  002e 725f0001      	clr	_S1_enable
  71                     ; 52 					S2_enable 	= 0;
  72  0032 725f0002      	clr	_S2_enable
  73  0036               L52:
  74                     ; 55 				if ((S1_IN==0) && (S2_IN==1))
  75  0036 ce0000        	ldw	x,_S1_IN
  76  0039 2617          	jrne	L72
  78  003b ce0000        	ldw	x,_S2_IN
  79  003e a30001        	cpw	x,#1
  80  0041 260f          	jrne	L72
  81                     ; 57 					S1_enable 	= 1;
  82  0043 35010001      	mov	_S1_enable,#1
  83                     ; 58 					S2_enable 	= 0;
  84  0047 725f0002      	clr	_S2_enable
  85                     ; 59 					SndDip = dipRead(0);
  86  004b 4f            	clr	a
  87  004c cd0000        	call	_dipRead
  89  004f c70003        	ld	_SndDip,a
  90  0052               L72:
  91                     ; 62 				if ((S1_IN==1) && (S2_IN==0))
  92  0052 ce0000        	ldw	x,_S1_IN
  93  0055 a30001        	cpw	x,#1
  94  0058 2615          	jrne	L13
  96  005a ce0000        	ldw	x,_S2_IN
  97  005d 2610          	jrne	L13
  98                     ; 64 					S1_enable 	= 0;
  99  005f 725f0001      	clr	_S1_enable
 100                     ; 65 					S2_enable 	= 1;
 101  0063 35010002      	mov	_S2_enable,#1
 102                     ; 66 					SndDip = dipRead(1);
 103  0067 a601          	ld	a,#1
 104  0069 cd0000        	call	_dipRead
 106  006c c70003        	ld	_SndDip,a
 107  006f               L13:
 108                     ; 69 				mainFsm=RUN;
 109  006f 35020000      	mov	_mainFsm,#2
 110                     ; 70 				break;
 111  0073 2009          	jra	L71
 112  0075               L5:
 113                     ; 72 				case RUN:
 113                     ; 73 				if(timeout10ms)
 114  0075 ce0000        	ldw	x,_timeout10ms
 115  0078 2704          	jreq	L71
 116                     ; 75 					mainFsm=SELCFG;
 117  007a 35010000      	mov	_mainFsm,#1
 118  007e               L32:
 119  007e               L71:
 120                     ; 80 		UpdateTask();			
 121  007e cd0000        	call	_UpdateTask
 124  0081 2080          	jra	L7
 126                     	xdef	_main
 127                     	xdef	_debugCnt
 128                     	xref	_dipRead
 129                     	xref	_init_setup
 130                     	xref	_UpdateTask
 131                     	xref	_inputRead
 132                     	xref	_S2_IN
 133                     	xref	_S1_IN
 134                     	xref	_timeout500ms
 135                     	xref	_timeout50ms
 136                     	xref	_timeout10ms
 137                     	xdef	_RAW_Data
 138                     	xdef	_SndDip
 139                     	xdef	_S2_enable
 140                     	xdef	_S1_enable
 141                     	xdef	_mainFsm
 142                     	end

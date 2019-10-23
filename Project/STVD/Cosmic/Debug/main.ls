   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.10.2 - 02 Nov 2011
   3                     ; Generator (Limited) V4.3.7 - 29 Nov 2011
   4                     ; Optimizer V4.3.6 - 29 Nov 2011
  22                     	bsct
  23  0000               _flagCFG1:
  24  0000 0000          	dc.w	0
  25  0002               _flagCFG2:
  26  0002 0000          	dc.w	0
  27  0004               _flagCFG3:
  28  0004 0000          	dc.w	0
  29  0006               _cntCheck:
  30  0006 0000          	dc.w	0
  31  0008               _mainFsm:
  32  0008 01            	dc.b	1
  33  0009               _S1_enable:
  34  0009 00            	dc.b	0
  35  000a               _S2_enable:
  36  000a 00            	dc.b	0
  37  000b               _SndDip:
  38  000b 01            	dc.b	1
  39  000c               _debugCnt:
  40  000c 0000          	dc.w	0
  41  000e               _RAW_Data:
  42  000e 0000          	dc.w	0
  84                     ; 35 void main(void)
  84                     ; 36 {
  86                     .text:	section	.text,new
  87  0000               _main:
  91                     ; 37 	init_setup();
  93  0000 cd0000        	call	_init_setup
  95  0003               L52:
  96                     ; 40 		if (timeout500ms)
  98                     ; 45 		if (timeout50ms)
 100  0003 be00          	ldw	x,_timeout50ms
 101  0005 2703          	jreq	L33
 102                     ; 47 			inputRead();
 104  0007 cd0000        	call	_inputRead
 106  000a               L33:
 107                     ; 51 		if (timeout10ms)
 109  000a be00          	ldw	x,_timeout10ms
 110  000c 2735          	jreq	L53
 111                     ; 54 			switch (mainFsm)
 113  000e b608          	ld	a,_mainFsm
 115                     ; 76 				break;
 116  0010 4a            	dec	a
 117  0011 2706          	jreq	L3
 118  0013 a004          	sub	a,#4
 119  0015 2724          	jreq	L5
 120  0017 202a          	jra	L53
 121  0019               L3:
 122                     ; 56 				case SELCFG: 			//SELEZIONA CONFIGURAZIONE
 122                     ; 57 				if ((S1_IN==0) && (S2_IN==0))
 124  0019 3d00          	tnz	_S1_IN
 125  001b 260b          	jrne	L34
 127  001d 3d00          	tnz	_S2_IN
 128  001f 2607          	jrne	L34
 129                     ; 59 					S1_enable 	= 0;
 131  0021 b709          	ld	_S1_enable,a
 132                     ; 60 					S2_enable 	= 0;
 134  0023 b70a          	ld	_S2_enable,a
 135                     ; 61 					caseCnt 		= 0;
 137  0025 5f            	clrw	x
 138  0026 bf00          	ldw	_caseCnt,x
 139  0028               L34:
 140                     ; 64 				if ((S1_IN==1) && (S2_IN==0))
 142  0028 b600          	ld	a,_S1_IN
 143  002a 4a            	dec	a
 144  002b 2608          	jrne	L54
 146  002d b600          	ld	a,_S2_IN
 147  002f 2604          	jrne	L54
 148                     ; 66 					duty = 50; 
 150  0031 35320000      	mov	_duty,#50
 151  0035               L54:
 152                     ; 68 				mainFsm=RUN;
 154  0035 35050008      	mov	_mainFsm,#5
 155                     ; 69 				break;
 157  0039 2008          	jra	L53
 158  003b               L5:
 159                     ; 71 				case RUN:
 159                     ; 72 				if(timeout10ms)
 161  003b be00          	ldw	x,_timeout10ms
 162  003d 2704          	jreq	L53
 163                     ; 74 					mainFsm=SELCFG;
 165  003f 35010008      	mov	_mainFsm,#1
 166  0043               L53:
 167                     ; 79 		UpdateTask();			
 169  0043 cd0000        	call	_UpdateTask
 172  0046 20bb          	jra	L52
 300                     	xdef	_main
 301                     	xdef	_debugCnt
 302                     	xdef	_cntCheck
 303                     	xref.b	_caseCnt
 304                     	xref	_init_setup
 305                     	xref	_UpdateTask
 306                     	xref	_inputRead
 307                     	xref.b	_S2_IN
 308                     	xref.b	_S1_IN
 309                     	xref.b	_timeout500ms
 310                     	xref.b	_timeout50ms
 311                     	xref.b	_timeout10ms
 312                     	xdef	_RAW_Data
 313                     	xref.b	_duty
 314                     	xdef	_SndDip
 315                     	xdef	_S2_enable
 316                     	xdef	_S1_enable
 317                     	xdef	_mainFsm
 318                     	xdef	_flagCFG3
 319                     	xdef	_flagCFG2
 320                     	xdef	_flagCFG1
 339                     	end

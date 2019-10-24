   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.10.2 - 02 Nov 2011
   3                     ; Generator (Limited) V4.3.7 - 29 Nov 2011
  18                     	switch	.data
  19  0000               _mainFsm:
  20  0000 01            	dc.b	1
  21  0001               _channel:
  22  0001 03            	dc.b	3
  23  0002               _S1_enable:
  24  0002 00            	dc.b	0
  25  0003               _S2_enable:
  26  0003 00            	dc.b	0
  27  0004               _SndDip:
  28  0004 01            	dc.b	1
  29  0005               _debugCnt:
  30  0005 0000          	dc.w	0
  75                     ; 28 void main(void)
  75                     ; 29 {
  77                     .text:	section	.text,new
  78  0000               _main:
  82                     ; 30 	init_setup();
  84  0000 cd0000        	call	_init_setup
  86  0003               L13:
  87                     ; 33 		if (timeout500ms)
  89  0003 ce0000        	ldw	x,_timeout500ms
  90  0006 271b          	jreq	L53
  91                     ; 35 		switch (channel)
  93  0008 c60001        	ld	a,_channel
  95                     ; 43 			break;			
  96  000b a003          	sub	a,#3
  97  000d 2705          	jreq	L3
  98  000f 4a            	dec	a
  99  0010 2709          	jreq	L5
 100  0012 200c          	jra	L14
 101  0014               L3:
 102                     ; 37 			case AIN3:
 102                     ; 38 			ADC_setup(ADC1_CHANNEL_3);
 104  0014 a603          	ld	a,#3
 105  0016 cd0000        	call	_ADC_setup
 107                     ; 39 			break;
 109  0019 2005          	jra	L14
 110  001b               L5:
 111                     ; 41 			case AIN4:
 111                     ; 42 			ADC_setup(ADC1_CHANNEL_4);
 113  001b a604          	ld	a,#4
 114  001d cd0000        	call	_ADC_setup
 116                     ; 43 			break;			
 118  0020               L14:
 119                     ; 45 		ADC1_StartConversion();		
 121  0020 cd0000        	call	_ADC1_StartConversion
 123  0023               L53:
 124                     ; 48 		if (timeout50ms)
 126  0023 ce0000        	ldw	x,_timeout50ms
 127  0026 2703          	jreq	L34
 128                     ; 50 			inputRead();
 130  0028 cd0000        	call	_inputRead
 132  002b               L34:
 133                     ; 53 		if (timeout10ms)
 135  002b ce0000        	ldw	x,_timeout10ms
 136  002e 276b          	jreq	L54
 137                     ; 56 			switch (mainFsm)
 139  0030 c60000        	ld	a,_mainFsm
 141                     ; 87 				break;
 142  0033 4a            	dec	a
 143  0034 2705          	jreq	L7
 144  0036 4a            	dec	a
 145  0037 2759          	jreq	L11
 146  0039 2060          	jra	L54
 147  003b               L7:
 148                     ; 58 				case SELCFG:
 148                     ; 59 				if ((S1_IN==1) && (S2_IN==1))
 150  003b ce0000        	ldw	x,_S1_IN
 151  003e a30001        	cpw	x,#1
 152  0041 2610          	jrne	L35
 154  0043 ce0000        	ldw	x,_S2_IN
 155  0046 a30001        	cpw	x,#1
 156  0049 2608          	jrne	L35
 157                     ; 61 					S1_enable 	= 0;
 159  004b 725f0002      	clr	_S1_enable
 160                     ; 62 					S2_enable 	= 0;
 162  004f 725f0003      	clr	_S2_enable
 163  0053               L35:
 164                     ; 65 				if ((S1_IN==0) && (S2_IN==1))
 166  0053 ce0000        	ldw	x,_S1_IN
 167  0056 2617          	jrne	L55
 169  0058 ce0000        	ldw	x,_S2_IN
 170  005b a30001        	cpw	x,#1
 171  005e 260f          	jrne	L55
 172                     ; 67 					S1_enable 	= 1;
 174  0060 35010002      	mov	_S1_enable,#1
 175                     ; 68 					S2_enable 	= 0;
 177  0064 725f0003      	clr	_S2_enable
 178                     ; 69 					SndDip = dipRead(0);
 180  0068 4f            	clr	a
 181  0069 cd0000        	call	_dipRead
 183  006c c70004        	ld	_SndDip,a
 184  006f               L55:
 185                     ; 72 				if ((S1_IN==1) && (S2_IN==0))
 187  006f ce0000        	ldw	x,_S1_IN
 188  0072 a30001        	cpw	x,#1
 189  0075 2615          	jrne	L75
 191  0077 ce0000        	ldw	x,_S2_IN
 192  007a 2610          	jrne	L75
 193                     ; 74 					S1_enable 	= 0;
 195  007c 725f0002      	clr	_S1_enable
 196                     ; 75 					S2_enable 	= 1;
 198  0080 35010003      	mov	_S2_enable,#1
 199                     ; 76 					SndDip = dipRead(1);
 201  0084 a601          	ld	a,#1
 202  0086 cd0000        	call	_dipRead
 204  0089 c70004        	ld	_SndDip,a
 205  008c               L75:
 206                     ; 79 				mainFsm=RUN;
 208  008c 35020000      	mov	_mainFsm,#2
 209                     ; 80 				break;
 211  0090 2009          	jra	L54
 212  0092               L11:
 213                     ; 82 				case RUN:
 213                     ; 83 				if(timeout10ms)
 215  0092 ce0000        	ldw	x,_timeout10ms
 216  0095 2704          	jreq	L54
 217                     ; 85 					mainFsm=SELCFG;
 219  0097 35010000      	mov	_mainFsm,#1
 220  009b               L15:
 221  009b               L54:
 222                     ; 90 		UpdateTask();			
 224  009b cd0000        	call	_UpdateTask
 227  009e ac030003      	jpf	L13
 284                     	xdef	_main
 285                     	xdef	_debugCnt
 286                     	xref	_ADC_setup
 287                     	xref	_dipRead
 288                     	xref	_init_setup
 289                     	xref	_UpdateTask
 290                     	xref	_inputRead
 291                     	xref	_S2_IN
 292                     	xref	_S1_IN
 293                     	xref	_timeout500ms
 294                     	xref	_timeout50ms
 295                     	xref	_timeout10ms
 296                     	xdef	_SndDip
 297                     	xdef	_S2_enable
 298                     	xdef	_S1_enable
 299                     	xdef	_channel
 300                     	xdef	_mainFsm
 301                     	xref	_ADC1_StartConversion
 320                     	end

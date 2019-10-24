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
  76                     ; 28 void main(void)
  76                     ; 29 {
  78                     .text:	section	.text,new
  79  0000               _main:
  83                     ; 30 	init_setup();
  85  0000 cd0000        	call	_init_setup
  87  0003               L13:
  88                     ; 33 		if (timeout500ms)
  90  0003 ce0000        	ldw	x,_timeout500ms
  91  0006 271b          	jreq	L53
  92                     ; 35 			switch (channel)
  94  0008 c60001        	ld	a,_channel
  96                     ; 43 				break;			
  97  000b a003          	sub	a,#3
  98  000d 2705          	jreq	L3
  99  000f 4a            	dec	a
 100  0010 2709          	jreq	L5
 101  0012 200c          	jra	L14
 102  0014               L3:
 103                     ; 37 				case AIN3:
 103                     ; 38 				ADC_setup(ADC1_CHANNEL_3);
 105  0014 a603          	ld	a,#3
 106  0016 cd0000        	call	_ADC_setup
 108                     ; 39 				break;
 110  0019 2005          	jra	L14
 111  001b               L5:
 112                     ; 41 				case AIN4:
 112                     ; 42 				ADC_setup(ADC1_CHANNEL_4);
 114  001b a604          	ld	a,#4
 115  001d cd0000        	call	_ADC_setup
 117                     ; 43 				break;			
 119  0020               L14:
 120                     ; 45 			ADC1_StartConversion();		
 122  0020 cd0000        	call	_ADC1_StartConversion
 124  0023               L53:
 125                     ; 48 		if (timeout50ms)
 127  0023 ce0000        	ldw	x,_timeout50ms
 128  0026 2703          	jreq	L34
 129                     ; 50 			inputRead();
 131  0028 cd0000        	call	_inputRead
 133  002b               L34:
 134                     ; 53 		if (timeout10ms)
 136  002b ce0000        	ldw	x,_timeout10ms
 137  002e 2603cc00b3    	jreq	L54
 138                     ; 55 			switch (mainFsm)
 140  0033 c60000        	ld	a,_mainFsm
 142                     ; 95 				break;
 143  0036 4a            	dec	a
 144  0037 2705          	jreq	L7
 145  0039 4a            	dec	a
 146  003a 276e          	jreq	L11
 147  003c 2075          	jra	L54
 148  003e               L7:
 149                     ; 57 				case SELCFG:
 149                     ; 58 				if ((S1_IN==1) && (S2_IN==1))
 151  003e ce0000        	ldw	x,_S1_IN
 152  0041 a30001        	cpw	x,#1
 153  0044 261f          	jrne	L35
 155  0046 ce0000        	ldw	x,_S2_IN
 156  0049 a30001        	cpw	x,#1
 157  004c 2617          	jrne	L35
 158                     ; 60 					if (pressedHazzardFlag)
 160  004e ce0000        	ldw	x,_pressedHazzardFlag
 161  0051 270a          	jreq	L55
 162                     ; 62 						S1_enable 	= 1;
 164  0053 35010002      	mov	_S1_enable,#1
 165                     ; 63 						S2_enable 	= 0;
 167  0057 725f0003      	clr	_S2_enable
 169  005b 2008          	jra	L35
 170  005d               L55:
 171                     ; 67 						S1_enable 	= 0;
 173  005d 725f0002      	clr	_S1_enable
 174                     ; 68 						S2_enable 	= 0;					
 176  0061 725f0003      	clr	_S2_enable
 177  0065               L35:
 178                     ; 72 				if ((S1_IN==0) && (S2_IN==1))
 180  0065 ce0000        	ldw	x,_S1_IN
 181  0068 261d          	jrne	L16
 183  006a ce0000        	ldw	x,_S2_IN
 184  006d a30001        	cpw	x,#1
 185  0070 2615          	jrne	L16
 186                     ; 74 					S1_enable 	= 1;
 188  0072 35010002      	mov	_S1_enable,#1
 189                     ; 75 					S2_enable 	= 0;
 191  0076 725f0003      	clr	_S2_enable
 192                     ; 76 					pressedHazzardFlag = 1;
 194  007a ae0001        	ldw	x,#1
 195  007d cf0000        	ldw	_pressedHazzardFlag,x
 196                     ; 77 					SndDip = dipRead(0);
 198  0080 4f            	clr	a
 199  0081 cd0000        	call	_dipRead
 201  0084 c70004        	ld	_SndDip,a
 202  0087               L16:
 203                     ; 80 				if ((S1_IN==1) && (S2_IN==0))
 205  0087 ce0000        	ldw	x,_S1_IN
 206  008a a30001        	cpw	x,#1
 207  008d 2615          	jrne	L36
 209  008f ce0000        	ldw	x,_S2_IN
 210  0092 2610          	jrne	L36
 211                     ; 82 					S1_enable 	= 0;
 213  0094 725f0002      	clr	_S1_enable
 214                     ; 83 					S2_enable 	= 1;
 216  0098 35010003      	mov	_S2_enable,#1
 217                     ; 84 					SndDip = dipRead(1);
 219  009c a601          	ld	a,#1
 220  009e cd0000        	call	_dipRead
 222  00a1 c70004        	ld	_SndDip,a
 223  00a4               L36:
 224                     ; 87 				mainFsm=RUN;
 226  00a4 35020000      	mov	_mainFsm,#2
 227                     ; 88 				break;
 229  00a8 2009          	jra	L54
 230  00aa               L11:
 231                     ; 90 				case RUN:
 231                     ; 91 				if(timeout10ms)
 233  00aa ce0000        	ldw	x,_timeout10ms
 234  00ad 2704          	jreq	L54
 235                     ; 93 					mainFsm=SELCFG;
 237  00af 35010000      	mov	_mainFsm,#1
 238  00b3               L15:
 239  00b3               L54:
 240                     ; 98 		UpdateTask();			
 242  00b3 cd0000        	call	_UpdateTask
 245  00b6 ac030003      	jpf	L13
 302                     	xdef	_main
 303                     	xdef	_debugCnt
 304                     	xref	_pressedHazzardFlag
 305                     	xref	_ADC_setup
 306                     	xref	_dipRead
 307                     	xref	_init_setup
 308                     	xref	_UpdateTask
 309                     	xref	_inputRead
 310                     	xref	_S2_IN
 311                     	xref	_S1_IN
 312                     	xref	_timeout500ms
 313                     	xref	_timeout50ms
 314                     	xref	_timeout10ms
 315                     	xdef	_SndDip
 316                     	xdef	_S2_enable
 317                     	xdef	_S1_enable
 318                     	xdef	_channel
 319                     	xdef	_mainFsm
 320                     	xref	_ADC1_StartConversion
 339                     	end

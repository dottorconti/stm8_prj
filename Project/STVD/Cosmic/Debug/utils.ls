   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.10.2 - 02 Nov 2011
   3                     ; Generator (Limited) V4.3.7 - 29 Nov 2011
   4                     ; Optimizer V4.3.6 - 29 Nov 2011
  22                     	bsct
  23  0000               _timeout1ms:
  24  0000 0000          	dc.w	0
  25  0002               _timeout10ms:
  26  0002 0000          	dc.w	0
  27  0004               _timeout50ms:
  28  0004 0000          	dc.w	0
  29  0006               _timeout500ms:
  30  0006 0000          	dc.w	0
  31  0008               _timeout1msISR:
  32  0008 0000          	dc.w	0
  33  000a               _timeout10msISR:
  34  000a 0000          	dc.w	0
  35  000c               _timeout50msISR:
  36  000c 0000          	dc.w	0
  37  000e               _timeout500msISR:
  38  000e 0000          	dc.w	0
  39  0010               _VR:
  40  0010 0001          	dc.w	1
  41  0012               _VG:
  42  0012 0001          	dc.w	1
  43  0014               _counter10ms:
  44  0014 00            	dc.b	0
  45  0015               _blink:
  46  0015 00            	dc.b	0
  47  0016               _S1_IN:
  48  0016 00            	dc.b	0
  49  0017               _S2_IN:
  50  0017 00            	dc.b	0
  84                     ; 45 void inputRead(void)
  84                     ; 46 {
  86                     .text:	section	.text,new
  87  0000               _inputRead:
  91                     ; 47 	S1[4]=S1[3];
  93  0000 451213        	mov	_S1+4,_S1+3
  94                     ; 48 	S1[3]=S1[2];
  96  0003 451112        	mov	_S1+3,_S1+2
  97                     ; 49 	S1[2]=S1[1];
  99  0006 451011        	mov	_S1+2,_S1+1
 100                     ; 50 	S1[1]=S1[0];	
 102                     ; 51 	S1[0]=			((GPIO_ReadInputPin(GPIOD, GPIO_PIN_6))>>6)&0b00000001;
 104  0009 ae0040        	ldw	x,#64
 105  000c 450f10        	mov	_S1+1,_S1
 106  000f 89            	pushw	x
 107  0010 ae500f        	ldw	x,#20495
 108  0013 cd0000        	call	_GPIO_ReadInputPin
 110  0016 5b02          	addw	sp,#2
 111  0018 a606          	ld	a,#6
 112  001a               L01:
 113  001a 54            	srlw	x
 114  001b 4a            	dec	a
 115  001c 26fc          	jrne	L01
 116  001e 9f            	ld	a,xl
 117  001f a401          	and	a,#1
 118  0021 b70f          	ld	_S1,a
 119                     ; 52 	if ((S1[4]==S1[3])&&(S1[3]==S1[2])&&(S1[2]==S1[1])&&(S1[1]==S1[0]))
 121  0023 b613          	ld	a,_S1+4
 122  0025 b112          	cp	a,_S1+3
 123  0027 2615          	jrne	L12
 125  0029 b612          	ld	a,_S1+3
 126  002b b111          	cp	a,_S1+2
 127  002d 260f          	jrne	L12
 129  002f b611          	ld	a,_S1+2
 130  0031 b110          	cp	a,_S1+1
 131  0033 2609          	jrne	L12
 133  0035 b610          	ld	a,_S1+1
 134  0037 b10f          	cp	a,_S1
 135  0039 2603          	jrne	L12
 136                     ; 54 		S1_IN = S1[4];
 138  003b 451316        	mov	_S1_IN,_S1+4
 139  003e               L12:
 140                     ; 56 	S2[4]=S2[3];
 142  003e 450d0e        	mov	_S2+4,_S2+3
 143                     ; 57 	S2[3]=S2[2];
 145  0041 450c0d        	mov	_S2+3,_S2+2
 146                     ; 58 	S2[2]=S2[1];
 148  0044 450b0c        	mov	_S2+2,_S2+1
 149                     ; 59 	S2[1]=S2[0];	
 151                     ; 60 	S2[0]=			((GPIO_ReadInputPin(GPIOA, GPIO_PIN_2))>>2)&0b00000001;
 153  0047 ae0004        	ldw	x,#4
 154  004a 450a0b        	mov	_S2+1,_S2
 155  004d 89            	pushw	x
 156  004e ae5000        	ldw	x,#20480
 157  0051 cd0000        	call	_GPIO_ReadInputPin
 159  0054 5b02          	addw	sp,#2
 160  0056 54            	srlw	x
 161  0057 54            	srlw	x
 162  0058 9f            	ld	a,xl
 163  0059 a401          	and	a,#1
 164  005b b70a          	ld	_S2,a
 165                     ; 61 	if ((S2[4]==S2[3])&&(S2[3]==S2[2])&&(S2[2]==S2[1])&&(S2[1]==S2[0]))
 167  005d b60e          	ld	a,_S2+4
 168  005f b10d          	cp	a,_S2+3
 169  0061 2615          	jrne	L32
 171  0063 b60d          	ld	a,_S2+3
 172  0065 b10c          	cp	a,_S2+2
 173  0067 260f          	jrne	L32
 175  0069 b60c          	ld	a,_S2+2
 176  006b b10b          	cp	a,_S2+1
 177  006d 2609          	jrne	L32
 179  006f b60b          	ld	a,_S2+1
 180  0071 b10a          	cp	a,_S2
 181  0073 2603          	jrne	L32
 182                     ; 63 		S2_IN = S2[4];
 184  0075 450e17        	mov	_S2_IN,_S2+4
 185  0078               L32:
 186                     ; 65 }
 189  0078 81            	ret	
 227                     ; 67 uint8_t dipRead(uint8_t type)
 227                     ; 68 {
 228                     .text:	section	.text,new
 229  0000               _dipRead:
 231  0000 88            	push	a
 232       00000001      OFST:	set	1
 235                     ; 69 	switch (type)
 238                     ; 83 		break;		
 239  0001 4d            	tnz	a
 240  0002 2707          	jreq	L52
 241  0004 4a            	dec	a
 242  0005 2742          	jreq	L72
 243  0007 b602          	ld	a,_dip_IN
 244  0009 2068          	jra	L15
 245  000b               L52:
 246                     ; 71 		case 0:
 246                     ; 72 			dipA[0] = !(((GPIO_ReadInputPin(GPIOB, GPIO_PIN_5))>>5)&0b00000001);
 248  000b ae0020        	ldw	x,#32
 249  000e ad7a          	call	LC004
 250  0010 54            	srlw	x
 251  0011 ad63          	call	LC002
 252  0013 2604          	jrne	L61
 253  0015 a601          	ld	a,#1
 254  0017 2001          	jra	L22
 255  0019               L61:
 256  0019 4f            	clr	a
 257  001a               L22:
 258  001a b707          	ld	_dipA,a
 259                     ; 73 			dipA[1] = !(((GPIO_ReadInputPin(GPIOB, GPIO_PIN_4))>>4)&0b00000001);
 261  001c ae0010        	ldw	x,#16
 262  001f ad69          	call	LC004
 263  0021 ad53          	call	LC002
 264  0023 2604          	jrne	L42
 265  0025 a601          	ld	a,#1
 266  0027 2001          	jra	L03
 267  0029               L42:
 268  0029 4f            	clr	a
 269  002a               L03:
 270  002a b708          	ld	_dipA+1,a
 271                     ; 74 			dipA[2] = !(((GPIO_ReadInputPin(GPIOC, GPIO_PIN_3))>>3)&0b00000001);
 273  002c ae0008        	ldw	x,#8
 274  002f ad4e          	call	LC003
 275  0031 ad43          	call	LC002
 276  0033 2604          	jrne	L23
 277  0035 a601          	ld	a,#1
 278  0037 2001          	jra	L63
 279  0039               L23:
 280  0039 4f            	clr	a
 281  003a               L63:
 282  003a b709          	ld	_dipA+2,a
 283                     ; 75 			dip_IN = (dipA[0]+(dipA[1]<<1)+(dipA[2]<<2));
 285  003c 48            	sll	a
 286  003d 48            	sll	a
 287  003e 6b01          	ld	(OFST+0,sp),a
 288  0040 b608          	ld	a,_dipA+1
 289  0042 48            	sll	a
 290  0043 bb07          	add	a,_dipA
 291  0045 1b01          	add	a,(OFST+0,sp)
 292                     ; 76 		break;
 294  0047 2028          	jp	LC001
 295  0049               L72:
 296                     ; 78 		case 1:
 296                     ; 79 			dipB[0] = !(((GPIO_ReadInputPin(GPIOC, GPIO_PIN_4))>>4)&0b00000001);
 298  0049 ae0010        	ldw	x,#16
 299  004c ad31          	call	LC003
 300  004e 54            	srlw	x
 301  004f ad25          	call	LC002
 302  0051 2604          	jrne	L04
 303  0053 a601          	ld	a,#1
 304  0055 2001          	jra	L44
 305  0057               L04:
 306  0057 4f            	clr	a
 307  0058               L44:
 308  0058 b705          	ld	_dipB,a
 309                     ; 80 			dipB[1] = !(((GPIO_ReadInputPin(GPIOC, GPIO_PIN_5))>>5)&0b00000001);
 311  005a ae0020        	ldw	x,#32
 312  005d ad20          	call	LC003
 313  005f 54            	srlw	x
 314  0060 54            	srlw	x
 315  0061 ad13          	call	LC002
 316  0063 2604          	jrne	L64
 317  0065 a601          	ld	a,#1
 318  0067 2001          	jra	L25
 319  0069               L64:
 320  0069 4f            	clr	a
 321  006a               L25:
 322  006a b706          	ld	_dipB+1,a
 323                     ; 81 			dip_IN = (dipB[0]+(dipB[1]<<1));
 325  006c 48            	sll	a
 326  006d bb05          	add	a,_dipB
 327                     ; 82 			dip_IN = dip_IN + 8;
 329  006f ab08          	add	a,#8
 330  0071               LC001:
 331  0071 b702          	ld	_dip_IN,a
 332                     ; 83 		break;		
 334  0073               L15:
 335                     ; 85 	return dip_IN;
 339  0073 5b01          	addw	sp,#1
 340  0075 81            	ret	
 341  0076               LC002:
 342  0076 54            	srlw	x
 343  0077 54            	srlw	x
 344  0078 9f            	ld	a,xl
 345  0079 a401          	and	a,#1
 346  007b 5f            	clrw	x
 347  007c 97            	ld	xl,a
 348  007d 5d            	tnzw	x
 349  007e 81            	ret	
 350  007f               LC003:
 351  007f 89            	pushw	x
 352  0080 ae500a        	ldw	x,#20490
 353  0083 cd0000        	call	_GPIO_ReadInputPin
 355  0086 5b02          	addw	sp,#2
 356  0088 54            	srlw	x
 357  0089 81            	ret	
 358  008a               LC004:
 359  008a 89            	pushw	x
 360  008b ae5005        	ldw	x,#20485
 361  008e cd0000        	call	_GPIO_ReadInputPin
 363  0091 5b02          	addw	sp,#2
 364  0093 54            	srlw	x
 365  0094 54            	srlw	x
 366  0095 81            	ret	
 397                     ; 88 void UpdateTask(void)
 397                     ; 89 {
 398                     .text:	section	.text,new
 399  0000               _UpdateTask:
 403                     ; 90   if (timeout500msISR)
 405  0000 be0e          	ldw	x,_timeout500msISR
 406  0002 270a          	jreq	L36
 407                     ; 92 		timeout500ms = 1;
 409  0004 ae0001        	ldw	x,#1
 410  0007 bf06          	ldw	_timeout500ms,x
 411                     ; 93 		timeout500msISR = 0;
 413  0009 5f            	clrw	x
 414  000a bf0e          	ldw	_timeout500msISR,x
 416  000c 2003          	jra	L56
 417  000e               L36:
 418                     ; 95 	else timeout500ms = 0;
 420  000e 5f            	clrw	x
 421  000f bf06          	ldw	_timeout500ms,x
 422  0011               L56:
 423                     ; 97   if (timeout50msISR)
 425  0011 be0c          	ldw	x,_timeout50msISR
 426  0013 270a          	jreq	L76
 427                     ; 99 		timeout50ms = 1;
 429  0015 ae0001        	ldw	x,#1
 430  0018 bf04          	ldw	_timeout50ms,x
 431                     ; 100 		timeout50msISR = 0;
 433  001a 5f            	clrw	x
 434  001b bf0c          	ldw	_timeout50msISR,x
 436  001d 2003          	jra	L17
 437  001f               L76:
 438                     ; 102 	else timeout50ms = 0;
 440  001f 5f            	clrw	x
 441  0020 bf04          	ldw	_timeout50ms,x
 442  0022               L17:
 443                     ; 104   if (timeout10msISR)
 445  0022 be0a          	ldw	x,_timeout10msISR
 446  0024 270a          	jreq	L37
 447                     ; 106 		timeout10ms = 1;
 449  0026 ae0001        	ldw	x,#1
 450  0029 bf02          	ldw	_timeout10ms,x
 451                     ; 107 		timeout10msISR = 0;
 453  002b 5f            	clrw	x
 454  002c bf0a          	ldw	_timeout10msISR,x
 456  002e 2003          	jra	L57
 457  0030               L37:
 458                     ; 109 	else timeout10ms = 0;
 460  0030 5f            	clrw	x
 461  0031 bf02          	ldw	_timeout10ms,x
 462  0033               L57:
 463                     ; 111 	if (timeout1msISR)
 465  0033 be08          	ldw	x,_timeout1msISR
 466  0035 2709          	jreq	L77
 467                     ; 113 		timeout1ms = 1;
 469  0037 ae0001        	ldw	x,#1
 470  003a bf00          	ldw	_timeout1ms,x
 471                     ; 114 		timeout1msISR = 0;
 473  003c 5f            	clrw	x
 474  003d bf08          	ldw	_timeout1msISR,x
 477  003f 81            	ret	
 478  0040               L77:
 479                     ; 116 	else timeout1ms = 0;
 481  0040 5f            	clrw	x
 482  0041 bf00          	ldw	_timeout1ms,x
 483                     ; 117 }
 486  0043 81            	ret	
 517                     .const:	section	.text
 518  0000               L27:
 519  0000 0000c350      	dc.l	50000
 520                     ; 119 void init_setup(void)
 520                     ; 120 {
 521                     .text:	section	.text,new
 522  0000               _init_setup:
 526                     ; 121 	clock_setup();
 528  0000 cd0000        	call	_clock_setup
 530                     ; 122 	GPIO_setup();
 532  0003 cd0000        	call	_GPIO_setup
 534                     ; 125 	TIM1_setup();
 536  0006 cd0000        	call	_TIM1_setup
 538                     ; 126 	TIM2_setup();
 540  0009 cd0000        	call	_TIM2_setup
 542                     ; 127 	TIM4_setup();
 544  000c cd0000        	call	_TIM4_setup
 546                     ; 128 	enableInterrupts();
 549  000f 9a            	rim	
 551                     ; 133 	for(j=0;j<50000;j++)// serve per stabilizzare la lettura dei pin all'acccensione
 554  0010 5f            	clrw	x
 555  0011 bf00          	ldw	_j,x
 556  0013               L311:
 557                     ; 134 	{nop();}
 560  0013 9d            	nop	
 562                     ; 133 	for(j=0;j<50000;j++)// serve per stabilizzare la lettura dei pin all'acccensione
 565  0014 be00          	ldw	x,_j
 566  0016 5c            	incw	x
 567  0017 bf00          	ldw	_j,x
 570  0019 cd0000        	call	c_uitolx
 572  001c ae0000        	ldw	x,#L27
 573  001f cd0000        	call	c_lcmp
 575  0022 2fef          	jrslt	L311
 576                     ; 135 }
 579  0024 81            	ret	
 826                     	switch	.ubsct
 827  0000               _j:
 828  0000 0000          	ds.b	2
 829                     	xdef	_j
 830  0002               _dip_IN:
 831  0002 00            	ds.b	1
 832                     	xdef	_dip_IN
 833  0003               _dipB_IN:
 834  0003 00            	ds.b	1
 835                     	xdef	_dipB_IN
 836  0004               _dipA_IN:
 837  0004 00            	ds.b	1
 838                     	xdef	_dipA_IN
 839  0005               _dipB:
 840  0005 0000          	ds.b	2
 841                     	xdef	_dipB
 842  0007               _dipA:
 843  0007 000000        	ds.b	3
 844                     	xdef	_dipA
 845  000a               _S2:
 846  000a 0000000000    	ds.b	5
 847                     	xdef	_S2
 848  000f               _S1:
 849  000f 0000000000    	ds.b	5
 850                     	xdef	_S1
 851                     	xdef	_blink
 852                     	xdef	_VG
 853                     	xdef	_VR
 854                     	xref	_GPIO_setup
 855                     	xref	_clock_setup
 856                     	xref	_TIM4_setup
 857                     	xref	_TIM2_setup
 858                     	xref	_TIM1_setup
 859                     	xdef	_dipRead
 860                     	xdef	_init_setup
 861                     	xdef	_UpdateTask
 862                     	xdef	_inputRead
 863                     	xdef	_S2_IN
 864                     	xdef	_S1_IN
 865                     	xdef	_counter10ms
 866                     	xdef	_timeout500msISR
 867                     	xdef	_timeout50msISR
 868                     	xdef	_timeout10msISR
 869                     	xdef	_timeout1msISR
 870                     	xdef	_timeout500ms
 871                     	xdef	_timeout50ms
 872                     	xdef	_timeout10ms
 873                     	xdef	_timeout1ms
 874                     	xref	_GPIO_ReadInputPin
 894                     	xref	c_lcmp
 895                     	xref	c_uitolx
 896                     	end

   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.10.2 - 02 Nov 2011
   3                     ; Generator (Limited) V4.3.7 - 29 Nov 2011
  17                     	switch	.data
  18  0000               _timeout1ms:
  19  0000 0000          	dc.w	0
  20  0002               _timeout10ms:
  21  0002 0000          	dc.w	0
  22  0004               _timeout50ms:
  23  0004 0000          	dc.w	0
  24  0006               _timeout500ms:
  25  0006 0000          	dc.w	0
  26  0008               _timeout1msISR:
  27  0008 0000          	dc.w	0
  28  000a               _timeout10msISR:
  29  000a 0000          	dc.w	0
  30  000c               _timeout50msISR:
  31  000c 0000          	dc.w	0
  32  000e               _timeout500msISR:
  33  000e 0000          	dc.w	0
  34  0010               _VR:
  35  0010 0001          	dc.w	1
  36  0012               _VG:
  37  0012 0001          	dc.w	1
  38  0014               _counter10ms:
  39  0014 00            	dc.b	0
  40  0015               _blink:
  41  0015 00            	dc.b	0
  42  0016               _S1_IN:
  43  0016 0000          	dc.w	0
  44  0018               _S2_IN:
  45  0018 0000          	dc.w	0
  46  001a               _S3_IN:
  47  001a 0000          	dc.w	0
  48                     ; 47 void inputRead(void)
  48                     ; 48 {
  49                     	scross	off
  50                     .text:	section	.text,new
  51  0000               _inputRead:
  53                     ; 49 	for (i=0;i>=1;i++)
  54  0000 725f0000      	clr	_i
  55                     ; 55 	S1[2]=			((GPIO_ReadInputPin(GPIOC, GPIO_PIN_3))>>3)&0b00000001;
  56  0004 ae0008        	ldw	x,#8
  57  0007 89            	pushw	x
  58  0008 ae500a        	ldw	x,#20490
  59  000b cd0000        	call	_GPIO_ReadInputPin
  61  000e 5b02          	addw	sp,#2
  62  0010 54            	srlw	x
  63  0011 54            	srlw	x
  64  0012 54            	srlw	x
  65  0013 9f            	ld	a,xl
  66  0014 a401          	and	a,#1
  67  0016 5f            	clrw	x
  68  0017 97            	ld	xl,a
  69  0018 cf001c        	ldw	_S1+4,x
  70                     ; 56 	S2[2]=			((GPIO_ReadInputPin(GPIOB, GPIO_PIN_4))>>4)&0b00000001;	
  71  001b ae0010        	ldw	x,#16
  72  001e 89            	pushw	x
  73  001f ae5005        	ldw	x,#20485
  74  0022 cd0000        	call	_GPIO_ReadInputPin
  76  0025 5b02          	addw	sp,#2
  77  0027 54            	srlw	x
  78  0028 54            	srlw	x
  79  0029 54            	srlw	x
  80  002a 54            	srlw	x
  81  002b 9f            	ld	a,xl
  82  002c a401          	and	a,#1
  83  002e 5f            	clrw	x
  84  002f 97            	ld	xl,a
  85  0030 cf0016        	ldw	_S2+4,x
  86                     ; 57 	S3[2]=			((GPIO_ReadInputPin(GPIOB, GPIO_PIN_5))>>5)&0b00000001;	
  87  0033 ae0020        	ldw	x,#32
  88  0036 89            	pushw	x
  89  0037 ae5005        	ldw	x,#20485
  90  003a cd0000        	call	_GPIO_ReadInputPin
  92  003d 5b02          	addw	sp,#2
  93  003f 54            	srlw	x
  94  0040 54            	srlw	x
  95  0041 54            	srlw	x
  96  0042 54            	srlw	x
  97  0043 54            	srlw	x
  98  0044 9f            	ld	a,xl
  99  0045 a401          	and	a,#1
 100  0047 5f            	clrw	x
 101  0048 97            	ld	xl,a
 102  0049 cf0010        	ldw	_S3+4,x
 103                     ; 58 	if ((S1[2]==S1[1])&&(S1[1]==S1[0]))
 104  004c ce001c        	ldw	x,_S1+4
 105  004f c3001a        	cpw	x,_S1+2
 106  0052 260e          	jrne	L3
 108  0054 ce001a        	ldw	x,_S1+2
 109  0057 c30018        	cpw	x,_S1
 110  005a 2606          	jrne	L3
 111                     ; 60 		S1_IN = S1[2];
 112  005c ce001c        	ldw	x,_S1+4
 113  005f cf0016        	ldw	_S1_IN,x
 114  0062               L3:
 115                     ; 62 	if ((S2[2]==S2[1])&&(S2[1]==S2[0]))
 116  0062 ce0016        	ldw	x,_S2+4
 117  0065 c30014        	cpw	x,_S2+2
 118  0068 260e          	jrne	L5
 120  006a ce0014        	ldw	x,_S2+2
 121  006d c30012        	cpw	x,_S2
 122  0070 2606          	jrne	L5
 123                     ; 64 		S2_IN = S2[2];
 124  0072 ce0016        	ldw	x,_S2+4
 125  0075 cf0018        	ldw	_S2_IN,x
 126  0078               L5:
 127                     ; 66 	if ((S3[2]==S3[1])&&(S3[1]==S3[0]))
 128  0078 ce0010        	ldw	x,_S3+4
 129  007b c3000e        	cpw	x,_S3+2
 130  007e 260e          	jrne	L7
 132  0080 ce000e        	ldw	x,_S3+2
 133  0083 c3000c        	cpw	x,_S3
 134  0086 2606          	jrne	L7
 135                     ; 68 		S3_IN = S2[2];
 136  0088 ce0016        	ldw	x,_S2+4
 137  008b cf001a        	ldw	_S3_IN,x
 138  008e               L7:
 139                     ; 70 }
 140  008e 81            	ret
 142                     ; 72 uint8_t dipRead(uint8_t type)
 142                     ; 73 {
 143                     .text:	section	.text,new
 144  0000               _dipRead:
 145  0000 88            	push	a
 146       00000001      OFST:	set	1
 148                     ; 74 	switch (type)
 150                     ; 89 		break;		
 151  0001 4d            	tnz	a
 152  0002 270a          	jreq	L11
 153  0004 4a            	dec	a
 154  0005 2603cc008d    	jreq	L31
 155  000a ac110111      	jpf	L71
 156  000e               L11:
 157                     ; 76 		case 0:
 157                     ; 77 			dipA[0] = !(((GPIO_ReadInputPin(GPIOD, GPIO_PIN_6))>>6)&0b00000001);
 158  000e ae0040        	ldw	x,#64
 159  0011 89            	pushw	x
 160  0012 ae500f        	ldw	x,#20495
 161  0015 cd0000        	call	_GPIO_ReadInputPin
 163  0018 5b02          	addw	sp,#2
 164  001a a606          	ld	a,#6
 165  001c               L01:
 166  001c 54            	srlw	x
 167  001d 4a            	dec	a
 168  001e 26fc          	jrne	L01
 169  0020 9f            	ld	a,xl
 170  0021 a401          	and	a,#1
 171  0023 5f            	clrw	x
 172  0024 97            	ld	xl,a
 173  0025 a30000        	cpw	x,#0
 174  0028 2604          	jrne	L6
 175  002a a601          	ld	a,#1
 176  002c 2001          	jra	L21
 177  002e               L6:
 178  002e 4f            	clr	a
 179  002f               L21:
 180  002f c70009        	ld	_dipA,a
 181                     ; 78 			dipA[1] = !(((GPIO_ReadInputPin(GPIOD, GPIO_PIN_5))>>5)&0b00000001);
 182  0032 ae0020        	ldw	x,#32
 183  0035 89            	pushw	x
 184  0036 ae500f        	ldw	x,#20495
 185  0039 cd0000        	call	_GPIO_ReadInputPin
 187  003c 5b02          	addw	sp,#2
 188  003e 54            	srlw	x
 189  003f 54            	srlw	x
 190  0040 54            	srlw	x
 191  0041 54            	srlw	x
 192  0042 54            	srlw	x
 193  0043 9f            	ld	a,xl
 194  0044 a401          	and	a,#1
 195  0046 5f            	clrw	x
 196  0047 97            	ld	xl,a
 197  0048 a30000        	cpw	x,#0
 198  004b 2604          	jrne	L41
 199  004d a601          	ld	a,#1
 200  004f 2001          	jra	L61
 201  0051               L41:
 202  0051 4f            	clr	a
 203  0052               L61:
 204  0052 c7000a        	ld	_dipA+1,a
 205                     ; 79 			dipA[2] = !(((GPIO_ReadInputPin(GPIOD, GPIO_PIN_4))>>4)&0b00000001);
 206  0055 ae0010        	ldw	x,#16
 207  0058 89            	pushw	x
 208  0059 ae500f        	ldw	x,#20495
 209  005c cd0000        	call	_GPIO_ReadInputPin
 211  005f 5b02          	addw	sp,#2
 212  0061 54            	srlw	x
 213  0062 54            	srlw	x
 214  0063 54            	srlw	x
 215  0064 54            	srlw	x
 216  0065 9f            	ld	a,xl
 217  0066 a401          	and	a,#1
 218  0068 5f            	clrw	x
 219  0069 97            	ld	xl,a
 220  006a a30000        	cpw	x,#0
 221  006d 2604          	jrne	L02
 222  006f a601          	ld	a,#1
 223  0071 2001          	jra	L22
 224  0073               L02:
 225  0073 4f            	clr	a
 226  0074               L22:
 227  0074 c7000b        	ld	_dipA+2,a
 228                     ; 80 			dip_IN = (dipA[0]+(dipA[1]<<1)+(dipA[2]<<2));
 229  0077 c6000b        	ld	a,_dipA+2
 230  007a 48            	sll	a
 231  007b 48            	sll	a
 232  007c 6b01          	ld	(OFST+0,sp),a
 233  007e c6000a        	ld	a,_dipA+1
 234  0081 48            	sll	a
 235  0082 cb0009        	add	a,_dipA
 236  0085 1b01          	add	a,(OFST+0,sp)
 237  0087 c70003        	ld	_dip_IN,a
 238                     ; 81 		break;
 239  008a cc0111        	jra	L71
 240  008d               L31:
 241                     ; 83 		case 1:
 241                     ; 84 			dipB[0] = !(((GPIO_ReadInputPin(GPIOC, GPIO_PIN_7))>>7)&0b00000001);
 242  008d ae0080        	ldw	x,#128
 243  0090 89            	pushw	x
 244  0091 ae500a        	ldw	x,#20490
 245  0094 cd0000        	call	_GPIO_ReadInputPin
 247  0097 5b02          	addw	sp,#2
 248  0099 4f            	clr	a
 249  009a 01            	rrwa	x,a
 250  009b 48            	sll	a
 251  009c 59            	rlcw	x
 252  009d 9f            	ld	a,xl
 253  009e a401          	and	a,#1
 254  00a0 5f            	clrw	x
 255  00a1 97            	ld	xl,a
 256  00a2 a30000        	cpw	x,#0
 257  00a5 2604          	jrne	L42
 258  00a7 a601          	ld	a,#1
 259  00a9 2001          	jra	L62
 260  00ab               L42:
 261  00ab 4f            	clr	a
 262  00ac               L62:
 263  00ac c70006        	ld	_dipB,a
 264                     ; 85 			dipB[1] = !(((GPIO_ReadInputPin(GPIOC, GPIO_PIN_6))>>6)&0b00000001);
 265  00af ae0040        	ldw	x,#64
 266  00b2 89            	pushw	x
 267  00b3 ae500a        	ldw	x,#20490
 268  00b6 cd0000        	call	_GPIO_ReadInputPin
 270  00b9 5b02          	addw	sp,#2
 271  00bb a606          	ld	a,#6
 272  00bd               L23:
 273  00bd 54            	srlw	x
 274  00be 4a            	dec	a
 275  00bf 26fc          	jrne	L23
 276  00c1 9f            	ld	a,xl
 277  00c2 a401          	and	a,#1
 278  00c4 5f            	clrw	x
 279  00c5 97            	ld	xl,a
 280  00c6 a30000        	cpw	x,#0
 281  00c9 2604          	jrne	L03
 282  00cb a601          	ld	a,#1
 283  00cd 2001          	jra	L43
 284  00cf               L03:
 285  00cf 4f            	clr	a
 286  00d0               L43:
 287  00d0 c70007        	ld	_dipB+1,a
 288                     ; 86 			dipB[2] = !(((GPIO_ReadInputPin(GPIOC, GPIO_PIN_5))>>5)&0b00000001);			
 289  00d3 ae0020        	ldw	x,#32
 290  00d6 89            	pushw	x
 291  00d7 ae500a        	ldw	x,#20490
 292  00da cd0000        	call	_GPIO_ReadInputPin
 294  00dd 5b02          	addw	sp,#2
 295  00df 54            	srlw	x
 296  00e0 54            	srlw	x
 297  00e1 54            	srlw	x
 298  00e2 54            	srlw	x
 299  00e3 54            	srlw	x
 300  00e4 9f            	ld	a,xl
 301  00e5 a401          	and	a,#1
 302  00e7 5f            	clrw	x
 303  00e8 97            	ld	xl,a
 304  00e9 a30000        	cpw	x,#0
 305  00ec 2604          	jrne	L63
 306  00ee a601          	ld	a,#1
 307  00f0 2001          	jra	L04
 308  00f2               L63:
 309  00f2 4f            	clr	a
 310  00f3               L04:
 311  00f3 c70008        	ld	_dipB+2,a
 312                     ; 87 			dip_IN = (dipB[0]+(dipB[1]<<1)+(dipB[2]<<2));
 313  00f6 c60008        	ld	a,_dipB+2
 314  00f9 48            	sll	a
 315  00fa 48            	sll	a
 316  00fb 6b01          	ld	(OFST+0,sp),a
 317  00fd c60007        	ld	a,_dipB+1
 318  0100 48            	sll	a
 319  0101 cb0006        	add	a,_dipB
 320  0104 1b01          	add	a,(OFST+0,sp)
 321  0106 c70003        	ld	_dip_IN,a
 322                     ; 88 			dip_IN = dip_IN + 8;
 323  0109 c60003        	ld	a,_dip_IN
 324  010c ab08          	add	a,#8
 325  010e c70003        	ld	_dip_IN,a
 326                     ; 89 		break;		
 327  0111               L71:
 328                     ; 91 	return dip_IN;
 329  0111 c60003        	ld	a,_dip_IN
 331  0114 5b01          	addw	sp,#1
 332  0116 81            	ret
 334                     ; 94 void UpdateTask(void)
 334                     ; 95 {
 335                     .text:	section	.text,new
 336  0000               _UpdateTask:
 338                     ; 96   if (timeout500msISR)
 339  0000 ce000e        	ldw	x,_timeout500msISR
 340  0003 270c          	jreq	L12
 341                     ; 98 		timeout500ms = 1;
 342  0005 ae0001        	ldw	x,#1
 343  0008 cf0006        	ldw	_timeout500ms,x
 344                     ; 99 		timeout500msISR = 0;
 345  000b 5f            	clrw	x
 346  000c cf000e        	ldw	_timeout500msISR,x
 348  000f 2004          	jra	L32
 349  0011               L12:
 350                     ; 101 	else timeout500ms = 0;
 351  0011 5f            	clrw	x
 352  0012 cf0006        	ldw	_timeout500ms,x
 353  0015               L32:
 354                     ; 103   if (timeout50msISR)
 355  0015 ce000c        	ldw	x,_timeout50msISR
 356  0018 270c          	jreq	L52
 357                     ; 105 		timeout50ms = 1;
 358  001a ae0001        	ldw	x,#1
 359  001d cf0004        	ldw	_timeout50ms,x
 360                     ; 106 		timeout50msISR = 0;
 361  0020 5f            	clrw	x
 362  0021 cf000c        	ldw	_timeout50msISR,x
 364  0024 2004          	jra	L72
 365  0026               L52:
 366                     ; 108 	else timeout50ms = 0;
 367  0026 5f            	clrw	x
 368  0027 cf0004        	ldw	_timeout50ms,x
 369  002a               L72:
 370                     ; 110   if (timeout10msISR)
 371  002a ce000a        	ldw	x,_timeout10msISR
 372  002d 270c          	jreq	L13
 373                     ; 112 		timeout10ms = 1;
 374  002f ae0001        	ldw	x,#1
 375  0032 cf0002        	ldw	_timeout10ms,x
 376                     ; 113 		timeout10msISR = 0;
 377  0035 5f            	clrw	x
 378  0036 cf000a        	ldw	_timeout10msISR,x
 380  0039 2004          	jra	L33
 381  003b               L13:
 382                     ; 115 	else timeout10ms = 0;
 383  003b 5f            	clrw	x
 384  003c cf0002        	ldw	_timeout10ms,x
 385  003f               L33:
 386                     ; 117 	if (timeout1msISR)
 387  003f ce0008        	ldw	x,_timeout1msISR
 388  0042 270c          	jreq	L53
 389                     ; 119 		timeout1ms = 1;
 390  0044 ae0001        	ldw	x,#1
 391  0047 cf0000        	ldw	_timeout1ms,x
 392                     ; 120 		timeout1msISR = 0;
 393  004a 5f            	clrw	x
 394  004b cf0008        	ldw	_timeout1msISR,x
 396  004e 2004          	jra	L73
 397  0050               L53:
 398                     ; 122 	else timeout1ms = 0;
 399  0050 5f            	clrw	x
 400  0051 cf0000        	ldw	_timeout1ms,x
 401  0054               L73:
 402                     ; 123 }
 403  0054 81            	ret
 405                     .const:	section	.text
 406  0000               L64:
 407  0000 0000c350      	dc.l	50000
 408                     ; 125 void init_setup(void)
 408                     ; 126 {
 409                     .text:	section	.text,new
 410  0000               _init_setup:
 412                     ; 127 	clock_setup();
 413  0000 cd0000        	call	_clock_setup
 415                     ; 128 	GPIO_setup();
 416  0003 cd0000        	call	_GPIO_setup
 418                     ; 131 	TIM1_setup();
 419  0006 cd0000        	call	_TIM1_setup
 421                     ; 132 	TIM2_setup();
 422  0009 cd0000        	call	_TIM2_setup
 424                     ; 133 	TIM4_setup();
 425  000c cd0000        	call	_TIM4_setup
 427                     ; 134 	enableInterrupts();
 429  000f 9a            rim
 431                     ; 135 	init_u_Port();
 432  0010 cd0000        	call	_init_u_Port
 434                     ; 136 	for(j=0;j<50000;j++)	//circuits power up
 435  0013 5f            	clrw	x
 436  0014 cf0001        	ldw	_j,x
 437  0017               L14:
 438                     ; 137 	{nop();}
 440  0017 9d            nop
 442                     ; 136 	for(j=0;j<50000;j++)	//circuits power up
 443  0018 ce0001        	ldw	x,_j
 444  001b 1c0001        	addw	x,#1
 445  001e cf0001        	ldw	_j,x
 447  0021 9c            	rvf
 448  0022 ce0001        	ldw	x,_j
 449  0025 cd0000        	call	c_uitolx
 451  0028 ae0000        	ldw	x,#L64
 452  002b cd0000        	call	c_lcmp
 454  002e 2fe7          	jrslt	L14
 455                     ; 138 }
 456  0030 81            	ret
 458                     	switch	.bss
 459  0000               _i:
 460  0000 00            	ds.b	1
 461                     	xdef	_i
 462  0001               _j:
 463  0001 0000          	ds.b	2
 464                     	xdef	_j
 465  0003               _dip_IN:
 466  0003 00            	ds.b	1
 467                     	xdef	_dip_IN
 468  0004               _dipB_IN:
 469  0004 00            	ds.b	1
 470                     	xdef	_dipB_IN
 471  0005               _dipA_IN:
 472  0005 00            	ds.b	1
 473                     	xdef	_dipA_IN
 474  0006               _dipB:
 475  0006 000000        	ds.b	3
 476                     	xdef	_dipB
 477  0009               _dipA:
 478  0009 000000        	ds.b	3
 479                     	xdef	_dipA
 480                     	xdef	_S3_IN
 481  000c               _S3:
 482  000c 000000000000  	ds.b	6
 483                     	xdef	_S3
 484  0012               _S2:
 485  0012 000000000000  	ds.b	6
 486                     	xdef	_S2
 487  0018               _S1:
 488  0018 000000000000  	ds.b	6
 489                     	xdef	_S1
 490                     	xdef	_blink
 491                     	xdef	_VG
 492                     	xdef	_VR
 493                     	xref	_init_u_Port
 494                     	xref	_GPIO_setup
 495                     	xref	_clock_setup
 496                     	xref	_TIM4_setup
 497                     	xref	_TIM2_setup
 498                     	xref	_TIM1_setup
 499                     	xdef	_dipRead
 500                     	xdef	_init_setup
 501                     	xdef	_UpdateTask
 502                     	xdef	_inputRead
 503                     	xdef	_S2_IN
 504                     	xdef	_S1_IN
 505                     	xdef	_counter10ms
 506                     	xdef	_timeout500msISR
 507                     	xdef	_timeout50msISR
 508                     	xdef	_timeout10msISR
 509                     	xdef	_timeout1msISR
 510                     	xdef	_timeout500ms
 511                     	xdef	_timeout50ms
 512                     	xdef	_timeout10ms
 513                     	xdef	_timeout1ms
 514                     	xref	_GPIO_ReadInputPin
 515                     	xref	c_lcmp
 516                     	xref	c_uitolx
 517                     	end

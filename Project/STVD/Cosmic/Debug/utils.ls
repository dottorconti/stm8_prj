   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.10.2 - 02 Nov 2011
   3                     ; Generator (Limited) V4.3.7 - 29 Nov 2011
  18                     	switch	.data
  19  0000               _timeout1ms:
  20  0000 0000          	dc.w	0
  21  0002               _timeout10ms:
  22  0002 0000          	dc.w	0
  23  0004               _timeout50ms:
  24  0004 0000          	dc.w	0
  25  0006               _timeout500ms:
  26  0006 0000          	dc.w	0
  27  0008               _timeout1msISR:
  28  0008 0000          	dc.w	0
  29  000a               _timeout10msISR:
  30  000a 0000          	dc.w	0
  31  000c               _timeout50msISR:
  32  000c 0000          	dc.w	0
  33  000e               _timeout500msISR:
  34  000e 0000          	dc.w	0
  35  0010               _VR:
  36  0010 0001          	dc.w	1
  37  0012               _VG:
  38  0012 0001          	dc.w	1
  39  0014               _counter10ms:
  40  0014 00            	dc.b	0
  41  0015               _blink:
  42  0015 00            	dc.b	0
  43  0016               _S1_IN:
  44  0016 0000          	dc.w	0
  45  0018               _S2_IN:
  46  0018 0000          	dc.w	0
  47  001a               _S3_IN:
  48  001a 0000          	dc.w	0
  85                     ; 47 void inputRead(void)
  85                     ; 48 {
  87                     .text:	section	.text,new
  88  0000               _inputRead:
  92                     ; 49 	for (i=0;i<=1;i++)
  94  0000 725f0000      	clr	_i
  95  0004               L12:
  96                     ; 51 		S1[i] = S1[i+1];
  98  0004 c60000        	ld	a,_i
  99  0007 5f            	clrw	x
 100  0008 97            	ld	xl,a
 101  0009 58            	sllw	x
 102  000a 9093          	ldw	y,x
 103  000c 90de001a      	ldw	y,(_S1+2,y)
 104  0010 df0018        	ldw	(_S1,x),y
 105                     ; 52 		S2[i] = S2[i+1];
 107  0013 c60000        	ld	a,_i
 108  0016 5f            	clrw	x
 109  0017 97            	ld	xl,a
 110  0018 58            	sllw	x
 111  0019 9093          	ldw	y,x
 112  001b 90de0014      	ldw	y,(_S2+2,y)
 113  001f df0012        	ldw	(_S2,x),y
 114                     ; 53 		S3[i] = S3[i+1];
 116  0022 c60000        	ld	a,_i
 117  0025 5f            	clrw	x
 118  0026 97            	ld	xl,a
 119  0027 58            	sllw	x
 120  0028 9093          	ldw	y,x
 121  002a 90de000e      	ldw	y,(_S3+2,y)
 122  002e df000c        	ldw	(_S3,x),y
 123                     ; 49 	for (i=0;i<=1;i++)
 125  0031 725c0000      	inc	_i
 128  0035 c60000        	ld	a,_i
 129  0038 a102          	cp	a,#2
 130  003a 25c8          	jrult	L12
 131                     ; 55 	S1[2]=			((GPIO_ReadInputPin(GPIOC, GPIO_PIN_3))>>3)&0b00000001;
 133  003c ae0008        	ldw	x,#8
 134  003f 89            	pushw	x
 135  0040 ae500a        	ldw	x,#20490
 136  0043 cd0000        	call	_GPIO_ReadInputPin
 138  0046 5b02          	addw	sp,#2
 139  0048 54            	srlw	x
 140  0049 54            	srlw	x
 141  004a 54            	srlw	x
 142  004b 9f            	ld	a,xl
 143  004c a401          	and	a,#1
 144  004e 5f            	clrw	x
 145  004f 97            	ld	xl,a
 146  0050 cf001c        	ldw	_S1+4,x
 147                     ; 56 	S2[2]=			((GPIO_ReadInputPin(GPIOB, GPIO_PIN_4))>>4)&0b00000001;	
 149  0053 ae0010        	ldw	x,#16
 150  0056 89            	pushw	x
 151  0057 ae5005        	ldw	x,#20485
 152  005a cd0000        	call	_GPIO_ReadInputPin
 154  005d 5b02          	addw	sp,#2
 155  005f 54            	srlw	x
 156  0060 54            	srlw	x
 157  0061 54            	srlw	x
 158  0062 54            	srlw	x
 159  0063 9f            	ld	a,xl
 160  0064 a401          	and	a,#1
 161  0066 5f            	clrw	x
 162  0067 97            	ld	xl,a
 163  0068 cf0016        	ldw	_S2+4,x
 164                     ; 57 	S3[2]=			((GPIO_ReadInputPin(GPIOB, GPIO_PIN_5))>>5)&0b00000001;	
 166  006b ae0020        	ldw	x,#32
 167  006e 89            	pushw	x
 168  006f ae5005        	ldw	x,#20485
 169  0072 cd0000        	call	_GPIO_ReadInputPin
 171  0075 5b02          	addw	sp,#2
 172  0077 54            	srlw	x
 173  0078 54            	srlw	x
 174  0079 54            	srlw	x
 175  007a 54            	srlw	x
 176  007b 54            	srlw	x
 177  007c 9f            	ld	a,xl
 178  007d a401          	and	a,#1
 179  007f 5f            	clrw	x
 180  0080 97            	ld	xl,a
 181  0081 cf0010        	ldw	_S3+4,x
 182                     ; 58 	if ((S1[2]==S1[1])&&(S1[1]==S1[0]))
 184  0084 ce001c        	ldw	x,_S1+4
 185  0087 c3001a        	cpw	x,_S1+2
 186  008a 260e          	jrne	L72
 188  008c ce001a        	ldw	x,_S1+2
 189  008f c30018        	cpw	x,_S1
 190  0092 2606          	jrne	L72
 191                     ; 60 		S1_IN = S1[2];
 193  0094 ce001c        	ldw	x,_S1+4
 194  0097 cf0016        	ldw	_S1_IN,x
 195  009a               L72:
 196                     ; 62 	if ((S2[2]==S2[1])&&(S2[1]==S2[0]))
 198  009a ce0016        	ldw	x,_S2+4
 199  009d c30014        	cpw	x,_S2+2
 200  00a0 260e          	jrne	L13
 202  00a2 ce0014        	ldw	x,_S2+2
 203  00a5 c30012        	cpw	x,_S2
 204  00a8 2606          	jrne	L13
 205                     ; 64 		S2_IN = S2[2];
 207  00aa ce0016        	ldw	x,_S2+4
 208  00ad cf0018        	ldw	_S2_IN,x
 209  00b0               L13:
 210                     ; 66 	if ((S3[2]==S3[1])&&(S3[1]==S3[0]))
 212  00b0 ce0010        	ldw	x,_S3+4
 213  00b3 c3000e        	cpw	x,_S3+2
 214  00b6 260e          	jrne	L33
 216  00b8 ce000e        	ldw	x,_S3+2
 217  00bb c3000c        	cpw	x,_S3
 218  00be 2606          	jrne	L33
 219                     ; 68 		S3_IN = S3[2];
 221  00c0 ce0010        	ldw	x,_S3+4
 222  00c3 cf001a        	ldw	_S3_IN,x
 223  00c6               L33:
 224                     ; 70 }
 227  00c6 81            	ret
 263                     ; 72 uint8_t dipRead(uint8_t type)
 263                     ; 73 {
 264                     .text:	section	.text,new
 265  0000               _dipRead:
 267  0000 88            	push	a
 268       00000001      OFST:	set	1
 271                     ; 74 	switch (type)
 274                     ; 89 		break;		
 275  0001 4d            	tnz	a
 276  0002 270a          	jreq	L53
 277  0004 4a            	dec	a
 278  0005 2603cc008d    	jreq	L73
 279  000a ac110111      	jpf	L75
 280  000e               L53:
 281                     ; 76 		case 0:
 281                     ; 77 			dipA[0] = !(((GPIO_ReadInputPin(GPIOD, GPIO_PIN_6))>>6)&0b00000001);
 283  000e ae0040        	ldw	x,#64
 284  0011 89            	pushw	x
 285  0012 ae500f        	ldw	x,#20495
 286  0015 cd0000        	call	_GPIO_ReadInputPin
 288  0018 5b02          	addw	sp,#2
 289  001a a606          	ld	a,#6
 290  001c               L21:
 291  001c 54            	srlw	x
 292  001d 4a            	dec	a
 293  001e 26fc          	jrne	L21
 294  0020 9f            	ld	a,xl
 295  0021 a401          	and	a,#1
 296  0023 5f            	clrw	x
 297  0024 97            	ld	xl,a
 298  0025 a30000        	cpw	x,#0
 299  0028 2604          	jrne	L01
 300  002a a601          	ld	a,#1
 301  002c 2001          	jra	L41
 302  002e               L01:
 303  002e 4f            	clr	a
 304  002f               L41:
 305  002f c70009        	ld	_dipA,a
 306                     ; 78 			dipA[1] = !(((GPIO_ReadInputPin(GPIOD, GPIO_PIN_5))>>5)&0b00000001);
 308  0032 ae0020        	ldw	x,#32
 309  0035 89            	pushw	x
 310  0036 ae500f        	ldw	x,#20495
 311  0039 cd0000        	call	_GPIO_ReadInputPin
 313  003c 5b02          	addw	sp,#2
 314  003e 54            	srlw	x
 315  003f 54            	srlw	x
 316  0040 54            	srlw	x
 317  0041 54            	srlw	x
 318  0042 54            	srlw	x
 319  0043 9f            	ld	a,xl
 320  0044 a401          	and	a,#1
 321  0046 5f            	clrw	x
 322  0047 97            	ld	xl,a
 323  0048 a30000        	cpw	x,#0
 324  004b 2604          	jrne	L61
 325  004d a601          	ld	a,#1
 326  004f 2001          	jra	L02
 327  0051               L61:
 328  0051 4f            	clr	a
 329  0052               L02:
 330  0052 c7000a        	ld	_dipA+1,a
 331                     ; 79 			dipA[2] = !(((GPIO_ReadInputPin(GPIOD, GPIO_PIN_4))>>4)&0b00000001);
 333  0055 ae0010        	ldw	x,#16
 334  0058 89            	pushw	x
 335  0059 ae500f        	ldw	x,#20495
 336  005c cd0000        	call	_GPIO_ReadInputPin
 338  005f 5b02          	addw	sp,#2
 339  0061 54            	srlw	x
 340  0062 54            	srlw	x
 341  0063 54            	srlw	x
 342  0064 54            	srlw	x
 343  0065 9f            	ld	a,xl
 344  0066 a401          	and	a,#1
 345  0068 5f            	clrw	x
 346  0069 97            	ld	xl,a
 347  006a a30000        	cpw	x,#0
 348  006d 2604          	jrne	L22
 349  006f a601          	ld	a,#1
 350  0071 2001          	jra	L42
 351  0073               L22:
 352  0073 4f            	clr	a
 353  0074               L42:
 354  0074 c7000b        	ld	_dipA+2,a
 355                     ; 80 			dip_IN = (dipA[0]+(dipA[1]<<1)+(dipA[2]<<2));
 357  0077 c6000b        	ld	a,_dipA+2
 358  007a 48            	sll	a
 359  007b 48            	sll	a
 360  007c 6b01          	ld	(OFST+0,sp),a
 361  007e c6000a        	ld	a,_dipA+1
 362  0081 48            	sll	a
 363  0082 cb0009        	add	a,_dipA
 364  0085 1b01          	add	a,(OFST+0,sp)
 365  0087 c70003        	ld	_dip_IN,a
 366                     ; 81 		break;
 368  008a cc0111        	jra	L75
 369  008d               L73:
 370                     ; 83 		case 1:
 370                     ; 84 			dipB[0] = !(((GPIO_ReadInputPin(GPIOC, GPIO_PIN_7))>>7)&0b00000001);
 372  008d ae0080        	ldw	x,#128
 373  0090 89            	pushw	x
 374  0091 ae500a        	ldw	x,#20490
 375  0094 cd0000        	call	_GPIO_ReadInputPin
 377  0097 5b02          	addw	sp,#2
 378  0099 4f            	clr	a
 379  009a 01            	rrwa	x,a
 380  009b 48            	sll	a
 381  009c 59            	rlcw	x
 382  009d 9f            	ld	a,xl
 383  009e a401          	and	a,#1
 384  00a0 5f            	clrw	x
 385  00a1 97            	ld	xl,a
 386  00a2 a30000        	cpw	x,#0
 387  00a5 2604          	jrne	L62
 388  00a7 a601          	ld	a,#1
 389  00a9 2001          	jra	L03
 390  00ab               L62:
 391  00ab 4f            	clr	a
 392  00ac               L03:
 393  00ac c70006        	ld	_dipB,a
 394                     ; 85 			dipB[1] = !(((GPIO_ReadInputPin(GPIOC, GPIO_PIN_6))>>6)&0b00000001);
 396  00af ae0040        	ldw	x,#64
 397  00b2 89            	pushw	x
 398  00b3 ae500a        	ldw	x,#20490
 399  00b6 cd0000        	call	_GPIO_ReadInputPin
 401  00b9 5b02          	addw	sp,#2
 402  00bb a606          	ld	a,#6
 403  00bd               L43:
 404  00bd 54            	srlw	x
 405  00be 4a            	dec	a
 406  00bf 26fc          	jrne	L43
 407  00c1 9f            	ld	a,xl
 408  00c2 a401          	and	a,#1
 409  00c4 5f            	clrw	x
 410  00c5 97            	ld	xl,a
 411  00c6 a30000        	cpw	x,#0
 412  00c9 2604          	jrne	L23
 413  00cb a601          	ld	a,#1
 414  00cd 2001          	jra	L63
 415  00cf               L23:
 416  00cf 4f            	clr	a
 417  00d0               L63:
 418  00d0 c70007        	ld	_dipB+1,a
 419                     ; 86 			dipB[2] = !(((GPIO_ReadInputPin(GPIOC, GPIO_PIN_5))>>5)&0b00000001);			
 421  00d3 ae0020        	ldw	x,#32
 422  00d6 89            	pushw	x
 423  00d7 ae500a        	ldw	x,#20490
 424  00da cd0000        	call	_GPIO_ReadInputPin
 426  00dd 5b02          	addw	sp,#2
 427  00df 54            	srlw	x
 428  00e0 54            	srlw	x
 429  00e1 54            	srlw	x
 430  00e2 54            	srlw	x
 431  00e3 54            	srlw	x
 432  00e4 9f            	ld	a,xl
 433  00e5 a401          	and	a,#1
 434  00e7 5f            	clrw	x
 435  00e8 97            	ld	xl,a
 436  00e9 a30000        	cpw	x,#0
 437  00ec 2604          	jrne	L04
 438  00ee a601          	ld	a,#1
 439  00f0 2001          	jra	L24
 440  00f2               L04:
 441  00f2 4f            	clr	a
 442  00f3               L24:
 443  00f3 c70008        	ld	_dipB+2,a
 444                     ; 87 			dip_IN = (dipB[0]+(dipB[1]<<1)+(dipB[2]<<2));
 446  00f6 c60008        	ld	a,_dipB+2
 447  00f9 48            	sll	a
 448  00fa 48            	sll	a
 449  00fb 6b01          	ld	(OFST+0,sp),a
 450  00fd c60007        	ld	a,_dipB+1
 451  0100 48            	sll	a
 452  0101 cb0006        	add	a,_dipB
 453  0104 1b01          	add	a,(OFST+0,sp)
 454  0106 c70003        	ld	_dip_IN,a
 455                     ; 88 			dip_IN = dip_IN + 8;
 457  0109 c60003        	ld	a,_dip_IN
 458  010c ab08          	add	a,#8
 459  010e c70003        	ld	_dip_IN,a
 460                     ; 89 		break;		
 462  0111               L75:
 463                     ; 91 	return dip_IN;
 465  0111 c60003        	ld	a,_dip_IN
 468  0114 5b01          	addw	sp,#1
 469  0116 81            	ret
 500                     ; 94 void UpdateTask(void)
 500                     ; 95 {
 501                     .text:	section	.text,new
 502  0000               _UpdateTask:
 506                     ; 96   if (timeout500msISR)
 508  0000 ce000e        	ldw	x,_timeout500msISR
 509  0003 270c          	jreq	L17
 510                     ; 98 		timeout500ms = 1;
 512  0005 ae0001        	ldw	x,#1
 513  0008 cf0006        	ldw	_timeout500ms,x
 514                     ; 99 		timeout500msISR = 0;
 516  000b 5f            	clrw	x
 517  000c cf000e        	ldw	_timeout500msISR,x
 519  000f 2004          	jra	L37
 520  0011               L17:
 521                     ; 101 	else timeout500ms = 0;
 523  0011 5f            	clrw	x
 524  0012 cf0006        	ldw	_timeout500ms,x
 525  0015               L37:
 526                     ; 103   if (timeout50msISR)
 528  0015 ce000c        	ldw	x,_timeout50msISR
 529  0018 270c          	jreq	L57
 530                     ; 105 		timeout50ms = 1;
 532  001a ae0001        	ldw	x,#1
 533  001d cf0004        	ldw	_timeout50ms,x
 534                     ; 106 		timeout50msISR = 0;
 536  0020 5f            	clrw	x
 537  0021 cf000c        	ldw	_timeout50msISR,x
 539  0024 2004          	jra	L77
 540  0026               L57:
 541                     ; 108 	else timeout50ms = 0;
 543  0026 5f            	clrw	x
 544  0027 cf0004        	ldw	_timeout50ms,x
 545  002a               L77:
 546                     ; 110   if (timeout10msISR)
 548  002a ce000a        	ldw	x,_timeout10msISR
 549  002d 270c          	jreq	L101
 550                     ; 112 		timeout10ms = 1;
 552  002f ae0001        	ldw	x,#1
 553  0032 cf0002        	ldw	_timeout10ms,x
 554                     ; 113 		timeout10msISR = 0;
 556  0035 5f            	clrw	x
 557  0036 cf000a        	ldw	_timeout10msISR,x
 559  0039 2004          	jra	L301
 560  003b               L101:
 561                     ; 115 	else timeout10ms = 0;
 563  003b 5f            	clrw	x
 564  003c cf0002        	ldw	_timeout10ms,x
 565  003f               L301:
 566                     ; 117 	if (timeout1msISR)
 568  003f ce0008        	ldw	x,_timeout1msISR
 569  0042 270c          	jreq	L501
 570                     ; 119 		timeout1ms = 1;
 572  0044 ae0001        	ldw	x,#1
 573  0047 cf0000        	ldw	_timeout1ms,x
 574                     ; 120 		timeout1msISR = 0;
 576  004a 5f            	clrw	x
 577  004b cf0008        	ldw	_timeout1msISR,x
 579  004e 2004          	jra	L701
 580  0050               L501:
 581                     ; 122 	else timeout1ms = 0;
 583  0050 5f            	clrw	x
 584  0051 cf0000        	ldw	_timeout1ms,x
 585  0054               L701:
 586                     ; 123 }
 589  0054 81            	ret
 621                     .const:	section	.text
 622  0000               L05:
 623  0000 0000c350      	dc.l	50000
 624                     ; 125 void init_setup(void)
 624                     ; 126 {
 625                     .text:	section	.text,new
 626  0000               _init_setup:
 630                     ; 127 	clock_setup();
 632  0000 cd0000        	call	_clock_setup
 634                     ; 128 	GPIO_setup();
 636  0003 cd0000        	call	_GPIO_setup
 638                     ; 131 	TIM1_setup();
 640  0006 cd0000        	call	_TIM1_setup
 642                     ; 132 	TIM2_setup();
 644  0009 cd0000        	call	_TIM2_setup
 646                     ; 133 	TIM4_setup();
 648  000c cd0000        	call	_TIM4_setup
 650                     ; 134 	enableInterrupts();
 653  000f 9a            rim
 655                     ; 135 	init_u_Port();
 658  0010 cd0000        	call	_init_u_Port
 660                     ; 136 	for(j=0;j<50000;j++)	//circuits power up
 662  0013 5f            	clrw	x
 663  0014 cf0001        	ldw	_j,x
 664  0017               L121:
 665                     ; 137 	{nop();}
 668  0017 9d            nop
 670                     ; 136 	for(j=0;j<50000;j++)	//circuits power up
 673  0018 ce0001        	ldw	x,_j
 674  001b 1c0001        	addw	x,#1
 675  001e cf0001        	ldw	_j,x
 678  0021 9c            	rvf
 679  0022 ce0001        	ldw	x,_j
 680  0025 cd0000        	call	c_uitolx
 682  0028 ae0000        	ldw	x,#L05
 683  002b cd0000        	call	c_lcmp
 685  002e 2fe7          	jrslt	L121
 686                     ; 138 }
 689  0030 81            	ret
 959                     	switch	.bss
 960  0000               _i:
 961  0000 00            	ds.b	1
 962                     	xdef	_i
 963  0001               _j:
 964  0001 0000          	ds.b	2
 965                     	xdef	_j
 966  0003               _dip_IN:
 967  0003 00            	ds.b	1
 968                     	xdef	_dip_IN
 969  0004               _dipB_IN:
 970  0004 00            	ds.b	1
 971                     	xdef	_dipB_IN
 972  0005               _dipA_IN:
 973  0005 00            	ds.b	1
 974                     	xdef	_dipA_IN
 975  0006               _dipB:
 976  0006 000000        	ds.b	3
 977                     	xdef	_dipB
 978  0009               _dipA:
 979  0009 000000        	ds.b	3
 980                     	xdef	_dipA
 981                     	xdef	_S3_IN
 982  000c               _S3:
 983  000c 000000000000  	ds.b	6
 984                     	xdef	_S3
 985  0012               _S2:
 986  0012 000000000000  	ds.b	6
 987                     	xdef	_S2
 988  0018               _S1:
 989  0018 000000000000  	ds.b	6
 990                     	xdef	_S1
 991                     	xdef	_blink
 992                     	xdef	_VG
 993                     	xdef	_VR
 994                     	xref	_init_u_Port
 995                     	xref	_GPIO_setup
 996                     	xref	_clock_setup
 997                     	xref	_TIM4_setup
 998                     	xref	_TIM2_setup
 999                     	xref	_TIM1_setup
1000                     	xdef	_dipRead
1001                     	xdef	_init_setup
1002                     	xdef	_UpdateTask
1003                     	xdef	_inputRead
1004                     	xdef	_S2_IN
1005                     	xdef	_S1_IN
1006                     	xdef	_counter10ms
1007                     	xdef	_timeout500msISR
1008                     	xdef	_timeout50msISR
1009                     	xdef	_timeout10msISR
1010                     	xdef	_timeout1msISR
1011                     	xdef	_timeout500ms
1012                     	xdef	_timeout50ms
1013                     	xdef	_timeout10ms
1014                     	xdef	_timeout1ms
1015                     	xref	_GPIO_ReadInputPin
1035                     	xref	c_lcmp
1036                     	xref	c_uitolx
1037                     	end

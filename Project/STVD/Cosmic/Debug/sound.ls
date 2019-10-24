   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.10.2 - 02 Nov 2011
   3                     ; Generator (Limited) V4.3.7 - 29 Nov 2011
  18                     	switch	.data
  19  0000               _duty:
  20  0000 28            	dc.b	40
  21  0001               _cnt:
  22  0001 0000          	dc.w	0
  23  0003               _n:
  24  0003 00            	dc.b	0
  25  0004               _t:
  26  0004 01            	dc.b	1
  27  0005               _songStep:
  28  0005 0000          	dc.w	0
  29  0007               _BPM:
  30  0007 0000          	dc.w	0
  31  0009               _QQ:
  32  0009 0000          	dc.w	0
  33  000b               _DQ:
  34  000b 0000          	dc.w	0
  35  000d               _UQ:
  36  000d 0000          	dc.w	0
  37  000f               _UO:
  38  000f 0000          	dc.w	0
  39  0011               _oldNum:
  40  0011 00            	dc.b	0
  41  0012               _firstTime:
  42  0012 0001          	dc.w	1
  43  0014               _birthday_song:
  44  0014 2a84          	dc.w	10884
  45  0016 0032          	dc.w	50
  46  0018 2a84          	dc.w	10884
  47  001a 0032          	dc.w	50
  48  001c 25e0          	dc.w	9696
  49  001e 0032          	dc.w	50
  50  0020 2a84          	dc.w	10884
  51  0022 0032          	dc.w	50
  52  0024 1fe3          	dc.w	8163
  53  0026 0032          	dc.w	50
  54  0028 21c8          	dc.w	8648
  55  002a 0032          	dc.w	50
  56  002c 2a84          	dc.w	10884
  57  002e 0032          	dc.w	50
  58  0030 2a84          	dc.w	10884
  59  0032 0032          	dc.w	50
  60  0034 25e0          	dc.w	9696
  61  0036 0032          	dc.w	50
  62  0038 2a84          	dc.w	10884
  63  003a 0032          	dc.w	50
  64  003c 1c68          	dc.w	7272
  65  003e 0032          	dc.w	50
  66  0040 1fe3          	dc.w	8163
  67  0042 0032          	dc.w	50
  68  0044 2a84          	dc.w	10884
  69  0046 0032          	dc.w	50
  70  0048 2a84          	dc.w	10884
  71  004a 0032          	dc.w	50
  72  004c 1542          	dc.w	5442
  73  004e 0032          	dc.w	50
  74  0050 194d          	dc.w	6477
  75  0052 0032          	dc.w	50
  76  0054 1fe3          	dc.w	8163
  77  0056 0032          	dc.w	50
  78  0058 21c8          	dc.w	8648
  79  005a 0032          	dc.w	50
  80  005c 25e0          	dc.w	9696
  81  005e 0032          	dc.w	50
  82  0060 17da          	dc.w	6106
  83  0062 0032          	dc.w	50
  84  0064 17da          	dc.w	6106
  85  0066 0032          	dc.w	50
  86  0068 194d          	dc.w	6477
  87  006a 0032          	dc.w	50
  88  006c 1fe3          	dc.w	8163
  89  006e 0032          	dc.w	50
  90  0070 1c68          	dc.w	7272
  91  0072 0032          	dc.w	50
  92  0074 1fe3          	dc.w	8163
  93  0076 0032          	dc.w	50
  94  0078 0000          	dc.w	0
  95  007a 00c8          	dc.w	200
  96  007c 0001          	dc.w	1
  97  007e               _generalLee_song:
  98  007e 1fe3          	dc.w	8163
  99  0080 0013          	dc.w	19
 100  0082 25e0          	dc.w	9696
 101  0084 0013          	dc.w	19
 102  0086 2fb5          	dc.w	12213
 103  0088 0026          	dc.w	38
 104  008a 2fb5          	dc.w	12213
 105  008c 0026          	dc.w	38
 106  008e 2fb5          	dc.w	12213
 107  0090 0013          	dc.w	19
 108  0092 2a84          	dc.w	10884
 109  0094 0013          	dc.w	19
 110  0096 25e0          	dc.w	9696
 111  0098 0013          	dc.w	19
 112  009a 23d1          	dc.w	9169
 113  009c 0013          	dc.w	19
 114  009e 1fe3          	dc.w	8163
 115  00a0 0026          	dc.w	38
 116  00a2 1fe3          	dc.w	8163
 117  00a4 0026          	dc.w	38
 118  00a6 1fe3          	dc.w	8163
 119  00a8 0026          	dc.w	38
 120  00aa 25e0          	dc.w	9696
 121  00ac 0026          	dc.w	38
 122  00ae 0000          	dc.w	0
 123  00b0 00c8          	dc.w	200
 124  00b2 0001          	dc.w	1
 167                     ; 67 void soundStone(uint8_t num)
 167                     ; 68 {
 169                     .text:	section	.text,new
 170  0000               _soundStone:
 172  0000 88            	push	a
 173       00000000      OFST:	set	0
 176                     ; 69 	if (num != oldNum)
 178  0001 c10011        	cp	a,_oldNum
 179  0004 2706          	jreq	L34
 180                     ; 71 		firstTime=1;
 182  0006 ae0001        	ldw	x,#1
 183  0009 cf0012        	ldw	_firstTime,x
 184  000c               L34:
 185                     ; 73 	oldNum=num;
 187  000c 7b01          	ld	a,(OFST+1,sp)
 188  000e c70011        	ld	_oldNum,a
 189                     ; 75 	switch (num)
 191  0011 7b01          	ld	a,(OFST+1,sp)
 193                     ; 110 		default:
 193                     ; 111 		break;
 194  0013 4d            	tnz	a
 195  0014 270a          	jreq	L3
 196  0016 a008          	sub	a,#8
 197  0018 2718          	jreq	L11
 198  001a a02a          	sub	a,#42
 199  001c 2724          	jreq	L51
 200  001e 2025          	jra	L74
 201  0020               L3:
 202                     ; 78 		case 0:
 202                     ; 79 			if (firstTime)
 204  0020 ce0012        	ldw	x,_firstTime
 205  0023 2704          	jreq	L15
 206                     ; 82 				firstTime=0;
 208  0025 5f            	clrw	x
 209  0026 cf0012        	ldw	_firstTime,x
 210  0029               L15:
 211                     ; 84 			hornGeneralLee();
 213  0029 cd0000        	call	_hornGeneralLee
 215                     ; 85 		break;
 217  002c 2017          	jra	L74
 218  002e               L5:
 219                     ; 87 		case 1:
 219                     ; 88 		break;		
 221  002e 2015          	jra	L74
 222  0030               L7:
 223                     ; 90 		case 2:
 223                     ; 91 		break;
 225  0030 2013          	jra	L74
 226  0032               L11:
 227                     ; 94 		case 8:
 227                     ; 95 			if (firstTime)
 229  0032 ce0012        	ldw	x,_firstTime
 230  0035 2704          	jreq	L35
 231                     ; 98 				firstTime=0;
 233  0037 5f            	clrw	x
 234  0038 cf0012        	ldw	_firstTime,x
 235  003b               L35:
 236                     ; 100 			birtdaySong();
 238  003b cd0000        	call	_birtdaySong
 240                     ; 101 		break;
 242  003e 2005          	jra	L74
 243  0040               L31:
 244                     ; 103 		case 12:
 244                     ; 104 		break;
 246  0040 2003          	jra	L74
 247  0042               L51:
 248                     ; 106 		case 50:
 248                     ; 107 			pause();
 250  0042 cd0000        	call	_pause
 252                     ; 108 		break;
 254  0045               L71:
 255                     ; 110 		default:
 255                     ; 111 		break;
 257  0045               L74:
 258                     ; 113 }
 261  0045 84            	pop	a
 262  0046 81            	ret
 293                     ; 117 void birtdaySong(void)
 293                     ; 118 {
 294                     .text:	section	.text,new
 295  0000               _birtdaySong:
 299                     ; 119 	switch (songStep)
 301  0000 ce0005        	ldw	x,_songStep
 303                     ; 146 		break;
 304  0003 5d            	tnzw	x
 305  0004 2709          	jreq	L55
 306  0006 5a            	decw	x
 307  0007 2603cc008a    	jreq	L75
 308  000c cc0092        	jra	L37
 309  000f               L55:
 310                     ; 121 		case 0:
 310                     ; 122 		if (birthday_song[n]  != MUTE)
 312  000f c60003        	ld	a,_n
 313  0012 5f            	clrw	x
 314  0013 97            	ld	xl,a
 315  0014 58            	sllw	x
 316  0015 d60015        	ld	a,(_birthday_song+1,x)
 317  0018 da0014        	or	a,(_birthday_song,x)
 318  001b 270c          	jreq	L57
 319                     ; 124 			TIM1_SetAutoreload(birthday_song[n]);
 321  001d c60003        	ld	a,_n
 322  0020 5f            	clrw	x
 323  0021 97            	ld	xl,a
 324  0022 58            	sllw	x
 325  0023 de0014        	ldw	x,(_birthday_song,x)
 326  0026 cd0000        	call	_TIM1_SetAutoreload
 328  0029               L57:
 329                     ; 126 		TIM1_SetCompare4(birthday_song[n]/duty);
 331  0029 c60003        	ld	a,_n
 332  002c 5f            	clrw	x
 333  002d 97            	ld	xl,a
 334  002e 58            	sllw	x
 335  002f de0014        	ldw	x,(_birthday_song,x)
 336  0032 c60000        	ld	a,_duty
 337  0035 62            	div	x,a
 338  0036 cd0000        	call	_TIM1_SetCompare4
 340                     ; 127 		cnt++;
 342  0039 ce0001        	ldw	x,_cnt
 343  003c 1c0001        	addw	x,#1
 344  003f cf0001        	ldw	_cnt,x
 345                     ; 128 		if (cnt >= birthday_song[t])
 347  0042 c60004        	ld	a,_t
 348  0045 5f            	clrw	x
 349  0046 97            	ld	xl,a
 350  0047 58            	sllw	x
 351  0048 9093          	ldw	y,x
 352  004a 90de0014      	ldw	y,(_birthday_song,y)
 353  004e 90c30001      	cpw	y,_cnt
 354  0052 221a          	jrugt	L77
 355                     ; 130 			cnt = 0;
 357  0054 5f            	clrw	x
 358  0055 cf0001        	ldw	_cnt,x
 359                     ; 131 			n		=	n + 2;
 361  0058 725c0003      	inc	_n
 362  005c 725c0003      	inc	_n
 363                     ; 132 			t		=	t + 2;
 365  0060 725c0004      	inc	_t
 366  0064 725c0004      	inc	_t
 367                     ; 133 			songStep = 1;
 369  0068 ae0001        	ldw	x,#1
 370  006b cf0005        	ldw	_songStep,x
 371  006e               L77:
 372                     ; 135 		if (birthday_song[n] == END)
 374  006e c60003        	ld	a,_n
 375  0071 5f            	clrw	x
 376  0072 97            	ld	xl,a
 377  0073 58            	sllw	x
 378  0074 9093          	ldw	y,x
 379  0076 90de0014      	ldw	y,(_birthday_song,y)
 380  007a 90a30001      	cpw	y,#1
 381  007e 2612          	jrne	L37
 382                     ; 137 			n = 0;
 384  0080 725f0003      	clr	_n
 385                     ; 138 			t = 1;
 387  0084 35010004      	mov	_t,#1
 388  0088 2008          	jra	L37
 389  008a               L75:
 390                     ; 143 		case 1:
 390                     ; 144 		TIM1_SetCompare4(MUTE);
 392  008a 5f            	clrw	x
 393  008b cd0000        	call	_TIM1_SetCompare4
 395                     ; 145 		songStep = 0;
 397  008e 5f            	clrw	x
 398  008f cf0005        	ldw	_songStep,x
 399                     ; 146 		break;
 401  0092               L37:
 402                     ; 148 }
 405  0092 81            	ret
 436                     ; 150 void hornGeneralLee(void)
 436                     ; 151 {
 437                     .text:	section	.text,new
 438  0000               _hornGeneralLee:
 442                     ; 152 	switch (songStep)
 444  0000 ce0005        	ldw	x,_songStep
 446                     ; 179 		break;
 447  0003 5d            	tnzw	x
 448  0004 2709          	jreq	L301
 449  0006 5a            	decw	x
 450  0007 2603cc008a    	jreq	L501
 451  000c cc0092        	jra	L121
 452  000f               L301:
 453                     ; 154 		case 0:
 453                     ; 155 		if (generalLee_song[n]  != MUTE)
 455  000f c60003        	ld	a,_n
 456  0012 5f            	clrw	x
 457  0013 97            	ld	xl,a
 458  0014 58            	sllw	x
 459  0015 d6007f        	ld	a,(_generalLee_song+1,x)
 460  0018 da007e        	or	a,(_generalLee_song,x)
 461  001b 270c          	jreq	L321
 462                     ; 157 			TIM1_SetAutoreload(generalLee_song[n]);
 464  001d c60003        	ld	a,_n
 465  0020 5f            	clrw	x
 466  0021 97            	ld	xl,a
 467  0022 58            	sllw	x
 468  0023 de007e        	ldw	x,(_generalLee_song,x)
 469  0026 cd0000        	call	_TIM1_SetAutoreload
 471  0029               L321:
 472                     ; 159 		TIM1_SetCompare4(generalLee_song[n]/duty);
 474  0029 c60003        	ld	a,_n
 475  002c 5f            	clrw	x
 476  002d 97            	ld	xl,a
 477  002e 58            	sllw	x
 478  002f de007e        	ldw	x,(_generalLee_song,x)
 479  0032 c60000        	ld	a,_duty
 480  0035 62            	div	x,a
 481  0036 cd0000        	call	_TIM1_SetCompare4
 483                     ; 160 		cnt++;
 485  0039 ce0001        	ldw	x,_cnt
 486  003c 1c0001        	addw	x,#1
 487  003f cf0001        	ldw	_cnt,x
 488                     ; 161 		if (cnt >= generalLee_song[t])
 490  0042 c60004        	ld	a,_t
 491  0045 5f            	clrw	x
 492  0046 97            	ld	xl,a
 493  0047 58            	sllw	x
 494  0048 9093          	ldw	y,x
 495  004a 90de007e      	ldw	y,(_generalLee_song,y)
 496  004e 90c30001      	cpw	y,_cnt
 497  0052 221a          	jrugt	L521
 498                     ; 163 			cnt = 0;
 500  0054 5f            	clrw	x
 501  0055 cf0001        	ldw	_cnt,x
 502                     ; 164 			n		=	n + 2;
 504  0058 725c0003      	inc	_n
 505  005c 725c0003      	inc	_n
 506                     ; 165 			t		=	t + 2;
 508  0060 725c0004      	inc	_t
 509  0064 725c0004      	inc	_t
 510                     ; 166 			songStep = 1;
 512  0068 ae0001        	ldw	x,#1
 513  006b cf0005        	ldw	_songStep,x
 514  006e               L521:
 515                     ; 168 		if (generalLee_song[n] == END)
 517  006e c60003        	ld	a,_n
 518  0071 5f            	clrw	x
 519  0072 97            	ld	xl,a
 520  0073 58            	sllw	x
 521  0074 9093          	ldw	y,x
 522  0076 90de007e      	ldw	y,(_generalLee_song,y)
 523  007a 90a30001      	cpw	y,#1
 524  007e 2612          	jrne	L121
 525                     ; 170 			n = 0;
 527  0080 725f0003      	clr	_n
 528                     ; 171 			t = 1;
 530  0084 35010004      	mov	_t,#1
 531  0088 2008          	jra	L121
 532  008a               L501:
 533                     ; 176 		case 1:
 533                     ; 177 		TIM1_SetCompare4(MUTE);
 535  008a 5f            	clrw	x
 536  008b cd0000        	call	_TIM1_SetCompare4
 538                     ; 178 		songStep = 0;
 540  008e 5f            	clrw	x
 541  008f cf0005        	ldw	_songStep,x
 542                     ; 179 		break;
 544  0092               L121:
 545                     ; 181 }
 548  0092 81            	ret
 583                     ; 183 void setFrequency(uint32_t f1)
 583                     ; 184 {
 584                     .text:	section	.text,new
 585  0000               _setFrequency:
 587  0000 5204          	subw	sp,#4
 588       00000004      OFST:	set	4
 591                     ; 185 	TIM1_SetAutoreload(f1);
 593  0002 1e09          	ldw	x,(OFST+5,sp)
 594  0004 cd0000        	call	_TIM1_SetAutoreload
 596                     ; 186 	TIM1_SetCompare4(f1/duty);
 598  0007 c60000        	ld	a,_duty
 599  000a b703          	ld	c_lreg+3,a
 600  000c 3f02          	clr	c_lreg+2
 601  000e 3f01          	clr	c_lreg+1
 602  0010 3f00          	clr	c_lreg
 603  0012 96            	ldw	x,sp
 604  0013 1c0001        	addw	x,#OFST-3
 605  0016 cd0000        	call	c_rtol
 607  0019 96            	ldw	x,sp
 608  001a 1c0007        	addw	x,#OFST+3
 609  001d cd0000        	call	c_ltor
 611  0020 96            	ldw	x,sp
 612  0021 1c0001        	addw	x,#OFST-3
 613  0024 cd0000        	call	c_ludv
 615  0027 be02          	ldw	x,c_lreg+2
 616  0029 cd0000        	call	_TIM1_SetCompare4
 618                     ; 187 }
 621  002c 5b04          	addw	sp,#4
 622  002e 81            	ret
 646                     ; 189 void pause(void)
 646                     ; 190 {
 647                     .text:	section	.text,new
 648  0000               _pause:
 652                     ; 191 	TIM1_SetCompare4(0);
 654  0000 5f            	clrw	x
 655  0001 cd0000        	call	_TIM1_SetCompare4
 657                     ; 192 }
 660  0004 81            	ret
 805                     	xdef	_generalLee_song
 806                     	xdef	_birthday_song
 807                     	xdef	_firstTime
 808                     	xdef	_oldNum
 809                     	xdef	_UO
 810                     	xdef	_UQ
 811                     	xdef	_DQ
 812                     	xdef	_QQ
 813                     	xdef	_BPM
 814                     	xdef	_songStep
 815                     	xdef	_t
 816                     	xdef	_n
 817                     	xdef	_cnt
 818                     	xdef	_hornGeneralLee
 819                     	xdef	_birtdaySong
 820                     	xdef	_pause
 821                     	xdef	_setFrequency
 822                     	xdef	_soundStone
 823                     	xdef	_duty
 824                     	xref	_TIM1_SetCompare4
 825                     	xref	_TIM1_SetAutoreload
 826                     	xref.b	c_lreg
 827                     	xref.b	c_x
 846                     	xref	c_ludv
 847                     	xref	c_rtol
 848                     	xref	c_ltor
 849                     	end

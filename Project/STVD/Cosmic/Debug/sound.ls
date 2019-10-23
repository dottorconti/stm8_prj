   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.10.2 - 02 Nov 2011
   3                     ; Generator (Limited) V4.3.7 - 29 Nov 2011
   4                     ; Optimizer V4.3.6 - 29 Nov 2011
  22                     	bsct
  23  0000               _duty:
  24  0000 28            	dc.b	40
  25  0001               _cct:
  26  0001 0000          	dc.w	0
  27  0003               _sweepCnt:
  28  0003 0000          	dc.w	0
  29  0005               _caseCnt:
  30  0005 0000          	dc.w	0
  31  0007               _freq:
  32  0007 0046          	dc.w	70
  33  0009               _sweep:
  34  0009 b292          	dc.w	-19822
  35  000b               _cnt:
  36  000b 0000          	dc.w	0
  37  000d               _n:
  38  000d 00            	dc.b	0
  39  000e               _t:
  40  000e 01            	dc.b	1
  41  000f               _songStep:
  42  000f 0000          	dc.w	0
  43  0011               _BPMv:
  44  0011 0000          	dc.w	0
  45  0013               _birthday_song:
  46  0013 2a84          	dc.w	10884
  47  0015 0012          	dc.w	18
  48  0017 2a84          	dc.w	10884
  49  0019 0012          	dc.w	18
  50  001b 25e0          	dc.w	9696
  51  001d 0012          	dc.w	18
  52  001f 2a84          	dc.w	10884
  53  0021 0012          	dc.w	18
  54  0023 1fe3          	dc.w	8163
  55  0025 0012          	dc.w	18
  56  0027 21c8          	dc.w	8648
  57  0029 0012          	dc.w	18
  58  002b 2a84          	dc.w	10884
  59  002d 0012          	dc.w	18
  60  002f 2a84          	dc.w	10884
  61  0031 0012          	dc.w	18
  62  0033 25e0          	dc.w	9696
  63  0035 0012          	dc.w	18
  64  0037 2a84          	dc.w	10884
  65  0039 0012          	dc.w	18
  66  003b 1c68          	dc.w	7272
  67  003d 0012          	dc.w	18
  68  003f 1fe3          	dc.w	8163
  69  0041 0012          	dc.w	18
  70  0043 2a84          	dc.w	10884
  71  0045 0012          	dc.w	18
  72  0047 2a84          	dc.w	10884
  73  0049 0012          	dc.w	18
  74  004b 1542          	dc.w	5442
  75  004d 0012          	dc.w	18
  76  004f 194d          	dc.w	6477
  77  0051 0012          	dc.w	18
  78  0053 1fe3          	dc.w	8163
  79  0055 0012          	dc.w	18
  80  0057 21c8          	dc.w	8648
  81  0059 0012          	dc.w	18
  82  005b 25e0          	dc.w	9696
  83  005d 0012          	dc.w	18
  84  005f 17da          	dc.w	6106
  85  0061 0012          	dc.w	18
  86  0063 17da          	dc.w	6106
  87  0065 0012          	dc.w	18
  88  0067 194d          	dc.w	6477
  89  0069 0012          	dc.w	18
  90  006b 1fe3          	dc.w	8163
  91  006d 0012          	dc.w	18
  92  006f 1c68          	dc.w	7272
  93  0071 0012          	dc.w	18
  94  0073 1fe3          	dc.w	8163
  95  0075 0012          	dc.w	18
  96  0077 0000          	dc.w	0
  97  0079 0025          	dc.w	37
  98  007b 0001          	dc.w	1
  99  007d               _generalLee_song:
 100  007d 1fe3          	dc.w	8163
 101  007f 0012          	dc.w	18
 102  0081 25e0          	dc.w	9696
 103  0083 0012          	dc.w	18
 104  0085 2fb5          	dc.w	12213
 105  0087 0025          	dc.w	37
 106  0089 2fb5          	dc.w	12213
 107  008b 0025          	dc.w	37
 108  008d 2fb5          	dc.w	12213
 109  008f 0012          	dc.w	18
 110  0091 2a84          	dc.w	10884
 111  0093 0012          	dc.w	18
 112  0095 25e0          	dc.w	9696
 113  0097 0012          	dc.w	18
 114  0099 23d1          	dc.w	9169
 115  009b 0012          	dc.w	18
 116  009d 1fe3          	dc.w	8163
 117  009f 0025          	dc.w	37
 118  00a1 1fe3          	dc.w	8163
 119  00a3 0025          	dc.w	37
 120  00a5 1fe3          	dc.w	8163
 121  00a7 0025          	dc.w	37
 122  00a9 25e0          	dc.w	9696
 123  00ab 0025          	dc.w	37
 124  00ad 0000          	dc.w	0
 125  00af 00c8          	dc.w	200
 126  00b1 0001          	dc.w	1
 175                     ; 50 void soundStone(uint8_t num)
 175                     ; 51 {
 177                     .text:	section	.text,new
 178  0000               _soundStone:
 182                     ; 52 switch (num)
 185                     ; 147 		case 11:  // lineare 970 Hz	
 185                     ; 148 		break;
 186  0000 4d            	tnz	a
 187  0001 2704          	jreq	L3
 188  0003 4a            	dec	a
 189  0004 2731          	jreq	L11
 191  0006 81            	ret	
 192  0007               L3:
 193                     ; 55 		case 0:
 193                     ; 56 			switch (songStep)
 195  0007 be0f          	ldw	x,_songStep
 197                     ; 83 				break;
 198  0009 2704          	jreq	L5
 199  000b 5a            	decw	x
 200  000c 2762          	jreq	L51
 202  000e 81            	ret	
 203  000f               L5:
 204                     ; 58 				case 0:
 204                     ; 59 				if (birthday_song[n]  != MUTE)
 206  000f ad67          	call	LC003
 207  0011 e614          	ld	a,(_birthday_song+1,x)
 208  0013 ea13          	or	a,(_birthday_song,x)
 209  0015 2705          	jreq	L77
 210                     ; 61 					TIM1_SetAutoreload(birthday_song[n]);
 212  0017 ee13          	ldw	x,(_birthday_song,x)
 213  0019 cd0000        	call	_TIM1_SetAutoreload
 215  001c               L77:
 216                     ; 63 				TIM1_SetCompare4(birthday_song[n]/duty);
 218  001c ad5a          	call	LC003
 219  001e b600          	ld	a,_duty
 220  0020 ee13          	ldw	x,(_birthday_song,x)
 221  0022 ad5a          	call	LC004
 222  0024 90ee13        	ldw	y,(_birthday_song,y)
 223  0027 90b30b        	cpw	y,_cnt
 224  002a 2202          	jrugt	L101
 225                     ; 67 					cnt = 0;
 227  002c ad61          	call	LC005
 228  002e               L101:
 229                     ; 72 				if (birthday_song[n] == END)
 231  002e ad48          	call	LC003
 232  0030 9093          	ldw	y,x
 233  0032 90ee13        	ldw	y,(_birthday_song,y)
 234                     ; 74 					n = 0;
 235                     ; 75 					t = 1;
 236  0035 202e          	jp	LC002
 237                     ; 80 				case 1:
 237                     ; 81 				TIM1_SetCompare4(MUTE);
 239                     ; 82 				songStep = 0;
 240                     ; 83 				break;
 242                     ; 85 		break;
 244  0037               L11:
 245                     ; 87 		case 1:
 245                     ; 88 			switch (songStep)
 247  0037 be0f          	ldw	x,_songStep
 249                     ; 115 				break;
 250  0039 2704          	jreq	L31
 251  003b 5a            	decw	x
 252  003c 2732          	jreq	L51
 254  003e 81            	ret	
 255  003f               L31:
 256                     ; 90 				case 0:
 256                     ; 91 				if (generalLee_song[n]  != MUTE)
 258  003f ad37          	call	LC003
 259  0041 e67e          	ld	a,(_generalLee_song+1,x)
 260  0043 ea7d          	or	a,(_generalLee_song,x)
 261  0045 2705          	jreq	L111
 262                     ; 93 					TIM1_SetAutoreload(generalLee_song[n]);
 264  0047 ee7d          	ldw	x,(_generalLee_song,x)
 265  0049 cd0000        	call	_TIM1_SetAutoreload
 267  004c               L111:
 268                     ; 95 				TIM1_SetCompare4(generalLee_song[n]/duty);
 270  004c ad2a          	call	LC003
 271  004e b600          	ld	a,_duty
 272  0050 ee7d          	ldw	x,(_generalLee_song,x)
 273  0052 ad2a          	call	LC004
 274  0054 90ee7d        	ldw	y,(_generalLee_song,y)
 275  0057 90b30b        	cpw	y,_cnt
 276  005a 2202          	jrugt	L311
 277                     ; 99 					cnt = 0;
 279  005c ad31          	call	LC005
 280  005e               L311:
 281                     ; 104 				if (generalLee_song[n] == END)
 283  005e ad18          	call	LC003
 284  0060 9093          	ldw	y,x
 285  0062 90ee7d        	ldw	y,(_generalLee_song,y)
 286                     ; 106 					n = 0;
 288                     ; 107 					t = 1;
 290  0065               LC002:
 291  0065 905a          	decw	y
 292  0067 260e          	jrne	L17
 294  0069 3f0d          	clr	_n
 296  006b 3501000e      	mov	_t,#1
 298  006f 81            	ret	
 299  0070               L51:
 300                     ; 112 				case 1:
 300                     ; 113 				TIM1_SetCompare4(MUTE);
 303                     ; 114 				songStep = 0;
 306  0070 5f            	clrw	x
 307  0071 cd0000        	call	_TIM1_SetCompare4
 309  0074 5f            	clrw	x
 310  0075 bf0f          	ldw	_songStep,x
 311                     ; 115 				break;
 313                     ; 117 		break;		
 315                     ; 119 		case 2:
 315                     ; 120 		break;	
 317                     ; 122 		case 3:
 317                     ; 123 		break;	
 319                     ; 125 		case 4:
 319                     ; 126 		break;		
 321                     ; 128 		case 5:
 321                     ; 129 		break;	
 323                     ; 131 		case 6:
 323                     ; 132 		break;
 325                     ; 134 		case 7:
 325                     ; 135 		break;
 327                     ; 138 		case 8:  // BITONE 1000 - 2000 Hz
 327                     ; 139 		break;
 329                     ; 141 		case 9: // 01001 INTERMITTENT 490Hz 0.5s ON / 1s OFF GENERAL PURPOSE;
 329                     ; 142 		break;
 331                     ; 144 		case 10:  // SWEEP 2800 - 2000  Hz
 331                     ; 145 		break;
 333                     ; 147 		case 11:  // lineare 970 Hz	
 333                     ; 148 		break;
 335  0077               L17:
 336                     ; 150 }
 339  0077 81            	ret	
 340  0078               LC003:
 341  0078 b60d          	ld	a,_n
 342  007a 5f            	clrw	x
 343  007b 97            	ld	xl,a
 344  007c 58            	sllw	x
 345  007d 81            	ret	
 346  007e               LC004:
 347  007e 62            	div	x,a
 348  007f cd0000        	call	_TIM1_SetCompare4
 350                     ; 64 				cnt++;
 352  0082 be0b          	ldw	x,_cnt
 353  0084 5c            	incw	x
 354  0085 bf0b          	ldw	_cnt,x
 355                     ; 65 				if (cnt >= birthday_song[t])
 357  0087 5f            	clrw	x
 358  0088 b60e          	ld	a,_t
 359  008a 97            	ld	xl,a
 360  008b 58            	sllw	x
 361  008c 9093          	ldw	y,x
 362  008e 81            	ret	
 363  008f               LC005:
 364  008f 5f            	clrw	x
 365  0090 bf0b          	ldw	_cnt,x
 366                     ; 68 					n		=	n + 2;
 368  0092 3c0d          	inc	_n
 369  0094 3c0d          	inc	_n
 370                     ; 69 					t		=	t + 2;
 372  0096 3c0e          	inc	_t
 373                     ; 70 					songStep = 1;
 375  0098 5c            	incw	x
 376  0099 3c0e          	inc	_t
 377  009b bf0f          	ldw	_songStep,x
 378  009d 81            	ret	
 420                     ; 153 void song(uint16_t note[])
 420                     ; 154 {
 421                     .text:	section	.text,new
 422  0000               _song:
 424  0000 89            	pushw	x
 425       00000000      OFST:	set	0
 428                     ; 155 	switch (songStep)
 430  0001 be0f          	ldw	x,_songStep
 431  0003 2651          	jrne	L731
 434                     ; 157 		case 0:
 434                     ; 158 		if (note[n]  != MUTE)
 436  0005 ad51          	call	LC006
 437  0007 72fb01        	addw	x,(OFST+1,sp)
 438  000a e601          	ld	a,(1,x)
 439  000c fa            	or	a,(x)
 440  000d 2704          	jreq	L141
 441                     ; 160 			TIM1_SetAutoreload(note[n]);
 443  000f fe            	ldw	x,(x)
 444  0010 cd0000        	call	_TIM1_SetAutoreload
 446  0013               L141:
 447                     ; 162 		TIM1_SetCompare4(note[n]/duty);
 449  0013 ad43          	call	LC006
 450  0015 72fb01        	addw	x,(OFST+1,sp)
 451  0018 b600          	ld	a,_duty
 452  001a fe            	ldw	x,(x)
 453  001b 62            	div	x,a
 454  001c cd0000        	call	_TIM1_SetCompare4
 456                     ; 163 		cnt++;
 458  001f be0b          	ldw	x,_cnt
 459  0021 5c            	incw	x
 460  0022 bf0b          	ldw	_cnt,x
 461                     ; 164 		if (cnt >= note[t])
 463  0024 5f            	clrw	x
 464  0025 b60e          	ld	a,_t
 465  0027 97            	ld	xl,a
 466  0028 58            	sllw	x
 467  0029 72fb01        	addw	x,(OFST+1,sp)
 468  002c 9093          	ldw	y,x
 469  002e 90fe          	ldw	y,(y)
 470  0030 90b30b        	cpw	y,_cnt
 471  0033 220e          	jrugt	L341
 472                     ; 166 			cnt = 0;
 474  0035 5f            	clrw	x
 475  0036 bf0b          	ldw	_cnt,x
 476                     ; 167 			n		=	n + 2;
 478  0038 3c0d          	inc	_n
 479  003a 3c0d          	inc	_n
 480                     ; 168 			t		=	t + 2;
 482  003c 3c0e          	inc	_t
 483                     ; 169 			songStep = 1;
 485  003e 5c            	incw	x
 486  003f 3c0e          	inc	_t
 487  0041 bf0f          	ldw	_songStep,x
 488  0043               L341:
 489                     ; 171 		if (note[n] == END)
 491  0043 ad13          	call	LC006
 492  0045 72fb01        	addw	x,(OFST+1,sp)
 493  0048 9093          	ldw	y,x
 494  004a 90fe          	ldw	y,(y)
 495  004c 905a          	decw	y
 496  004e 2606          	jrne	L731
 497                     ; 173 			n = 0;
 499  0050 3f0d          	clr	_n
 500                     ; 174 			t = 1;
 502  0052 3501000e      	mov	_t,#1
 503  0056               L731:
 504                     ; 178 }
 507  0056 85            	popw	x
 508  0057 81            	ret	
 509  0058               LC006:
 510  0058 b60d          	ld	a,_n
 511  005a 5f            	clrw	x
 512  005b 97            	ld	xl,a
 513  005c 58            	sllw	x
 514  005d 81            	ret	
 551                     ; 179 void setFrequency( uint32_t f1)
 551                     ; 180 {
 552                     .text:	section	.text,new
 553  0000               _setFrequency:
 555  0000 5204          	subw	sp,#4
 556       00000004      OFST:	set	4
 559                     ; 181 	TIM1_SetAutoreload(f1);
 561  0002 1e09          	ldw	x,(OFST+5,sp)
 562  0004 cd0000        	call	_TIM1_SetAutoreload
 564                     ; 182 	TIM1_SetCompare4(f1/duty);
 566  0007 450003        	mov	c_lreg+3,_duty
 567  000a 3f02          	clr	c_lreg+2
 568  000c 3f01          	clr	c_lreg+1
 569  000e 3f00          	clr	c_lreg
 570  0010 96            	ldw	x,sp
 571  0011 5c            	incw	x
 572  0012 cd0000        	call	c_rtol
 574  0015 96            	ldw	x,sp
 575  0016 1c0007        	addw	x,#OFST+3
 576  0019 cd0000        	call	c_ltor
 578  001c 96            	ldw	x,sp
 579  001d 5c            	incw	x
 580  001e cd0000        	call	c_ludv
 582  0021 be02          	ldw	x,c_lreg+2
 583  0023 cd0000        	call	_TIM1_SetCompare4
 585                     ; 183 }
 588  0026 5b04          	addw	sp,#4
 589  0028 81            	ret	
 613                     ; 185 void pause(void)
 613                     ; 186 {
 614                     .text:	section	.text,new
 615  0000               _pause:
 619                     ; 187 	TIM1_SetCompare4(0);
 621  0000 5f            	clrw	x
 623                     ; 188 }
 626  0001 cc0000        	jp	_TIM1_SetCompare4
 781                     	xdef	_song
 782                     	xdef	_generalLee_song
 783                     	xdef	_birthday_song
 784                     	xdef	_BPMv
 785                     	xdef	_songStep
 786                     	xdef	_t
 787                     	xdef	_n
 788                     	xdef	_cnt
 789                     	xdef	_sweep
 790                     	xdef	_freq
 791                     	xdef	_sweepCnt
 792                     	xdef	_cct
 793                     	xdef	_pause
 794                     	xdef	_setFrequency
 795                     	xdef	_soundStone
 796                     	xdef	_caseCnt
 797                     	xdef	_duty
 798                     	xref	_TIM1_SetCompare4
 799                     	xref	_TIM1_SetAutoreload
 800                     	xref.b	c_lreg
 801                     	xref.b	c_x
 820                     	xref	c_ludv
 821                     	xref	c_rtol
 822                     	xref	c_ltor
 823                     	end

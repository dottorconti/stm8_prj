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
  43  0011               _birthday_song:
  44  0011 2a84          	dc.w	10884
  45  0013 0012          	dc.w	18
  46  0015 2a84          	dc.w	10884
  47  0017 0012          	dc.w	18
  48  0019 25e0          	dc.w	9696
  49  001b 0012          	dc.w	18
  50  001d 2a84          	dc.w	10884
  51  001f 0012          	dc.w	18
  52  0021 1fe3          	dc.w	8163
  53  0023 0012          	dc.w	18
  54  0025 21c8          	dc.w	8648
  55  0027 0012          	dc.w	18
  56  0029 2a84          	dc.w	10884
  57  002b 0012          	dc.w	18
  58  002d 2a84          	dc.w	10884
  59  002f 0012          	dc.w	18
  60  0031 25e0          	dc.w	9696
  61  0033 0012          	dc.w	18
  62  0035 2a84          	dc.w	10884
  63  0037 0012          	dc.w	18
  64  0039 1c68          	dc.w	7272
  65  003b 0012          	dc.w	18
  66  003d 1fe3          	dc.w	8163
  67  003f 0012          	dc.w	18
  68  0041 2a84          	dc.w	10884
  69  0043 0012          	dc.w	18
  70  0045 2a84          	dc.w	10884
  71  0047 0012          	dc.w	18
  72  0049 1542          	dc.w	5442
  73  004b 0012          	dc.w	18
  74  004d 194d          	dc.w	6477
  75  004f 0012          	dc.w	18
  76  0051 1fe3          	dc.w	8163
  77  0053 0012          	dc.w	18
  78  0055 21c8          	dc.w	8648
  79  0057 0012          	dc.w	18
  80  0059 25e0          	dc.w	9696
  81  005b 0012          	dc.w	18
  82  005d 17da          	dc.w	6106
  83  005f 0012          	dc.w	18
  84  0061 17da          	dc.w	6106
  85  0063 0012          	dc.w	18
  86  0065 194d          	dc.w	6477
  87  0067 0012          	dc.w	18
  88  0069 1fe3          	dc.w	8163
  89  006b 0012          	dc.w	18
  90  006d 1c68          	dc.w	7272
  91  006f 0012          	dc.w	18
  92  0071 1fe3          	dc.w	8163
  93  0073 0012          	dc.w	18
  94  0075 0000          	dc.w	0
  95  0077 0025          	dc.w	37
  96  0079 0001          	dc.w	1
  97  007b               _generalLee_song:
  98  007b 1fe3          	dc.w	8163
  99  007d 0012          	dc.w	18
 100  007f 25e0          	dc.w	9696
 101  0081 0012          	dc.w	18
 102  0083 2fb5          	dc.w	12213
 103  0085 0025          	dc.w	37
 104  0087 2fb5          	dc.w	12213
 105  0089 0025          	dc.w	37
 106  008b 2fb5          	dc.w	12213
 107  008d 0012          	dc.w	18
 108  008f 2a84          	dc.w	10884
 109  0091 0012          	dc.w	18
 110  0093 25e0          	dc.w	9696
 111  0095 0012          	dc.w	18
 112  0097 23d1          	dc.w	9169
 113  0099 0012          	dc.w	18
 114  009b 1fe3          	dc.w	8163
 115  009d 0025          	dc.w	37
 116  009f 1fe3          	dc.w	8163
 117  00a1 0025          	dc.w	37
 118  00a3 1fe3          	dc.w	8163
 119  00a5 0025          	dc.w	37
 120  00a7 25e0          	dc.w	9696
 121  00a9 0025          	dc.w	37
 122  00ab 0000          	dc.w	0
 123  00ad 00c8          	dc.w	200
 124  00af 0001          	dc.w	1
 173                     ; 44 void soundStone(uint8_t num)
 173                     ; 45 {
 175                     .text:	section	.text,new
 176  0000               _soundStone:
 180                     ; 46 switch (num)
 183                     ; 141 		case 11:  // lineare 970 Hz	
 183                     ; 142 		break;
 184  0000 4d            	tnz	a
 185  0001 2704          	jreq	L3
 186  0003 4a            	dec	a
 187  0004 2731          	jreq	L11
 189  0006 81            	ret	
 190  0007               L3:
 191                     ; 49 		case 0:
 191                     ; 50 			switch (songStep)
 193  0007 be0f          	ldw	x,_songStep
 195                     ; 77 				break;
 196  0009 2704          	jreq	L5
 197  000b 5a            	decw	x
 198  000c 2762          	jreq	L51
 200  000e 81            	ret	
 201  000f               L5:
 202                     ; 52 				case 0:
 202                     ; 53 				if (birthday_song[n]  != MUTE)
 204  000f ad67          	call	LC003
 205  0011 e612          	ld	a,(_birthday_song+1,x)
 206  0013 ea11          	or	a,(_birthday_song,x)
 207  0015 2705          	jreq	L77
 208                     ; 55 					TIM1_SetAutoreload(birthday_song[n]);
 210  0017 ee11          	ldw	x,(_birthday_song,x)
 211  0019 cd0000        	call	_TIM1_SetAutoreload
 213  001c               L77:
 214                     ; 57 				TIM1_SetCompare4(birthday_song[n]/duty);
 216  001c ad5a          	call	LC003
 217  001e b600          	ld	a,_duty
 218  0020 ee11          	ldw	x,(_birthday_song,x)
 219  0022 ad5a          	call	LC004
 220  0024 90ee11        	ldw	y,(_birthday_song,y)
 221  0027 90b30b        	cpw	y,_cnt
 222  002a 2202          	jrugt	L101
 223                     ; 61 					cnt = 0;
 225  002c ad61          	call	LC005
 226  002e               L101:
 227                     ; 66 				if (birthday_song[n] == END)
 229  002e ad48          	call	LC003
 230  0030 9093          	ldw	y,x
 231  0032 90ee11        	ldw	y,(_birthday_song,y)
 232                     ; 68 					n = 0;
 233                     ; 69 					t = 1;
 234  0035 202e          	jp	LC002
 235                     ; 74 				case 1:
 235                     ; 75 				TIM1_SetCompare4(MUTE);
 237                     ; 76 				songStep = 0;
 238                     ; 77 				break;
 240                     ; 79 		break;
 242  0037               L11:
 243                     ; 81 		case 1:
 243                     ; 82 			switch (songStep)
 245  0037 be0f          	ldw	x,_songStep
 247                     ; 109 				break;
 248  0039 2704          	jreq	L31
 249  003b 5a            	decw	x
 250  003c 2732          	jreq	L51
 252  003e 81            	ret	
 253  003f               L31:
 254                     ; 84 				case 0:
 254                     ; 85 				if (generalLee_song[n]  != MUTE)
 256  003f ad37          	call	LC003
 257  0041 e67c          	ld	a,(_generalLee_song+1,x)
 258  0043 ea7b          	or	a,(_generalLee_song,x)
 259  0045 2705          	jreq	L111
 260                     ; 87 					TIM1_SetAutoreload(generalLee_song[n]);
 262  0047 ee7b          	ldw	x,(_generalLee_song,x)
 263  0049 cd0000        	call	_TIM1_SetAutoreload
 265  004c               L111:
 266                     ; 89 				TIM1_SetCompare4(generalLee_song[n]/duty);
 268  004c ad2a          	call	LC003
 269  004e b600          	ld	a,_duty
 270  0050 ee7b          	ldw	x,(_generalLee_song,x)
 271  0052 ad2a          	call	LC004
 272  0054 90ee7b        	ldw	y,(_generalLee_song,y)
 273  0057 90b30b        	cpw	y,_cnt
 274  005a 2202          	jrugt	L311
 275                     ; 93 					cnt = 0;
 277  005c ad31          	call	LC005
 278  005e               L311:
 279                     ; 98 				if (generalLee_song[n] == END)
 281  005e ad18          	call	LC003
 282  0060 9093          	ldw	y,x
 283  0062 90ee7b        	ldw	y,(_generalLee_song,y)
 284                     ; 100 					n = 0;
 286                     ; 101 					t = 1;
 288  0065               LC002:
 289  0065 905a          	decw	y
 290  0067 260e          	jrne	L17
 292  0069 3f0d          	clr	_n
 294  006b 3501000e      	mov	_t,#1
 296  006f 81            	ret	
 297  0070               L51:
 298                     ; 106 				case 1:
 298                     ; 107 				TIM1_SetCompare4(MUTE);
 301                     ; 108 				songStep = 0;
 304  0070 5f            	clrw	x
 305  0071 cd0000        	call	_TIM1_SetCompare4
 307  0074 5f            	clrw	x
 308  0075 bf0f          	ldw	_songStep,x
 309                     ; 109 				break;
 311                     ; 111 		break;		
 313                     ; 113 		case 2:
 313                     ; 114 		break;	
 315                     ; 116 		case 3:
 315                     ; 117 		break;	
 317                     ; 119 		case 4:
 317                     ; 120 		break;		
 319                     ; 122 		case 5:
 319                     ; 123 		break;	
 321                     ; 125 		case 6:
 321                     ; 126 		break;
 323                     ; 128 		case 7:
 323                     ; 129 		break;
 325                     ; 132 		case 8:  // BITONE 1000 - 2000 Hz
 325                     ; 133 		break;
 327                     ; 135 		case 9: // 01001 INTERMITTENT 490Hz 0.5s ON / 1s OFF GENERAL PURPOSE;
 327                     ; 136 		break;
 329                     ; 138 		case 10:  // SWEEP 2800 - 2000  Hz
 329                     ; 139 		break;
 331                     ; 141 		case 11:  // lineare 970 Hz	
 331                     ; 142 		break;
 333  0077               L17:
 334                     ; 144 }
 337  0077 81            	ret	
 338  0078               LC003:
 339  0078 b60d          	ld	a,_n
 340  007a 5f            	clrw	x
 341  007b 97            	ld	xl,a
 342  007c 58            	sllw	x
 343  007d 81            	ret	
 344  007e               LC004:
 345  007e 62            	div	x,a
 346  007f cd0000        	call	_TIM1_SetCompare4
 348                     ; 58 				cnt++;
 350  0082 be0b          	ldw	x,_cnt
 351  0084 5c            	incw	x
 352  0085 bf0b          	ldw	_cnt,x
 353                     ; 59 				if (cnt >= birthday_song[t])
 355  0087 5f            	clrw	x
 356  0088 b60e          	ld	a,_t
 357  008a 97            	ld	xl,a
 358  008b 58            	sllw	x
 359  008c 9093          	ldw	y,x
 360  008e 81            	ret	
 361  008f               LC005:
 362  008f 5f            	clrw	x
 363  0090 bf0b          	ldw	_cnt,x
 364                     ; 62 					n		=	n + 2;
 366  0092 3c0d          	inc	_n
 367  0094 3c0d          	inc	_n
 368                     ; 63 					t		=	t + 2;
 370  0096 3c0e          	inc	_t
 371                     ; 64 					songStep = 1;
 373  0098 5c            	incw	x
 374  0099 3c0e          	inc	_t
 375  009b bf0f          	ldw	_songStep,x
 376  009d 81            	ret	
 413                     ; 148 void monofrequenza ( uint32_t f1)
 413                     ; 149 {
 414                     .text:	section	.text,new
 415  0000               _monofrequenza:
 417  0000 5204          	subw	sp,#4
 418       00000004      OFST:	set	4
 421                     ; 150 	TIM1_SetAutoreload(f1);
 423  0002 1e09          	ldw	x,(OFST+5,sp)
 424  0004 cd0000        	call	_TIM1_SetAutoreload
 426                     ; 151 	TIM1_SetCompare4(f1/duty);
 428  0007 450003        	mov	c_lreg+3,_duty
 429  000a 3f02          	clr	c_lreg+2
 430  000c 3f01          	clr	c_lreg+1
 431  000e 3f00          	clr	c_lreg
 432  0010 96            	ldw	x,sp
 433  0011 5c            	incw	x
 434  0012 cd0000        	call	c_rtol
 436  0015 96            	ldw	x,sp
 437  0016 1c0007        	addw	x,#OFST+3
 438  0019 cd0000        	call	c_ltor
 440  001c 96            	ldw	x,sp
 441  001d 5c            	incw	x
 442  001e cd0000        	call	c_ludv
 444  0021 be02          	ldw	x,c_lreg+2
 445  0023 cd0000        	call	_TIM1_SetCompare4
 447                     ; 152 }
 450  0026 5b04          	addw	sp,#4
 451  0028 81            	ret	
 475                     ; 154 void pausa(void)
 475                     ; 155 {
 476                     .text:	section	.text,new
 477  0000               _pausa:
 481                     ; 156 	TIM1_SetCompare4(0);
 483  0000 5f            	clrw	x
 485                     ; 157 }
 488  0001 cc0000        	jp	_TIM1_SetCompare4
 634                     	xdef	_generalLee_song
 635                     	xdef	_birthday_song
 636                     	xdef	_songStep
 637                     	xdef	_t
 638                     	xdef	_n
 639                     	xdef	_cnt
 640                     	xdef	_sweep
 641                     	xdef	_freq
 642                     	xdef	_sweepCnt
 643                     	xdef	_cct
 644                     	xdef	_pausa
 645                     	xdef	_monofrequenza
 646                     	xdef	_soundStone
 647                     	xdef	_caseCnt
 648                     	xdef	_duty
 649                     	xref	_TIM1_SetCompare4
 650                     	xref	_TIM1_SetAutoreload
 651                     	xref.b	c_lreg
 652                     	xref.b	c_x
 671                     	xref	c_ludv
 672                     	xref	c_rtol
 673                     	xref	c_ltor
 674                     	end

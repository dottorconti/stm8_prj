   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.10.2 - 02 Nov 2011
   3                     ; Generator (Limited) V4.3.7 - 29 Nov 2011
  18                     	switch	.data
  19  0000               _duty:
  20  0000 14            	dc.b	20
  21  0001               _cnt:
  22  0001 0000          	dc.w	0
  23  0003               _n:
  24  0003 00            	dc.b	0
  25  0004               _t:
  26  0004 01            	dc.b	1
  27  0005               _songStep:
  28  0005 0000          	dc.w	0
  29  0007               _ii:
  30  0007 00            	dc.b	0
  31  0008               _BPM:
  32  0008 0000          	dc.w	0
  33  000a               _QQ:
  34  000a 0000          	dc.w	0
  35  000c               _DQ:
  36  000c 0000          	dc.w	0
  37  000e               _UQ:
  38  000e 0000          	dc.w	0
  39  0010               _UO:
  40  0010 0000          	dc.w	0
  41  0012               _oldNum:
  42  0012 00            	dc.b	0
  43  0013               _firstTime:
  44  0013 0001          	dc.w	1
  45  0015               _generalLee_song:
  46  0015 1fe3          	dc.w	8163
  47  0017 0012          	dc.w	18
  48  0019 25e0          	dc.w	9696
  49  001b 0012          	dc.w	18
  50  001d 2fb5          	dc.w	12213
  51  001f 0025          	dc.w	37
  52  0021 2fb5          	dc.w	12213
  53  0023 0025          	dc.w	37
  54  0025 2fb5          	dc.w	12213
  55  0027 0012          	dc.w	18
  56  0029 2a84          	dc.w	10884
  57  002b 0012          	dc.w	18
  58  002d 25e0          	dc.w	9696
  59  002f 0012          	dc.w	18
  60  0031 23d1          	dc.w	9169
  61  0033 0012          	dc.w	18
  62  0035 1fe3          	dc.w	8163
  63  0037 0025          	dc.w	37
  64  0039 1fe3          	dc.w	8163
  65  003b 0025          	dc.w	37
  66  003d 1fe3          	dc.w	8163
  67  003f 0025          	dc.w	37
  68  0041 25e0          	dc.w	9696
  69  0043 0025          	dc.w	37
  70  0045 0000          	dc.w	0
  71  0047 00c8          	dc.w	200
  72  0049 0001          	dc.w	1
  73  004b               _vintage_song:
  74  004b 0789          	dc.w	1929
  75  004d 0e20          	dc.w	3616
  76  004f 094b          	dc.w	2379
  77  0051 0c7d          	dc.w	3197
  78  0053 0bc8          	dc.w	3016
  79  0055 0f7d          	dc.w	3965
  80  0057 17db          	dc.w	6107
  81  0059 11f6          	dc.w	4598
  82  005b 089a          	dc.w	2202
  83  005d 10fc          	dc.w	4348
  84  005f 07b5          	dc.w	1973
  85  0061 0bf6          	dc.w	3062
  86  0063 087b          	dc.w	2171
  87  0065 0a32          	dc.w	2610
  88  0067 0b62          	dc.w	2914
  89  0069 1001          	dc.w	4097
  90  006b 076a          	dc.w	1898
  91  006d 090d          	dc.w	2317
  92  006f 1083          	dc.w	4227
  93  0071 0cf8          	dc.w	3320
  94  0073 118e          	dc.w	4494
  95  0075 085e          	dc.w	2142
  96  0077 0956          	dc.w	2390
 139                     ; 74 void soundStone(uint8_t num)
 139                     ; 75 {
 141                     .text:	section	.text,new
 142  0000               _soundStone:
 144  0000 88            	push	a
 145       00000000      OFST:	set	0
 148                     ; 76 	if (num != oldNum)
 150  0001 c10012        	cp	a,_oldNum
 151  0004 2706          	jreq	L34
 152                     ; 78 		firstTime=1;
 154  0006 ae0001        	ldw	x,#1
 155  0009 cf0013        	ldw	_firstTime,x
 156  000c               L34:
 157                     ; 80 	oldNum=num;
 159  000c 7b01          	ld	a,(OFST+1,sp)
 160  000e c70012        	ld	_oldNum,a
 161                     ; 82 	switch (num)
 163  0011 7b01          	ld	a,(OFST+1,sp)
 165                     ; 108 		default:
 165                     ; 109 		break;
 166  0013 4d            	tnz	a
 167  0014 270a          	jreq	L3
 168  0016 a008          	sub	a,#8
 169  0018 270f          	jreq	L11
 170  001a a02a          	sub	a,#42
 171  001c 2712          	jreq	L51
 172  001e 2013          	jra	L74
 173  0020               L3:
 174                     ; 85 		case 0:
 174                     ; 86 			hornGeneralLee();
 176  0020 cd0000        	call	_hornGeneralLee
 178                     ; 87 		break;
 180  0023 200e          	jra	L74
 181  0025               L5:
 182                     ; 89 		case 1:
 182                     ; 90 		break;		
 184  0025 200c          	jra	L74
 185  0027               L7:
 186                     ; 92 		case 2:
 186                     ; 93 		break;
 188  0027 200a          	jra	L74
 189  0029               L11:
 190                     ; 96 		case 8:
 190                     ; 97 		//	birtdaySong();
 190                     ; 98 		vintageHorn();
 192  0029 cd0000        	call	_vintageHorn
 194                     ; 99 		break;
 196  002c 2005          	jra	L74
 197  002e               L31:
 198                     ; 101 		case 12:
 198                     ; 102 		break;
 200  002e 2003          	jra	L74
 201  0030               L51:
 202                     ; 104 		case 50:
 202                     ; 105 			pause();
 204  0030 cd0000        	call	_pause
 206                     ; 106 		break;
 208  0033               L71:
 209                     ; 108 		default:
 209                     ; 109 		break;
 211  0033               L74:
 212                     ; 111 }
 215  0033 84            	pop	a
 216  0034 81            	ret
 242                     ; 148 void vintageHorn(void)
 242                     ; 149 {
 243                     .text:	section	.text,new
 244  0000               _vintageHorn:
 246  0000 5204          	subw	sp,#4
 247       00000004      OFST:	set	4
 250                     ; 150 	TIM1_SetAutoreload(13008);
 252  0002 ae32d0        	ldw	x,#13008
 253  0005 cd0000        	call	_TIM1_SetAutoreload
 255                     ; 151 	TIM1_SetCompare4(130008/duty);
 257  0008 c60000        	ld	a,_duty
 258  000b b703          	ld	c_lreg+3,a
 259  000d 3f02          	clr	c_lreg+2
 260  000f 3f01          	clr	c_lreg+1
 261  0011 3f00          	clr	c_lreg
 262  0013 96            	ldw	x,sp
 263  0014 1c0001        	addw	x,#OFST-3
 264  0017 cd0000        	call	c_rtol
 266  001a aefbd8        	ldw	x,#64472
 267  001d bf02          	ldw	c_lreg+2,x
 268  001f ae0001        	ldw	x,#1
 269  0022 bf00          	ldw	c_lreg,x
 270  0024 96            	ldw	x,sp
 271  0025 1c0001        	addw	x,#OFST-3
 272  0028 cd0000        	call	c_ldiv
 274  002b be02          	ldw	x,c_lreg+2
 275  002d cd0000        	call	_TIM1_SetCompare4
 277                     ; 153 }
 280  0030 5b04          	addw	sp,#4
 281  0032 81            	ret
 312                     ; 155 void hornGeneralLee(void)
 312                     ; 156 {
 313                     .text:	section	.text,new
 314  0000               _hornGeneralLee:
 318                     ; 157 	switch (songStep)
 320  0000 ce0005        	ldw	x,_songStep
 322                     ; 184 		break;
 323  0003 5d            	tnzw	x
 324  0004 2709          	jreq	L16
 325  0006 5a            	decw	x
 326  0007 2603cc008a    	jreq	L36
 327  000c cc0092        	jra	L77
 328  000f               L16:
 329                     ; 159 		case 0:
 329                     ; 160 		if (generalLee_song[n]  != MUTE)
 331  000f c60003        	ld	a,_n
 332  0012 5f            	clrw	x
 333  0013 97            	ld	xl,a
 334  0014 58            	sllw	x
 335  0015 d60016        	ld	a,(_generalLee_song+1,x)
 336  0018 da0015        	or	a,(_generalLee_song,x)
 337  001b 270c          	jreq	L101
 338                     ; 162 			TIM1_SetAutoreload(generalLee_song[n]);
 340  001d c60003        	ld	a,_n
 341  0020 5f            	clrw	x
 342  0021 97            	ld	xl,a
 343  0022 58            	sllw	x
 344  0023 de0015        	ldw	x,(_generalLee_song,x)
 345  0026 cd0000        	call	_TIM1_SetAutoreload
 347  0029               L101:
 348                     ; 164 		TIM1_SetCompare4(generalLee_song[n]/duty);
 350  0029 c60003        	ld	a,_n
 351  002c 5f            	clrw	x
 352  002d 97            	ld	xl,a
 353  002e 58            	sllw	x
 354  002f de0015        	ldw	x,(_generalLee_song,x)
 355  0032 c60000        	ld	a,_duty
 356  0035 62            	div	x,a
 357  0036 cd0000        	call	_TIM1_SetCompare4
 359                     ; 165 		cnt++;
 361  0039 ce0001        	ldw	x,_cnt
 362  003c 1c0001        	addw	x,#1
 363  003f cf0001        	ldw	_cnt,x
 364                     ; 166 		if (cnt >= generalLee_song[t])
 366  0042 c60004        	ld	a,_t
 367  0045 5f            	clrw	x
 368  0046 97            	ld	xl,a
 369  0047 58            	sllw	x
 370  0048 9093          	ldw	y,x
 371  004a 90de0015      	ldw	y,(_generalLee_song,y)
 372  004e 90c30001      	cpw	y,_cnt
 373  0052 221a          	jrugt	L301
 374                     ; 168 			cnt = 0;
 376  0054 5f            	clrw	x
 377  0055 cf0001        	ldw	_cnt,x
 378                     ; 169 			n		=	n + 2;
 380  0058 725c0003      	inc	_n
 381  005c 725c0003      	inc	_n
 382                     ; 170 			t		=	t + 2;
 384  0060 725c0004      	inc	_t
 385  0064 725c0004      	inc	_t
 386                     ; 171 			songStep = 1;
 388  0068 ae0001        	ldw	x,#1
 389  006b cf0005        	ldw	_songStep,x
 390  006e               L301:
 391                     ; 173 		if (generalLee_song[n] == END)
 393  006e c60003        	ld	a,_n
 394  0071 5f            	clrw	x
 395  0072 97            	ld	xl,a
 396  0073 58            	sllw	x
 397  0074 9093          	ldw	y,x
 398  0076 90de0015      	ldw	y,(_generalLee_song,y)
 399  007a 90a30001      	cpw	y,#1
 400  007e 2612          	jrne	L77
 401                     ; 175 			n = 0;
 403  0080 725f0003      	clr	_n
 404                     ; 176 			t = 1;
 406  0084 35010004      	mov	_t,#1
 407  0088 2008          	jra	L77
 408  008a               L36:
 409                     ; 181 		case 1:
 409                     ; 182 		TIM1_SetCompare4(MUTE);
 411  008a 5f            	clrw	x
 412  008b cd0000        	call	_TIM1_SetCompare4
 414                     ; 183 		songStep = 0;
 416  008e 5f            	clrw	x
 417  008f cf0005        	ldw	_songStep,x
 418                     ; 184 		break;
 420  0092               L77:
 421                     ; 186 }
 424  0092 81            	ret
 459                     ; 188 void setFrequency(uint32_t f1)
 459                     ; 189 {
 460                     .text:	section	.text,new
 461  0000               _setFrequency:
 463  0000 5204          	subw	sp,#4
 464       00000004      OFST:	set	4
 467                     ; 190 	TIM1_SetAutoreload(f1);
 469  0002 1e09          	ldw	x,(OFST+5,sp)
 470  0004 cd0000        	call	_TIM1_SetAutoreload
 472                     ; 191 	TIM1_SetCompare4(f1/duty);
 474  0007 c60000        	ld	a,_duty
 475  000a b703          	ld	c_lreg+3,a
 476  000c 3f02          	clr	c_lreg+2
 477  000e 3f01          	clr	c_lreg+1
 478  0010 3f00          	clr	c_lreg
 479  0012 96            	ldw	x,sp
 480  0013 1c0001        	addw	x,#OFST-3
 481  0016 cd0000        	call	c_rtol
 483  0019 96            	ldw	x,sp
 484  001a 1c0007        	addw	x,#OFST+3
 485  001d cd0000        	call	c_ltor
 487  0020 96            	ldw	x,sp
 488  0021 1c0001        	addw	x,#OFST-3
 489  0024 cd0000        	call	c_ludv
 491  0027 be02          	ldw	x,c_lreg+2
 492  0029 cd0000        	call	_TIM1_SetCompare4
 494                     ; 192 }
 497  002c 5b04          	addw	sp,#4
 498  002e 81            	ret
 522                     ; 194 void pause(void)
 522                     ; 195 {
 523                     .text:	section	.text,new
 524  0000               _pause:
 528                     ; 196 	TIM1_SetCompare4(0);
 530  0000 5f            	clrw	x
 531  0001 cd0000        	call	_TIM1_SetCompare4
 533                     ; 197 }
 536  0004 81            	ret
 688                     	xdef	_vintage_song
 689                     	xdef	_generalLee_song
 690                     	xdef	_firstTime
 691                     	xdef	_oldNum
 692                     	xdef	_UO
 693                     	xdef	_UQ
 694                     	xdef	_DQ
 695                     	xdef	_QQ
 696                     	xdef	_BPM
 697                     	xdef	_ii
 698                     	xdef	_songStep
 699                     	xdef	_t
 700                     	xdef	_n
 701                     	xdef	_cnt
 702                     	xdef	_vintageHorn
 703                     	xdef	_hornGeneralLee
 704                     	xdef	_pause
 705                     	xdef	_setFrequency
 706                     	xdef	_soundStone
 707                     	xdef	_duty
 708                     	xref	_TIM1_SetCompare4
 709                     	xref	_TIM1_SetAutoreload
 710                     	xref.b	c_lreg
 711                     	xref.b	c_x
 730                     	xref	c_ludv
 731                     	xref	c_ltor
 732                     	xref	c_ldiv
 733                     	xref	c_rtol
 734                     	end

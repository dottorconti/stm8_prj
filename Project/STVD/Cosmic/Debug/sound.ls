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
  45  0015               _pressedHazzardFlag:
  46  0015 0000          	dc.w	0
  47  0017               _generalLee_song:
  48  0017 1fe3          	dc.w	8163
  49  0019 0012          	dc.w	18
  50  001b 25e0          	dc.w	9696
  51  001d 0012          	dc.w	18
  52  001f 2fb5          	dc.w	12213
  53  0021 0025          	dc.w	37
  54  0023 2fb5          	dc.w	12213
  55  0025 0025          	dc.w	37
  56  0027 2fb5          	dc.w	12213
  57  0029 0012          	dc.w	18
  58  002b 2a84          	dc.w	10884
  59  002d 0012          	dc.w	18
  60  002f 25e0          	dc.w	9696
  61  0031 0012          	dc.w	18
  62  0033 23d1          	dc.w	9169
  63  0035 0012          	dc.w	18
  64  0037 1fe3          	dc.w	8163
  65  0039 0025          	dc.w	37
  66  003b 1fe3          	dc.w	8163
  67  003d 0025          	dc.w	37
  68  003f 1fe3          	dc.w	8163
  69  0041 0025          	dc.w	37
  70  0043 25e0          	dc.w	9696
  71  0045 0025          	dc.w	37
  72  0047 0000          	dc.w	0
  73  0049 00c8          	dc.w	200
  74  004b 0001          	dc.w	1
 117                     ; 68 void soundStone(uint8_t num)
 117                     ; 69 {
 119                     .text:	section	.text,new
 120  0000               _soundStone:
 122  0000 88            	push	a
 123       00000000      OFST:	set	0
 126                     ; 70 	if (num != oldNum)
 128  0001 c10012        	cp	a,_oldNum
 129  0004 2706          	jreq	L34
 130                     ; 72 		firstTime=1;
 132  0006 ae0001        	ldw	x,#1
 133  0009 cf0013        	ldw	_firstTime,x
 134  000c               L34:
 135                     ; 74 	oldNum=num;
 137  000c 7b01          	ld	a,(OFST+1,sp)
 138  000e c70012        	ld	_oldNum,a
 139                     ; 76 	switch (num)
 141  0011 7b01          	ld	a,(OFST+1,sp)
 143                     ; 102 		default:
 143                     ; 103 		break;
 144  0013 4d            	tnz	a
 145  0014 270a          	jreq	L3
 146  0016 a008          	sub	a,#8
 147  0018 270f          	jreq	L11
 148  001a a02a          	sub	a,#42
 149  001c 2712          	jreq	L51
 150  001e 2013          	jra	L74
 151  0020               L3:
 152                     ; 79 		case 0:
 152                     ; 80 			hornGeneralLee();
 154  0020 cd0000        	call	_hornGeneralLee
 156                     ; 81 		break;
 158  0023 200e          	jra	L74
 159  0025               L5:
 160                     ; 83 		case 1:
 160                     ; 84 		break;		
 162  0025 200c          	jra	L74
 163  0027               L7:
 164                     ; 86 		case 2:
 164                     ; 87 		break;
 166  0027 200a          	jra	L74
 167  0029               L11:
 168                     ; 90 		case 8:
 168                     ; 91 		//	birtdaySong();
 168                     ; 92 		vintageHorn();
 170  0029 cd0000        	call	_vintageHorn
 172                     ; 93 		break;
 174  002c 2005          	jra	L74
 175  002e               L31:
 176                     ; 95 		case 12:
 176                     ; 96 		break;
 178  002e 2003          	jra	L74
 179  0030               L51:
 180                     ; 98 		case 50:
 180                     ; 99 			pause();
 182  0030 cd0000        	call	_pause
 184                     ; 100 		break;
 186  0033               L71:
 187                     ; 102 		default:
 187                     ; 103 		break;
 189  0033               L74:
 190                     ; 105 }
 193  0033 84            	pop	a
 194  0034 81            	ret
 220                     ; 142 void vintageHorn(void)
 220                     ; 143 {
 221                     .text:	section	.text,new
 222  0000               _vintageHorn:
 224  0000 5204          	subw	sp,#4
 225       00000004      OFST:	set	4
 228                     ; 144 	TIM1_SetAutoreload(13008);
 230  0002 ae32d0        	ldw	x,#13008
 231  0005 cd0000        	call	_TIM1_SetAutoreload
 233                     ; 145 	TIM1_SetCompare4(130008/duty);
 235  0008 c60000        	ld	a,_duty
 236  000b b703          	ld	c_lreg+3,a
 237  000d 3f02          	clr	c_lreg+2
 238  000f 3f01          	clr	c_lreg+1
 239  0011 3f00          	clr	c_lreg
 240  0013 96            	ldw	x,sp
 241  0014 1c0001        	addw	x,#OFST-3
 242  0017 cd0000        	call	c_rtol
 244  001a aefbd8        	ldw	x,#64472
 245  001d bf02          	ldw	c_lreg+2,x
 246  001f ae0001        	ldw	x,#1
 247  0022 bf00          	ldw	c_lreg,x
 248  0024 96            	ldw	x,sp
 249  0025 1c0001        	addw	x,#OFST-3
 250  0028 cd0000        	call	c_ldiv
 252  002b be02          	ldw	x,c_lreg+2
 253  002d cd0000        	call	_TIM1_SetCompare4
 255                     ; 146 }
 258  0030 5b04          	addw	sp,#4
 259  0032 81            	ret
 291                     ; 148 void hornGeneralLee(void)
 291                     ; 149 {
 292                     .text:	section	.text,new
 293  0000               _hornGeneralLee:
 297                     ; 150 	switch (songStep)
 299  0000 ce0005        	ldw	x,_songStep
 301                     ; 178 		break;
 302  0003 5d            	tnzw	x
 303  0004 2709          	jreq	L16
 304  0006 5a            	decw	x
 305  0007 2603cc008e    	jreq	L36
 306  000c cc0096        	jra	L77
 307  000f               L16:
 308                     ; 152 		case 0:
 308                     ; 153 		if (generalLee_song[n]  != MUTE)
 310  000f c60003        	ld	a,_n
 311  0012 5f            	clrw	x
 312  0013 97            	ld	xl,a
 313  0014 58            	sllw	x
 314  0015 d60018        	ld	a,(_generalLee_song+1,x)
 315  0018 da0017        	or	a,(_generalLee_song,x)
 316  001b 270c          	jreq	L101
 317                     ; 155 			TIM1_SetAutoreload(generalLee_song[n]);
 319  001d c60003        	ld	a,_n
 320  0020 5f            	clrw	x
 321  0021 97            	ld	xl,a
 322  0022 58            	sllw	x
 323  0023 de0017        	ldw	x,(_generalLee_song,x)
 324  0026 cd0000        	call	_TIM1_SetAutoreload
 326  0029               L101:
 327                     ; 157 		TIM1_SetCompare4(generalLee_song[n]/duty);
 329  0029 c60003        	ld	a,_n
 330  002c 5f            	clrw	x
 331  002d 97            	ld	xl,a
 332  002e 58            	sllw	x
 333  002f de0017        	ldw	x,(_generalLee_song,x)
 334  0032 c60000        	ld	a,_duty
 335  0035 62            	div	x,a
 336  0036 cd0000        	call	_TIM1_SetCompare4
 338                     ; 158 		cnt++;
 340  0039 ce0001        	ldw	x,_cnt
 341  003c 1c0001        	addw	x,#1
 342  003f cf0001        	ldw	_cnt,x
 343                     ; 159 		if (cnt >= generalLee_song[t])
 345  0042 c60004        	ld	a,_t
 346  0045 5f            	clrw	x
 347  0046 97            	ld	xl,a
 348  0047 58            	sllw	x
 349  0048 9093          	ldw	y,x
 350  004a 90de0017      	ldw	y,(_generalLee_song,y)
 351  004e 90c30001      	cpw	y,_cnt
 352  0052 221a          	jrugt	L301
 353                     ; 161 			cnt = 0;
 355  0054 5f            	clrw	x
 356  0055 cf0001        	ldw	_cnt,x
 357                     ; 162 			n		=	n + 2;
 359  0058 725c0003      	inc	_n
 360  005c 725c0003      	inc	_n
 361                     ; 163 			t		=	t + 2;
 363  0060 725c0004      	inc	_t
 364  0064 725c0004      	inc	_t
 365                     ; 164 			songStep = 1;
 367  0068 ae0001        	ldw	x,#1
 368  006b cf0005        	ldw	_songStep,x
 369  006e               L301:
 370                     ; 166 		if (generalLee_song[n] == END)
 372  006e c60003        	ld	a,_n
 373  0071 5f            	clrw	x
 374  0072 97            	ld	xl,a
 375  0073 58            	sllw	x
 376  0074 9093          	ldw	y,x
 377  0076 90de0017      	ldw	y,(_generalLee_song,y)
 378  007a 90a30001      	cpw	y,#1
 379  007e 2616          	jrne	L77
 380                     ; 168 			n = 0;
 382  0080 725f0003      	clr	_n
 383                     ; 169 			t = 1;
 385  0084 35010004      	mov	_t,#1
 386                     ; 170 			pressedHazzardFlag = 0;
 388  0088 5f            	clrw	x
 389  0089 cf0015        	ldw	_pressedHazzardFlag,x
 390  008c 2008          	jra	L77
 391  008e               L36:
 392                     ; 175 		case 1:
 392                     ; 176 		TIM1_SetCompare4(MUTE);
 394  008e 5f            	clrw	x
 395  008f cd0000        	call	_TIM1_SetCompare4
 397                     ; 177 		songStep = 0;
 399  0092 5f            	clrw	x
 400  0093 cf0005        	ldw	_songStep,x
 401                     ; 178 		break;
 403  0096               L77:
 404                     ; 180 }
 407  0096 81            	ret
 442                     ; 182 void setFrequency(uint32_t f1)
 442                     ; 183 {
 443                     .text:	section	.text,new
 444  0000               _setFrequency:
 446  0000 5204          	subw	sp,#4
 447       00000004      OFST:	set	4
 450                     ; 184 	TIM1_SetAutoreload(f1);
 452  0002 1e09          	ldw	x,(OFST+5,sp)
 453  0004 cd0000        	call	_TIM1_SetAutoreload
 455                     ; 185 	TIM1_SetCompare4(f1/duty);
 457  0007 c60000        	ld	a,_duty
 458  000a b703          	ld	c_lreg+3,a
 459  000c 3f02          	clr	c_lreg+2
 460  000e 3f01          	clr	c_lreg+1
 461  0010 3f00          	clr	c_lreg
 462  0012 96            	ldw	x,sp
 463  0013 1c0001        	addw	x,#OFST-3
 464  0016 cd0000        	call	c_rtol
 466  0019 96            	ldw	x,sp
 467  001a 1c0007        	addw	x,#OFST+3
 468  001d cd0000        	call	c_ltor
 470  0020 96            	ldw	x,sp
 471  0021 1c0001        	addw	x,#OFST-3
 472  0024 cd0000        	call	c_ludv
 474  0027 be02          	ldw	x,c_lreg+2
 475  0029 cd0000        	call	_TIM1_SetCompare4
 477                     ; 186 }
 480  002c 5b04          	addw	sp,#4
 481  002e 81            	ret
 505                     ; 188 void pause(void)
 505                     ; 189 {
 506                     .text:	section	.text,new
 507  0000               _pause:
 511                     ; 190 	TIM1_SetCompare4(0);
 513  0000 5f            	clrw	x
 514  0001 cd0000        	call	_TIM1_SetCompare4
 516                     ; 191 }
 519  0004 81            	ret
 671                     	xdef	_generalLee_song
 672                     	xdef	_firstTime
 673                     	xdef	_oldNum
 674                     	xdef	_UO
 675                     	xdef	_UQ
 676                     	xdef	_DQ
 677                     	xdef	_QQ
 678                     	xdef	_BPM
 679                     	xdef	_ii
 680                     	xdef	_songStep
 681                     	xdef	_t
 682                     	xdef	_n
 683                     	xdef	_cnt
 684                     	xdef	_vintageHorn
 685                     	xdef	_hornGeneralLee
 686                     	xdef	_pause
 687                     	xdef	_setFrequency
 688                     	xdef	_soundStone
 689                     	xdef	_pressedHazzardFlag
 690                     	xdef	_duty
 691                     	xref	_TIM1_SetCompare4
 692                     	xref	_TIM1_SetAutoreload
 693                     	xref.b	c_lreg
 694                     	xref.b	c_x
 713                     	xref	c_ludv
 714                     	xref	c_ltor
 715                     	xref	c_ldiv
 716                     	xref	c_rtol
 717                     	end

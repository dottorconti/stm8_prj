   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.10.2 - 02 Nov 2011
   3                     ; Generator (Limited) V4.3.7 - 29 Nov 2011
  17                     	switch	.data
  18  0000               _duty:
  19  0000 28            	dc.b	40
  20  0001               _cnt:
  21  0001 0000          	dc.w	0
  22  0003               _n:
  23  0003 00            	dc.b	0
  24  0004               _t:
  25  0004 01            	dc.b	1
  26  0005               _songStep:
  27  0005 0000          	dc.w	0
  28  0007               _birthday_song:
  29  0007 2a84          	dc.w	10884
  30  0009 0012          	dc.w	18
  31  000b 2a84          	dc.w	10884
  32  000d 0012          	dc.w	18
  33  000f 25e0          	dc.w	9696
  34  0011 0012          	dc.w	18
  35  0013 2a84          	dc.w	10884
  36  0015 0012          	dc.w	18
  37  0017 1fe3          	dc.w	8163
  38  0019 0012          	dc.w	18
  39  001b 21c8          	dc.w	8648
  40  001d 0012          	dc.w	18
  41  001f 2a84          	dc.w	10884
  42  0021 0012          	dc.w	18
  43  0023 2a84          	dc.w	10884
  44  0025 0012          	dc.w	18
  45  0027 25e0          	dc.w	9696
  46  0029 0012          	dc.w	18
  47  002b 2a84          	dc.w	10884
  48  002d 0012          	dc.w	18
  49  002f 1c68          	dc.w	7272
  50  0031 0012          	dc.w	18
  51  0033 1fe3          	dc.w	8163
  52  0035 0012          	dc.w	18
  53  0037 2a84          	dc.w	10884
  54  0039 0012          	dc.w	18
  55  003b 2a84          	dc.w	10884
  56  003d 0012          	dc.w	18
  57  003f 1542          	dc.w	5442
  58  0041 0012          	dc.w	18
  59  0043 194d          	dc.w	6477
  60  0045 0012          	dc.w	18
  61  0047 1fe3          	dc.w	8163
  62  0049 0012          	dc.w	18
  63  004b 21c8          	dc.w	8648
  64  004d 0012          	dc.w	18
  65  004f 25e0          	dc.w	9696
  66  0051 0012          	dc.w	18
  67  0053 17da          	dc.w	6106
  68  0055 0012          	dc.w	18
  69  0057 17da          	dc.w	6106
  70  0059 0012          	dc.w	18
  71  005b 194d          	dc.w	6477
  72  005d 0012          	dc.w	18
  73  005f 1fe3          	dc.w	8163
  74  0061 0012          	dc.w	18
  75  0063 1c68          	dc.w	7272
  76  0065 0012          	dc.w	18
  77  0067 1fe3          	dc.w	8163
  78  0069 0012          	dc.w	18
  79  006b 0000          	dc.w	0
  80  006d 0025          	dc.w	37
  81  006f 0001          	dc.w	1
  82  0071               _generalLee_song:
  83  0071 1fe3          	dc.w	8163
  84  0073 0012          	dc.w	18
  85  0075 25e0          	dc.w	9696
  86  0077 0012          	dc.w	18
  87  0079 2fb5          	dc.w	12213
  88  007b 0025          	dc.w	37
  89  007d 2fb5          	dc.w	12213
  90  007f 0025          	dc.w	37
  91  0081 2fb5          	dc.w	12213
  92  0083 0012          	dc.w	18
  93  0085 2a84          	dc.w	10884
  94  0087 0012          	dc.w	18
  95  0089 25e0          	dc.w	9696
  96  008b 0012          	dc.w	18
  97  008d 23d1          	dc.w	9169
  98  008f 0012          	dc.w	18
  99  0091 1fe3          	dc.w	8163
 100  0093 0025          	dc.w	37
 101  0095 1fe3          	dc.w	8163
 102  0097 0025          	dc.w	37
 103  0099 1fe3          	dc.w	8163
 104  009b 0025          	dc.w	37
 105  009d 25e0          	dc.w	9696
 106  009f 0025          	dc.w	37
 107  00a1 0000          	dc.w	0
 108  00a3 00c8          	dc.w	200
 109  00a5 0001          	dc.w	1
 110                     ; 33 void soundStone(uint8_t num)
 110                     ; 34 {
 111                     	scross	off
 112                     .text:	section	.text,new
 113  0000               _soundStone:
 115                     ; 35 switch (num)
 117                     ; 55 		default:
 117                     ; 56 		break;
 118  0000 4d            	tnz	a
 119  0001 2709          	jreq	L3
 120  0003 4a            	dec	a
 121  0004 270b          	jreq	L5
 122  0006 a009          	sub	a,#9
 123  0008 270e          	jreq	L11
 124  000a 200f          	jra	L71
 125  000c               L3:
 126                     ; 38 		case 0:
 126                     ; 39 			birtdaySong();
 127  000c cd0000        	call	_birtdaySong
 129                     ; 40 		break;
 130  000f 200a          	jra	L71
 131  0011               L5:
 132                     ; 42 		case 1:
 132                     ; 43 			hornGeneralLee();
 133  0011 cd0000        	call	_hornGeneralLee
 135                     ; 44 		break;		
 136  0014 2005          	jra	L71
 137  0016               L7:
 138                     ; 46 		case 2:
 138                     ; 47 		
 138                     ; 48 	//		song(&generalLee_song[]);
 138                     ; 49 		break;
 139  0016 2003          	jra	L71
 140  0018               L11:
 141                     ; 51 		case 10:
 141                     ; 52 			pause();
 142  0018 cd0000        	call	_pause
 144                     ; 53 		break;	
 145  001b               L31:
 146                     ; 55 		default:
 146                     ; 56 		break;
 147  001b               L71:
 148                     ; 58 }
 149  001b 81            	ret
 151                     ; 62 void birtdaySong(void)
 151                     ; 63 {
 152                     .text:	section	.text,new
 153  0000               _birtdaySong:
 155                     ; 64 	switch (songStep)
 156  0000 ce0005        	ldw	x,_songStep
 158                     ; 91 		break;
 159  0003 5d            	tnzw	x
 160  0004 2709          	jreq	L12
 161  0006 5a            	decw	x
 162  0007 2603cc008a    	jreq	L32
 163  000c cc0092        	jra	L72
 164  000f               L12:
 165                     ; 66 		case 0:
 165                     ; 67 		if (birthday_song[n]  != MUTE)
 166  000f c60003        	ld	a,_n
 167  0012 5f            	clrw	x
 168  0013 97            	ld	xl,a
 169  0014 58            	sllw	x
 170  0015 d60008        	ld	a,(_birthday_song+1,x)
 171  0018 da0007        	or	a,(_birthday_song,x)
 172  001b 270c          	jreq	L13
 173                     ; 69 			TIM1_SetAutoreload(birthday_song[n]);
 174  001d c60003        	ld	a,_n
 175  0020 5f            	clrw	x
 176  0021 97            	ld	xl,a
 177  0022 58            	sllw	x
 178  0023 de0007        	ldw	x,(_birthday_song,x)
 179  0026 cd0000        	call	_TIM1_SetAutoreload
 181  0029               L13:
 182                     ; 71 		TIM1_SetCompare4(birthday_song[n]/duty);
 183  0029 c60003        	ld	a,_n
 184  002c 5f            	clrw	x
 185  002d 97            	ld	xl,a
 186  002e 58            	sllw	x
 187  002f de0007        	ldw	x,(_birthday_song,x)
 188  0032 c60000        	ld	a,_duty
 189  0035 62            	div	x,a
 190  0036 cd0000        	call	_TIM1_SetCompare4
 192                     ; 72 		cnt++;
 193  0039 ce0001        	ldw	x,_cnt
 194  003c 1c0001        	addw	x,#1
 195  003f cf0001        	ldw	_cnt,x
 196                     ; 73 		if (cnt >= birthday_song[t])
 197  0042 c60004        	ld	a,_t
 198  0045 5f            	clrw	x
 199  0046 97            	ld	xl,a
 200  0047 58            	sllw	x
 201  0048 9093          	ldw	y,x
 202  004a 90de0007      	ldw	y,(_birthday_song,y)
 203  004e 90c30001      	cpw	y,_cnt
 204  0052 221a          	jrugt	L33
 205                     ; 75 			cnt = 0;
 206  0054 5f            	clrw	x
 207  0055 cf0001        	ldw	_cnt,x
 208                     ; 76 			n		=	n + 2;
 209  0058 725c0003      	inc	_n
 210  005c 725c0003      	inc	_n
 211                     ; 77 			t		=	t + 2;
 212  0060 725c0004      	inc	_t
 213  0064 725c0004      	inc	_t
 214                     ; 78 			songStep = 1;
 215  0068 ae0001        	ldw	x,#1
 216  006b cf0005        	ldw	_songStep,x
 217  006e               L33:
 218                     ; 80 		if (birthday_song[n] == END)
 219  006e c60003        	ld	a,_n
 220  0071 5f            	clrw	x
 221  0072 97            	ld	xl,a
 222  0073 58            	sllw	x
 223  0074 9093          	ldw	y,x
 224  0076 90de0007      	ldw	y,(_birthday_song,y)
 225  007a 90a30001      	cpw	y,#1
 226  007e 2612          	jrne	L72
 227                     ; 82 			n = 0;
 228  0080 725f0003      	clr	_n
 229                     ; 83 			t = 1;
 230  0084 35010004      	mov	_t,#1
 231  0088 2008          	jra	L72
 232  008a               L32:
 233                     ; 88 		case 1:
 233                     ; 89 		TIM1_SetCompare4(MUTE);
 234  008a 5f            	clrw	x
 235  008b cd0000        	call	_TIM1_SetCompare4
 237                     ; 90 		songStep = 0;
 238  008e 5f            	clrw	x
 239  008f cf0005        	ldw	_songStep,x
 240                     ; 91 		break;
 241  0092               L72:
 242                     ; 93 }
 243  0092 81            	ret
 245                     ; 95 void hornGeneralLee(void)
 245                     ; 96 {
 246                     .text:	section	.text,new
 247  0000               _hornGeneralLee:
 249                     ; 97 	switch (songStep)
 250  0000 ce0005        	ldw	x,_songStep
 252                     ; 124 		break;
 253  0003 5d            	tnzw	x
 254  0004 2709          	jreq	L73
 255  0006 5a            	decw	x
 256  0007 2603cc008a    	jreq	L14
 257  000c cc0092        	jra	L54
 258  000f               L73:
 259                     ; 99 		case 0:
 259                     ; 100 		if (generalLee_song[n]  != MUTE)
 260  000f c60003        	ld	a,_n
 261  0012 5f            	clrw	x
 262  0013 97            	ld	xl,a
 263  0014 58            	sllw	x
 264  0015 d60072        	ld	a,(_generalLee_song+1,x)
 265  0018 da0071        	or	a,(_generalLee_song,x)
 266  001b 270c          	jreq	L74
 267                     ; 102 			TIM1_SetAutoreload(generalLee_song[n]);
 268  001d c60003        	ld	a,_n
 269  0020 5f            	clrw	x
 270  0021 97            	ld	xl,a
 271  0022 58            	sllw	x
 272  0023 de0071        	ldw	x,(_generalLee_song,x)
 273  0026 cd0000        	call	_TIM1_SetAutoreload
 275  0029               L74:
 276                     ; 104 		TIM1_SetCompare4(generalLee_song[n]/duty);
 277  0029 c60003        	ld	a,_n
 278  002c 5f            	clrw	x
 279  002d 97            	ld	xl,a
 280  002e 58            	sllw	x
 281  002f de0071        	ldw	x,(_generalLee_song,x)
 282  0032 c60000        	ld	a,_duty
 283  0035 62            	div	x,a
 284  0036 cd0000        	call	_TIM1_SetCompare4
 286                     ; 105 		cnt++;
 287  0039 ce0001        	ldw	x,_cnt
 288  003c 1c0001        	addw	x,#1
 289  003f cf0001        	ldw	_cnt,x
 290                     ; 106 		if (cnt >= generalLee_song[t])
 291  0042 c60004        	ld	a,_t
 292  0045 5f            	clrw	x
 293  0046 97            	ld	xl,a
 294  0047 58            	sllw	x
 295  0048 9093          	ldw	y,x
 296  004a 90de0071      	ldw	y,(_generalLee_song,y)
 297  004e 90c30001      	cpw	y,_cnt
 298  0052 221a          	jrugt	L15
 299                     ; 108 			cnt = 0;
 300  0054 5f            	clrw	x
 301  0055 cf0001        	ldw	_cnt,x
 302                     ; 109 			n		=	n + 2;
 303  0058 725c0003      	inc	_n
 304  005c 725c0003      	inc	_n
 305                     ; 110 			t		=	t + 2;
 306  0060 725c0004      	inc	_t
 307  0064 725c0004      	inc	_t
 308                     ; 111 			songStep = 1;
 309  0068 ae0001        	ldw	x,#1
 310  006b cf0005        	ldw	_songStep,x
 311  006e               L15:
 312                     ; 113 		if (generalLee_song[n] == END)
 313  006e c60003        	ld	a,_n
 314  0071 5f            	clrw	x
 315  0072 97            	ld	xl,a
 316  0073 58            	sllw	x
 317  0074 9093          	ldw	y,x
 318  0076 90de0071      	ldw	y,(_generalLee_song,y)
 319  007a 90a30001      	cpw	y,#1
 320  007e 2612          	jrne	L54
 321                     ; 115 			n = 0;
 322  0080 725f0003      	clr	_n
 323                     ; 116 			t = 1;
 324  0084 35010004      	mov	_t,#1
 325  0088 2008          	jra	L54
 326  008a               L14:
 327                     ; 121 		case 1:
 327                     ; 122 		TIM1_SetCompare4(MUTE);
 328  008a 5f            	clrw	x
 329  008b cd0000        	call	_TIM1_SetCompare4
 331                     ; 123 		songStep = 0;
 332  008e 5f            	clrw	x
 333  008f cf0005        	ldw	_songStep,x
 334                     ; 124 		break;
 335  0092               L54:
 336                     ; 126 }
 337  0092 81            	ret
 339                     ; 129 void setFrequency(uint32_t f1)
 339                     ; 130 {
 340                     .text:	section	.text,new
 341  0000               _setFrequency:
 342  0000 5204          	subw	sp,#4
 343       00000004      OFST:	set	4
 345                     ; 131 	TIM1_SetAutoreload(f1);
 346  0002 1e09          	ldw	x,(OFST+5,sp)
 347  0004 cd0000        	call	_TIM1_SetAutoreload
 349                     ; 132 	TIM1_SetCompare4(f1/duty);
 350  0007 c60000        	ld	a,_duty
 351  000a b703          	ld	c_lreg+3,a
 352  000c 3f02          	clr	c_lreg+2
 353  000e 3f01          	clr	c_lreg+1
 354  0010 3f00          	clr	c_lreg
 355  0012 96            	ldw	x,sp
 356  0013 1c0001        	addw	x,#OFST-3
 357  0016 cd0000        	call	c_rtol
 359  0019 96            	ldw	x,sp
 360  001a 1c0007        	addw	x,#OFST+3
 361  001d cd0000        	call	c_ltor
 363  0020 96            	ldw	x,sp
 364  0021 1c0001        	addw	x,#OFST-3
 365  0024 cd0000        	call	c_ludv
 367  0027 be02          	ldw	x,c_lreg+2
 368  0029 cd0000        	call	_TIM1_SetCompare4
 370                     ; 133 }
 371  002c 5b04          	addw	sp,#4
 372  002e 81            	ret
 374                     ; 135 void pause(void)
 374                     ; 136 {
 375                     .text:	section	.text,new
 376  0000               _pause:
 378                     ; 137 	TIM1_SetCompare4(0);
 379  0000 5f            	clrw	x
 380  0001 cd0000        	call	_TIM1_SetCompare4
 382                     ; 138 }
 383  0004 81            	ret
 385                     	xdef	_generalLee_song
 386                     	xdef	_birthday_song
 387                     	xdef	_songStep
 388                     	xdef	_t
 389                     	xdef	_n
 390                     	xdef	_cnt
 391                     	xdef	_hornGeneralLee
 392                     	xdef	_birtdaySong
 393                     	xdef	_pause
 394                     	xdef	_setFrequency
 395                     	xdef	_soundStone
 396                     	xdef	_duty
 397                     	xref	_TIM1_SetCompare4
 398                     	xref	_TIM1_SetAutoreload
 399                     	xref.b	c_lreg
 400                     	xref.b	c_x
 401                     	xref	c_ludv
 402                     	xref	c_rtol
 403                     	xref	c_ltor
 404                     	end

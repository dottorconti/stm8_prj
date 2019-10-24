   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.10.2 - 02 Nov 2011
   3                     ; Generator (Limited) V4.3.7 - 29 Nov 2011
  17                     .const:	section	.text
  18  0000               _HSIDivFactor:
  19  0000 01            	dc.b	1
  20  0001 02            	dc.b	2
  21  0002 04            	dc.b	4
  22  0003 08            	dc.b	8
  23  0004               _CLKPrescTable:
  24  0004 01            	dc.b	1
  25  0005 02            	dc.b	2
  26  0006 04            	dc.b	4
  27  0007 08            	dc.b	8
  28  0008 0a            	dc.b	10
  29  0009 10            	dc.b	16
  30  000a 14            	dc.b	20
  31  000b 28            	dc.b	40
  32                     ; 72 void CLK_DeInit(void)
  32                     ; 73 {
  33                     	scross	off
  34                     .text:	section	.text,new
  35  0000               _CLK_DeInit:
  37                     ; 74   CLK->ICKR = CLK_ICKR_RESET_VALUE;
  38  0000 350150c0      	mov	20672,#1
  39                     ; 75   CLK->ECKR = CLK_ECKR_RESET_VALUE;
  40  0004 725f50c1      	clr	20673
  41                     ; 76   CLK->SWR  = CLK_SWR_RESET_VALUE;
  42  0008 35e150c4      	mov	20676,#225
  43                     ; 77   CLK->SWCR = CLK_SWCR_RESET_VALUE;
  44  000c 725f50c5      	clr	20677
  45                     ; 78   CLK->CKDIVR = CLK_CKDIVR_RESET_VALUE;
  46  0010 351850c6      	mov	20678,#24
  47                     ; 79   CLK->PCKENR1 = CLK_PCKENR1_RESET_VALUE;
  48  0014 35ff50c7      	mov	20679,#255
  49                     ; 80   CLK->PCKENR2 = CLK_PCKENR2_RESET_VALUE;
  50  0018 35ff50ca      	mov	20682,#255
  51                     ; 81   CLK->CSSR = CLK_CSSR_RESET_VALUE;
  52  001c 725f50c8      	clr	20680
  53                     ; 82   CLK->CCOR = CLK_CCOR_RESET_VALUE;
  54  0020 725f50c9      	clr	20681
  56  0024               L7:
  57                     ; 83   while ((CLK->CCOR & CLK_CCOR_CCOEN)!= 0)
  58  0024 c650c9        	ld	a,20681
  59  0027 a501          	bcp	a,#1
  60  0029 26f9          	jrne	L7
  61                     ; 85   CLK->CCOR = CLK_CCOR_RESET_VALUE;
  62  002b 725f50c9      	clr	20681
  63                     ; 86   CLK->HSITRIMR = CLK_HSITRIMR_RESET_VALUE;
  64  002f 725f50cc      	clr	20684
  65                     ; 87   CLK->SWIMCCR = CLK_SWIMCCR_RESET_VALUE;
  66  0033 725f50cd      	clr	20685
  67                     ; 88 }
  68  0037 81            	ret
  70                     ; 99 void CLK_FastHaltWakeUpCmd(FunctionalState NewState)
  70                     ; 100 {
  71                     .text:	section	.text,new
  72  0000               _CLK_FastHaltWakeUpCmd:
  73  0000 89            	pushw	x
  74       00000000      OFST:	set	0
  76                     ; 102   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
  77  0001 a30000        	cpw	x,#0
  78  0004 2705          	jreq	L01
  79  0006 a30001        	cpw	x,#1
  80  0009 2603          	jrne	L6
  81  000b               L01:
  82  000b 4f            	clr	a
  83  000c 2010          	jra	L21
  84  000e               L6:
  85  000e ae0066        	ldw	x,#102
  86  0011 89            	pushw	x
  87  0012 ae0000        	ldw	x,#0
  88  0015 89            	pushw	x
  89  0016 ae000c        	ldw	x,#L31
  90  0019 cd0000        	call	_assert_failed
  92  001c 5b04          	addw	sp,#4
  93  001e               L21:
  94                     ; 104   if (NewState != DISABLE)
  95  001e 1e01          	ldw	x,(OFST+1,sp)
  96  0020 2706          	jreq	L51
  97                     ; 107     CLK->ICKR |= CLK_ICKR_FHWU;
  98  0022 721450c0      	bset	20672,#2
 100  0026 2004          	jra	L71
 101  0028               L51:
 102                     ; 112     CLK->ICKR &= (uint8_t)(~CLK_ICKR_FHWU);
 103  0028 721550c0      	bres	20672,#2
 104  002c               L71:
 105                     ; 114 }
 106  002c 85            	popw	x
 107  002d 81            	ret
 109                     ; 121 void CLK_HSECmd(FunctionalState NewState)
 109                     ; 122 {
 110                     .text:	section	.text,new
 111  0000               _CLK_HSECmd:
 112  0000 89            	pushw	x
 113       00000000      OFST:	set	0
 115                     ; 124   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 116  0001 a30000        	cpw	x,#0
 117  0004 2705          	jreq	L02
 118  0006 a30001        	cpw	x,#1
 119  0009 2603          	jrne	L61
 120  000b               L02:
 121  000b 4f            	clr	a
 122  000c 2010          	jra	L22
 123  000e               L61:
 124  000e ae007c        	ldw	x,#124
 125  0011 89            	pushw	x
 126  0012 ae0000        	ldw	x,#0
 127  0015 89            	pushw	x
 128  0016 ae000c        	ldw	x,#L31
 129  0019 cd0000        	call	_assert_failed
 131  001c 5b04          	addw	sp,#4
 132  001e               L22:
 133                     ; 126   if (NewState != DISABLE)
 134  001e 1e01          	ldw	x,(OFST+1,sp)
 135  0020 2706          	jreq	L12
 136                     ; 129     CLK->ECKR |= CLK_ECKR_HSEEN;
 137  0022 721050c1      	bset	20673,#0
 139  0026 2004          	jra	L32
 140  0028               L12:
 141                     ; 134     CLK->ECKR &= (uint8_t)(~CLK_ECKR_HSEEN);
 142  0028 721150c1      	bres	20673,#0
 143  002c               L32:
 144                     ; 136 }
 145  002c 85            	popw	x
 146  002d 81            	ret
 148                     ; 143 void CLK_HSICmd(FunctionalState NewState)
 148                     ; 144 {
 149                     .text:	section	.text,new
 150  0000               _CLK_HSICmd:
 151  0000 89            	pushw	x
 152       00000000      OFST:	set	0
 154                     ; 146   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 155  0001 a30000        	cpw	x,#0
 156  0004 2705          	jreq	L03
 157  0006 a30001        	cpw	x,#1
 158  0009 2603          	jrne	L62
 159  000b               L03:
 160  000b 4f            	clr	a
 161  000c 2010          	jra	L23
 162  000e               L62:
 163  000e ae0092        	ldw	x,#146
 164  0011 89            	pushw	x
 165  0012 ae0000        	ldw	x,#0
 166  0015 89            	pushw	x
 167  0016 ae000c        	ldw	x,#L31
 168  0019 cd0000        	call	_assert_failed
 170  001c 5b04          	addw	sp,#4
 171  001e               L23:
 172                     ; 148   if (NewState != DISABLE)
 173  001e 1e01          	ldw	x,(OFST+1,sp)
 174  0020 2706          	jreq	L52
 175                     ; 151     CLK->ICKR |= CLK_ICKR_HSIEN;
 176  0022 721050c0      	bset	20672,#0
 178  0026 2004          	jra	L72
 179  0028               L52:
 180                     ; 156     CLK->ICKR &= (uint8_t)(~CLK_ICKR_HSIEN);
 181  0028 721150c0      	bres	20672,#0
 182  002c               L72:
 183                     ; 158 }
 184  002c 85            	popw	x
 185  002d 81            	ret
 187                     ; 166 void CLK_LSICmd(FunctionalState NewState)
 187                     ; 167 {
 188                     .text:	section	.text,new
 189  0000               _CLK_LSICmd:
 190  0000 89            	pushw	x
 191       00000000      OFST:	set	0
 193                     ; 169   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 194  0001 a30000        	cpw	x,#0
 195  0004 2705          	jreq	L04
 196  0006 a30001        	cpw	x,#1
 197  0009 2603          	jrne	L63
 198  000b               L04:
 199  000b 4f            	clr	a
 200  000c 2010          	jra	L24
 201  000e               L63:
 202  000e ae00a9        	ldw	x,#169
 203  0011 89            	pushw	x
 204  0012 ae0000        	ldw	x,#0
 205  0015 89            	pushw	x
 206  0016 ae000c        	ldw	x,#L31
 207  0019 cd0000        	call	_assert_failed
 209  001c 5b04          	addw	sp,#4
 210  001e               L24:
 211                     ; 171   if (NewState != DISABLE)
 212  001e 1e01          	ldw	x,(OFST+1,sp)
 213  0020 2706          	jreq	L13
 214                     ; 174     CLK->ICKR |= CLK_ICKR_LSIEN;
 215  0022 721650c0      	bset	20672,#3
 217  0026 2004          	jra	L33
 218  0028               L13:
 219                     ; 179     CLK->ICKR &= (uint8_t)(~CLK_ICKR_LSIEN);
 220  0028 721750c0      	bres	20672,#3
 221  002c               L33:
 222                     ; 181 }
 223  002c 85            	popw	x
 224  002d 81            	ret
 226                     ; 189 void CLK_CCOCmd(FunctionalState NewState)
 226                     ; 190 {
 227                     .text:	section	.text,new
 228  0000               _CLK_CCOCmd:
 229  0000 89            	pushw	x
 230       00000000      OFST:	set	0
 232                     ; 192   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 233  0001 a30000        	cpw	x,#0
 234  0004 2705          	jreq	L05
 235  0006 a30001        	cpw	x,#1
 236  0009 2603          	jrne	L64
 237  000b               L05:
 238  000b 4f            	clr	a
 239  000c 2010          	jra	L25
 240  000e               L64:
 241  000e ae00c0        	ldw	x,#192
 242  0011 89            	pushw	x
 243  0012 ae0000        	ldw	x,#0
 244  0015 89            	pushw	x
 245  0016 ae000c        	ldw	x,#L31
 246  0019 cd0000        	call	_assert_failed
 248  001c 5b04          	addw	sp,#4
 249  001e               L25:
 250                     ; 194   if (NewState != DISABLE)
 251  001e 1e01          	ldw	x,(OFST+1,sp)
 252  0020 2706          	jreq	L53
 253                     ; 197     CLK->CCOR |= CLK_CCOR_CCOEN;
 254  0022 721050c9      	bset	20681,#0
 256  0026 2004          	jra	L73
 257  0028               L53:
 258                     ; 202     CLK->CCOR &= (uint8_t)(~CLK_CCOR_CCOEN);
 259  0028 721150c9      	bres	20681,#0
 260  002c               L73:
 261                     ; 204 }
 262  002c 85            	popw	x
 263  002d 81            	ret
 265                     ; 213 void CLK_ClockSwitchCmd(FunctionalState NewState)
 265                     ; 214 {
 266                     .text:	section	.text,new
 267  0000               _CLK_ClockSwitchCmd:
 268  0000 89            	pushw	x
 269       00000000      OFST:	set	0
 271                     ; 216   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 272  0001 a30000        	cpw	x,#0
 273  0004 2705          	jreq	L06
 274  0006 a30001        	cpw	x,#1
 275  0009 2603          	jrne	L65
 276  000b               L06:
 277  000b 4f            	clr	a
 278  000c 2010          	jra	L26
 279  000e               L65:
 280  000e ae00d8        	ldw	x,#216
 281  0011 89            	pushw	x
 282  0012 ae0000        	ldw	x,#0
 283  0015 89            	pushw	x
 284  0016 ae000c        	ldw	x,#L31
 285  0019 cd0000        	call	_assert_failed
 287  001c 5b04          	addw	sp,#4
 288  001e               L26:
 289                     ; 218   if (NewState != DISABLE )
 290  001e 1e01          	ldw	x,(OFST+1,sp)
 291  0020 2706          	jreq	L14
 292                     ; 221     CLK->SWCR |= CLK_SWCR_SWEN;
 293  0022 721250c5      	bset	20677,#1
 295  0026 2004          	jra	L34
 296  0028               L14:
 297                     ; 226     CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWEN);
 298  0028 721350c5      	bres	20677,#1
 299  002c               L34:
 300                     ; 228 }
 301  002c 85            	popw	x
 302  002d 81            	ret
 304                     ; 238 void CLK_SlowActiveHaltWakeUpCmd(FunctionalState NewState)
 304                     ; 239 {
 305                     .text:	section	.text,new
 306  0000               _CLK_SlowActiveHaltWakeUpCmd:
 307  0000 89            	pushw	x
 308       00000000      OFST:	set	0
 310                     ; 241   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 311  0001 a30000        	cpw	x,#0
 312  0004 2705          	jreq	L07
 313  0006 a30001        	cpw	x,#1
 314  0009 2603          	jrne	L66
 315  000b               L07:
 316  000b 4f            	clr	a
 317  000c 2010          	jra	L27
 318  000e               L66:
 319  000e ae00f1        	ldw	x,#241
 320  0011 89            	pushw	x
 321  0012 ae0000        	ldw	x,#0
 322  0015 89            	pushw	x
 323  0016 ae000c        	ldw	x,#L31
 324  0019 cd0000        	call	_assert_failed
 326  001c 5b04          	addw	sp,#4
 327  001e               L27:
 328                     ; 243   if (NewState != DISABLE)
 329  001e 1e01          	ldw	x,(OFST+1,sp)
 330  0020 2706          	jreq	L54
 331                     ; 246     CLK->ICKR |= CLK_ICKR_SWUAH;
 332  0022 721a50c0      	bset	20672,#5
 334  0026 2004          	jra	L74
 335  0028               L54:
 336                     ; 251     CLK->ICKR &= (uint8_t)(~CLK_ICKR_SWUAH);
 337  0028 721b50c0      	bres	20672,#5
 338  002c               L74:
 339                     ; 253 }
 340  002c 85            	popw	x
 341  002d 81            	ret
 343                     ; 263 void CLK_PeripheralClockConfig(CLK_Peripheral_TypeDef CLK_Peripheral, FunctionalState NewState)
 343                     ; 264 {
 344                     .text:	section	.text,new
 345  0000               _CLK_PeripheralClockConfig:
 346  0000 89            	pushw	x
 347       00000000      OFST:	set	0
 349                     ; 266   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 350  0001 1e05          	ldw	x,(OFST+5,sp)
 351  0003 2707          	jreq	L001
 352  0005 1e05          	ldw	x,(OFST+5,sp)
 353  0007 a30001        	cpw	x,#1
 354  000a 2603          	jrne	L67
 355  000c               L001:
 356  000c 4f            	clr	a
 357  000d 2010          	jra	L201
 358  000f               L67:
 359  000f ae010a        	ldw	x,#266
 360  0012 89            	pushw	x
 361  0013 ae0000        	ldw	x,#0
 362  0016 89            	pushw	x
 363  0017 ae000c        	ldw	x,#L31
 364  001a cd0000        	call	_assert_failed
 366  001d 5b04          	addw	sp,#4
 367  001f               L201:
 368                     ; 267   assert_param(IS_CLK_PERIPHERAL_OK(CLK_Peripheral));
 369  001f 1e01          	ldw	x,(OFST+1,sp)
 370  0021 275b          	jreq	L601
 371  0023 1e01          	ldw	x,(OFST+1,sp)
 372  0025 a30001        	cpw	x,#1
 373  0028 2754          	jreq	L601
 374  002a 1e01          	ldw	x,(OFST+1,sp)
 375  002c a30003        	cpw	x,#3
 376  002f 274d          	jreq	L601
 377  0031 1e01          	ldw	x,(OFST+1,sp)
 378  0033 a30003        	cpw	x,#3
 379  0036 2746          	jreq	L601
 380  0038 1e01          	ldw	x,(OFST+1,sp)
 381  003a a30003        	cpw	x,#3
 382  003d 273f          	jreq	L601
 383  003f 1e01          	ldw	x,(OFST+1,sp)
 384  0041 a30004        	cpw	x,#4
 385  0044 2738          	jreq	L601
 386  0046 1e01          	ldw	x,(OFST+1,sp)
 387  0048 a30005        	cpw	x,#5
 388  004b 2731          	jreq	L601
 389  004d 1e01          	ldw	x,(OFST+1,sp)
 390  004f a30005        	cpw	x,#5
 391  0052 272a          	jreq	L601
 392  0054 1e01          	ldw	x,(OFST+1,sp)
 393  0056 a30004        	cpw	x,#4
 394  0059 2723          	jreq	L601
 395  005b 1e01          	ldw	x,(OFST+1,sp)
 396  005d a30006        	cpw	x,#6
 397  0060 271c          	jreq	L601
 398  0062 1e01          	ldw	x,(OFST+1,sp)
 399  0064 a30007        	cpw	x,#7
 400  0067 2715          	jreq	L601
 401  0069 1e01          	ldw	x,(OFST+1,sp)
 402  006b a30017        	cpw	x,#23
 403  006e 270e          	jreq	L601
 404  0070 1e01          	ldw	x,(OFST+1,sp)
 405  0072 a30013        	cpw	x,#19
 406  0075 2707          	jreq	L601
 407  0077 1e01          	ldw	x,(OFST+1,sp)
 408  0079 a30012        	cpw	x,#18
 409  007c 2603          	jrne	L401
 410  007e               L601:
 411  007e 4f            	clr	a
 412  007f 2010          	jra	L011
 413  0081               L401:
 414  0081 ae010b        	ldw	x,#267
 415  0084 89            	pushw	x
 416  0085 ae0000        	ldw	x,#0
 417  0088 89            	pushw	x
 418  0089 ae000c        	ldw	x,#L31
 419  008c cd0000        	call	_assert_failed
 421  008f 5b04          	addw	sp,#4
 422  0091               L011:
 423                     ; 269   if (((uint8_t)CLK_Peripheral & (uint8_t)0x10) == 0x00)
 424  0091 7b02          	ld	a,(OFST+2,sp)
 425  0093 a510          	bcp	a,#16
 426  0095 2633          	jrne	L15
 427                     ; 271     if (NewState != DISABLE)
 428  0097 1e05          	ldw	x,(OFST+5,sp)
 429  0099 2717          	jreq	L35
 430                     ; 274       CLK->PCKENR1 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
 431  009b 7b02          	ld	a,(OFST+2,sp)
 432  009d a40f          	and	a,#15
 433  009f 5f            	clrw	x
 434  00a0 97            	ld	xl,a
 435  00a1 a601          	ld	a,#1
 436  00a3 5d            	tnzw	x
 437  00a4 2704          	jreq	L211
 438  00a6               L411:
 439  00a6 48            	sll	a
 440  00a7 5a            	decw	x
 441  00a8 26fc          	jrne	L411
 442  00aa               L211:
 443  00aa ca50c7        	or	a,20679
 444  00ad c750c7        	ld	20679,a
 446  00b0 2049          	jra	L75
 447  00b2               L35:
 448                     ; 279       CLK->PCKENR1 &= (uint8_t)(~(uint8_t)(((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F))));
 449  00b2 7b02          	ld	a,(OFST+2,sp)
 450  00b4 a40f          	and	a,#15
 451  00b6 5f            	clrw	x
 452  00b7 97            	ld	xl,a
 453  00b8 a601          	ld	a,#1
 454  00ba 5d            	tnzw	x
 455  00bb 2704          	jreq	L611
 456  00bd               L021:
 457  00bd 48            	sll	a
 458  00be 5a            	decw	x
 459  00bf 26fc          	jrne	L021
 460  00c1               L611:
 461  00c1 43            	cpl	a
 462  00c2 c450c7        	and	a,20679
 463  00c5 c750c7        	ld	20679,a
 464  00c8 2031          	jra	L75
 465  00ca               L15:
 466                     ; 284     if (NewState != DISABLE)
 467  00ca 1e05          	ldw	x,(OFST+5,sp)
 468  00cc 2717          	jreq	L16
 469                     ; 287       CLK->PCKENR2 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
 470  00ce 7b02          	ld	a,(OFST+2,sp)
 471  00d0 a40f          	and	a,#15
 472  00d2 5f            	clrw	x
 473  00d3 97            	ld	xl,a
 474  00d4 a601          	ld	a,#1
 475  00d6 5d            	tnzw	x
 476  00d7 2704          	jreq	L221
 477  00d9               L421:
 478  00d9 48            	sll	a
 479  00da 5a            	decw	x
 480  00db 26fc          	jrne	L421
 481  00dd               L221:
 482  00dd ca50ca        	or	a,20682
 483  00e0 c750ca        	ld	20682,a
 485  00e3 2016          	jra	L75
 486  00e5               L16:
 487                     ; 292       CLK->PCKENR2 &= (uint8_t)(~(uint8_t)(((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F))));
 488  00e5 7b02          	ld	a,(OFST+2,sp)
 489  00e7 a40f          	and	a,#15
 490  00e9 5f            	clrw	x
 491  00ea 97            	ld	xl,a
 492  00eb a601          	ld	a,#1
 493  00ed 5d            	tnzw	x
 494  00ee 2704          	jreq	L621
 495  00f0               L031:
 496  00f0 48            	sll	a
 497  00f1 5a            	decw	x
 498  00f2 26fc          	jrne	L031
 499  00f4               L621:
 500  00f4 43            	cpl	a
 501  00f5 c450ca        	and	a,20682
 502  00f8 c750ca        	ld	20682,a
 503  00fb               L75:
 504                     ; 295 }
 505  00fb 85            	popw	x
 506  00fc 81            	ret
 508                     ; 309 ErrorStatus CLK_ClockSwitchConfig(CLK_SwitchMode_TypeDef CLK_SwitchMode, CLK_Source_TypeDef CLK_NewClock, FunctionalState ITState, CLK_CurrentClockState_TypeDef CLK_CurrentClockState)
 508                     ; 310 {
 509                     .text:	section	.text,new
 510  0000               _CLK_ClockSwitchConfig:
 511  0000 89            	pushw	x
 512  0001 5204          	subw	sp,#4
 513       00000004      OFST:	set	4
 515                     ; 312   uint16_t DownCounter = CLK_TIMEOUT;
 516  0003 aeffff        	ldw	x,#65535
 517  0006 1f03          	ldw	(OFST-1,sp),x
 518                     ; 313   ErrorStatus Swif = ERROR;
 519                     ; 316   assert_param(IS_CLK_SOURCE_OK(CLK_NewClock));
 520  0008 1e09          	ldw	x,(OFST+5,sp)
 521  000a a300e1        	cpw	x,#225
 522  000d 270e          	jreq	L631
 523  000f 1e09          	ldw	x,(OFST+5,sp)
 524  0011 a300d2        	cpw	x,#210
 525  0014 2707          	jreq	L631
 526  0016 1e09          	ldw	x,(OFST+5,sp)
 527  0018 a300b4        	cpw	x,#180
 528  001b 2603          	jrne	L431
 529  001d               L631:
 530  001d 4f            	clr	a
 531  001e 2010          	jra	L041
 532  0020               L431:
 533  0020 ae013c        	ldw	x,#316
 534  0023 89            	pushw	x
 535  0024 ae0000        	ldw	x,#0
 536  0027 89            	pushw	x
 537  0028 ae000c        	ldw	x,#L31
 538  002b cd0000        	call	_assert_failed
 540  002e 5b04          	addw	sp,#4
 541  0030               L041:
 542                     ; 317   assert_param(IS_CLK_SWITCHMODE_OK(CLK_SwitchMode));
 543  0030 1e05          	ldw	x,(OFST+1,sp)
 544  0032 2707          	jreq	L441
 545  0034 1e05          	ldw	x,(OFST+1,sp)
 546  0036 a30001        	cpw	x,#1
 547  0039 2603          	jrne	L241
 548  003b               L441:
 549  003b 4f            	clr	a
 550  003c 2010          	jra	L641
 551  003e               L241:
 552  003e ae013d        	ldw	x,#317
 553  0041 89            	pushw	x
 554  0042 ae0000        	ldw	x,#0
 555  0045 89            	pushw	x
 556  0046 ae000c        	ldw	x,#L31
 557  0049 cd0000        	call	_assert_failed
 559  004c 5b04          	addw	sp,#4
 560  004e               L641:
 561                     ; 318   assert_param(IS_FUNCTIONALSTATE_OK(ITState));
 562  004e 1e0b          	ldw	x,(OFST+7,sp)
 563  0050 2707          	jreq	L251
 564  0052 1e0b          	ldw	x,(OFST+7,sp)
 565  0054 a30001        	cpw	x,#1
 566  0057 2603          	jrne	L051
 567  0059               L251:
 568  0059 4f            	clr	a
 569  005a 2010          	jra	L451
 570  005c               L051:
 571  005c ae013e        	ldw	x,#318
 572  005f 89            	pushw	x
 573  0060 ae0000        	ldw	x,#0
 574  0063 89            	pushw	x
 575  0064 ae000c        	ldw	x,#L31
 576  0067 cd0000        	call	_assert_failed
 578  006a 5b04          	addw	sp,#4
 579  006c               L451:
 580                     ; 319   assert_param(IS_CLK_CURRENTCLOCKSTATE_OK(CLK_CurrentClockState));
 581  006c 1e0d          	ldw	x,(OFST+9,sp)
 582  006e 2707          	jreq	L061
 583  0070 1e0d          	ldw	x,(OFST+9,sp)
 584  0072 a30001        	cpw	x,#1
 585  0075 2603          	jrne	L651
 586  0077               L061:
 587  0077 4f            	clr	a
 588  0078 2010          	jra	L261
 589  007a               L651:
 590  007a ae013f        	ldw	x,#319
 591  007d 89            	pushw	x
 592  007e ae0000        	ldw	x,#0
 593  0081 89            	pushw	x
 594  0082 ae000c        	ldw	x,#L31
 595  0085 cd0000        	call	_assert_failed
 597  0088 5b04          	addw	sp,#4
 598  008a               L261:
 599                     ; 322   clock_master = (CLK_Source_TypeDef)CLK->CMSR;
 600  008a c650c3        	ld	a,20675
 601  008d 5f            	clrw	x
 602  008e 97            	ld	xl,a
 603  008f 1f01          	ldw	(OFST-3,sp),x
 604                     ; 325   if (CLK_SwitchMode == CLK_SWITCHMODE_AUTO)
 605  0091 1e05          	ldw	x,(OFST+1,sp)
 606  0093 a30001        	cpw	x,#1
 607  0096 264e          	jrne	L56
 608                     ; 328     CLK->SWCR |= CLK_SWCR_SWEN;
 609  0098 721250c5      	bset	20677,#1
 610                     ; 331     if (ITState != DISABLE)
 611  009c 1e0b          	ldw	x,(OFST+7,sp)
 612  009e 2706          	jreq	L76
 613                     ; 333       CLK->SWCR |= CLK_SWCR_SWIEN;
 614  00a0 721450c5      	bset	20677,#2
 616  00a4 2004          	jra	L17
 617  00a6               L76:
 618                     ; 337       CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIEN);
 619  00a6 721550c5      	bres	20677,#2
 620  00aa               L17:
 621                     ; 341     CLK->SWR = (uint8_t)CLK_NewClock;
 622  00aa 7b0a          	ld	a,(OFST+6,sp)
 623  00ac c750c4        	ld	20676,a
 625  00af 2007          	jra	L77
 626  00b1               L37:
 627                     ; 346       DownCounter--;
 628  00b1 1e03          	ldw	x,(OFST-1,sp)
 629  00b3 1d0001        	subw	x,#1
 630  00b6 1f03          	ldw	(OFST-1,sp),x
 631  00b8               L77:
 632                     ; 344     while((((CLK->SWCR & CLK_SWCR_SWBSY) != 0 )&& (DownCounter != 0)))
 633  00b8 c650c5        	ld	a,20677
 634  00bb a501          	bcp	a,#1
 635  00bd 2704          	jreq	L301
 637  00bf 1e03          	ldw	x,(OFST-1,sp)
 638  00c1 26ee          	jrne	L37
 639  00c3               L301:
 640                     ; 349     if(DownCounter != 0)
 641  00c3 1e03          	ldw	x,(OFST-1,sp)
 642  00c5 2707          	jreq	L501
 643                     ; 351       Swif = SUCCESS;
 644  00c7 ae0001        	ldw	x,#1
 645  00ca 1f03          	ldw	(OFST-1,sp),x
 647  00cc 2003          	jra	L111
 648  00ce               L501:
 649                     ; 355       Swif = ERROR;
 650  00ce 5f            	clrw	x
 651  00cf 1f03          	ldw	(OFST-1,sp),x
 652  00d1               L111:
 653                     ; 390   if(Swif != ERROR)
 654  00d1 1e03          	ldw	x,(OFST-1,sp)
 655  00d3 276c          	jreq	L531
 656                     ; 393     if((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_HSI))
 657  00d5 1e0d          	ldw	x,(OFST+9,sp)
 658  00d7 2648          	jrne	L731
 660  00d9 1e01          	ldw	x,(OFST-3,sp)
 661  00db a300e1        	cpw	x,#225
 662  00de 2641          	jrne	L731
 663                     ; 395       CLK->ICKR &= (uint8_t)(~CLK_ICKR_HSIEN);
 664  00e0 721150c0      	bres	20672,#0
 666  00e4 205b          	jra	L531
 667  00e6               L56:
 668                     ; 361     if (ITState != DISABLE)
 669  00e6 1e0b          	ldw	x,(OFST+7,sp)
 670  00e8 2706          	jreq	L311
 671                     ; 363       CLK->SWCR |= CLK_SWCR_SWIEN;
 672  00ea 721450c5      	bset	20677,#2
 674  00ee 2004          	jra	L511
 675  00f0               L311:
 676                     ; 367       CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIEN);
 677  00f0 721550c5      	bres	20677,#2
 678  00f4               L511:
 679                     ; 371     CLK->SWR = (uint8_t)CLK_NewClock;
 680  00f4 7b0a          	ld	a,(OFST+6,sp)
 681  00f6 c750c4        	ld	20676,a
 683  00f9 2007          	jra	L321
 684  00fb               L711:
 685                     ; 376       DownCounter--;
 686  00fb 1e03          	ldw	x,(OFST-1,sp)
 687  00fd 1d0001        	subw	x,#1
 688  0100 1f03          	ldw	(OFST-1,sp),x
 689  0102               L321:
 690                     ; 374     while((((CLK->SWCR & CLK_SWCR_SWIF) != 0 ) && (DownCounter != 0)))
 691  0102 c650c5        	ld	a,20677
 692  0105 a508          	bcp	a,#8
 693  0107 2704          	jreq	L721
 695  0109 1e03          	ldw	x,(OFST-1,sp)
 696  010b 26ee          	jrne	L711
 697  010d               L721:
 698                     ; 379     if(DownCounter != 0)
 699  010d 1e03          	ldw	x,(OFST-1,sp)
 700  010f 270b          	jreq	L131
 701                     ; 382       CLK->SWCR |= CLK_SWCR_SWEN;
 702  0111 721250c5      	bset	20677,#1
 703                     ; 383       Swif = SUCCESS;
 704  0115 ae0001        	ldw	x,#1
 705  0118 1f03          	ldw	(OFST-1,sp),x
 707  011a 20b5          	jra	L111
 708  011c               L131:
 709                     ; 387       Swif = ERROR;
 710  011c 5f            	clrw	x
 711  011d 1f03          	ldw	(OFST-1,sp),x
 712  011f 20b0          	jra	L111
 713  0121               L731:
 714                     ; 397     else if((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_LSI))
 715  0121 1e0d          	ldw	x,(OFST+9,sp)
 716  0123 260d          	jrne	L341
 718  0125 1e01          	ldw	x,(OFST-3,sp)
 719  0127 a300d2        	cpw	x,#210
 720  012a 2606          	jrne	L341
 721                     ; 399       CLK->ICKR &= (uint8_t)(~CLK_ICKR_LSIEN);
 722  012c 721750c0      	bres	20672,#3
 724  0130 200f          	jra	L531
 725  0132               L341:
 726                     ; 401     else if ((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_HSE))
 727  0132 1e0d          	ldw	x,(OFST+9,sp)
 728  0134 260b          	jrne	L531
 730  0136 1e01          	ldw	x,(OFST-3,sp)
 731  0138 a300b4        	cpw	x,#180
 732  013b 2604          	jrne	L531
 733                     ; 403       CLK->ECKR &= (uint8_t)(~CLK_ECKR_HSEEN);
 734  013d 721150c1      	bres	20673,#0
 735  0141               L531:
 736                     ; 406   return(Swif);
 737  0141 1e03          	ldw	x,(OFST-1,sp)
 739  0143 5b06          	addw	sp,#6
 740  0145 81            	ret
 742                     ; 415 void CLK_HSIPrescalerConfig(CLK_Prescaler_TypeDef HSIPrescaler)
 742                     ; 416 {
 743                     .text:	section	.text,new
 744  0000               _CLK_HSIPrescalerConfig:
 745  0000 89            	pushw	x
 746       00000000      OFST:	set	0
 748                     ; 418   assert_param(IS_CLK_HSIPRESCALER_OK(HSIPrescaler));
 749  0001 a30000        	cpw	x,#0
 750  0004 270f          	jreq	L071
 751  0006 a30008        	cpw	x,#8
 752  0009 270a          	jreq	L071
 753  000b a30010        	cpw	x,#16
 754  000e 2705          	jreq	L071
 755  0010 a30018        	cpw	x,#24
 756  0013 2603          	jrne	L661
 757  0015               L071:
 758  0015 4f            	clr	a
 759  0016 2010          	jra	L271
 760  0018               L661:
 761  0018 ae01a2        	ldw	x,#418
 762  001b 89            	pushw	x
 763  001c ae0000        	ldw	x,#0
 764  001f 89            	pushw	x
 765  0020 ae000c        	ldw	x,#L31
 766  0023 cd0000        	call	_assert_failed
 768  0026 5b04          	addw	sp,#4
 769  0028               L271:
 770                     ; 421   CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_HSIDIV);
 771  0028 c650c6        	ld	a,20678
 772  002b a4e7          	and	a,#231
 773  002d c750c6        	ld	20678,a
 774                     ; 424   CLK->CKDIVR |= (uint8_t)HSIPrescaler;
 775  0030 c650c6        	ld	a,20678
 776  0033 1a02          	or	a,(OFST+2,sp)
 777  0035 c750c6        	ld	20678,a
 778                     ; 425 }
 779  0038 85            	popw	x
 780  0039 81            	ret
 782                     ; 436 void CLK_CCOConfig(CLK_Output_TypeDef CLK_CCO)
 782                     ; 437 {
 783                     .text:	section	.text,new
 784  0000               _CLK_CCOConfig:
 785  0000 89            	pushw	x
 786       00000000      OFST:	set	0
 788                     ; 439   assert_param(IS_CLK_OUTPUT_OK(CLK_CCO));
 789  0001 a30000        	cpw	x,#0
 790  0004 273c          	jreq	L002
 791  0006 a30004        	cpw	x,#4
 792  0009 2737          	jreq	L002
 793  000b a30002        	cpw	x,#2
 794  000e 2732          	jreq	L002
 795  0010 a30008        	cpw	x,#8
 796  0013 272d          	jreq	L002
 797  0015 a3000a        	cpw	x,#10
 798  0018 2728          	jreq	L002
 799  001a a3000c        	cpw	x,#12
 800  001d 2723          	jreq	L002
 801  001f a3000e        	cpw	x,#14
 802  0022 271e          	jreq	L002
 803  0024 a30010        	cpw	x,#16
 804  0027 2719          	jreq	L002
 805  0029 a30012        	cpw	x,#18
 806  002c 2714          	jreq	L002
 807  002e a30014        	cpw	x,#20
 808  0031 270f          	jreq	L002
 809  0033 a30016        	cpw	x,#22
 810  0036 270a          	jreq	L002
 811  0038 a30018        	cpw	x,#24
 812  003b 2705          	jreq	L002
 813  003d a3001a        	cpw	x,#26
 814  0040 2603          	jrne	L671
 815  0042               L002:
 816  0042 4f            	clr	a
 817  0043 2010          	jra	L202
 818  0045               L671:
 819  0045 ae01b7        	ldw	x,#439
 820  0048 89            	pushw	x
 821  0049 ae0000        	ldw	x,#0
 822  004c 89            	pushw	x
 823  004d ae000c        	ldw	x,#L31
 824  0050 cd0000        	call	_assert_failed
 826  0053 5b04          	addw	sp,#4
 827  0055               L202:
 828                     ; 442   CLK->CCOR &= (uint8_t)(~CLK_CCOR_CCOSEL);
 829  0055 c650c9        	ld	a,20681
 830  0058 a4e1          	and	a,#225
 831  005a c750c9        	ld	20681,a
 832                     ; 445   CLK->CCOR |= (uint8_t)CLK_CCO;
 833  005d c650c9        	ld	a,20681
 834  0060 1a02          	or	a,(OFST+2,sp)
 835  0062 c750c9        	ld	20681,a
 836                     ; 448   CLK->CCOR |= CLK_CCOR_CCOEN;
 837  0065 721050c9      	bset	20681,#0
 838                     ; 449 }
 839  0069 85            	popw	x
 840  006a 81            	ret
 842                     ; 459 void CLK_ITConfig(CLK_IT_TypeDef CLK_IT, FunctionalState NewState)
 842                     ; 460 {
 843                     .text:	section	.text,new
 844  0000               _CLK_ITConfig:
 845  0000 89            	pushw	x
 846       00000000      OFST:	set	0
 848                     ; 462   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 849  0001 1e05          	ldw	x,(OFST+5,sp)
 850  0003 2707          	jreq	L012
 851  0005 1e05          	ldw	x,(OFST+5,sp)
 852  0007 a30001        	cpw	x,#1
 853  000a 2603          	jrne	L602
 854  000c               L012:
 855  000c 4f            	clr	a
 856  000d 2010          	jra	L212
 857  000f               L602:
 858  000f ae01ce        	ldw	x,#462
 859  0012 89            	pushw	x
 860  0013 ae0000        	ldw	x,#0
 861  0016 89            	pushw	x
 862  0017 ae000c        	ldw	x,#L31
 863  001a cd0000        	call	_assert_failed
 865  001d 5b04          	addw	sp,#4
 866  001f               L212:
 867                     ; 463   assert_param(IS_CLK_IT_OK(CLK_IT));
 868  001f 1e01          	ldw	x,(OFST+1,sp)
 869  0021 a3000c        	cpw	x,#12
 870  0024 2707          	jreq	L612
 871  0026 1e01          	ldw	x,(OFST+1,sp)
 872  0028 a3001c        	cpw	x,#28
 873  002b 2603          	jrne	L412
 874  002d               L612:
 875  002d 4f            	clr	a
 876  002e 2010          	jra	L022
 877  0030               L412:
 878  0030 ae01cf        	ldw	x,#463
 879  0033 89            	pushw	x
 880  0034 ae0000        	ldw	x,#0
 881  0037 89            	pushw	x
 882  0038 ae000c        	ldw	x,#L31
 883  003b cd0000        	call	_assert_failed
 885  003e 5b04          	addw	sp,#4
 886  0040               L022:
 887                     ; 465   if (NewState != DISABLE)
 888  0040 1e05          	ldw	x,(OFST+5,sp)
 889  0042 271c          	jreq	L561
 890                     ; 467     switch (CLK_IT)
 891  0044 1e01          	ldw	x,(OFST+1,sp)
 893                     ; 475     default:
 893                     ; 476       break;
 894  0046 1d000c        	subw	x,#12
 895  0049 270b          	jreq	L351
 896  004b 1d0010        	subw	x,#16
 897  004e 2626          	jrne	L371
 898                     ; 469     case CLK_IT_SWIF: /* Enable the clock switch interrupt */
 898                     ; 470       CLK->SWCR |= CLK_SWCR_SWIEN;
 899  0050 721450c5      	bset	20677,#2
 900                     ; 471       break;
 901  0054 2020          	jra	L371
 902  0056               L351:
 903                     ; 472     case CLK_IT_CSSD: /* Enable the clock security system detection interrupt */
 903                     ; 473       CLK->CSSR |= CLK_CSSR_CSSDIE;
 904  0056 721450c8      	bset	20680,#2
 905                     ; 474       break;
 906  005a 201a          	jra	L371
 907  005c               L551:
 908                     ; 475     default:
 908                     ; 476       break;
 909  005c 2018          	jra	L371
 910  005e               L171:
 912  005e 2016          	jra	L371
 913  0060               L561:
 914                     ; 481     switch (CLK_IT)
 915  0060 1e01          	ldw	x,(OFST+1,sp)
 917                     ; 489     default:
 917                     ; 490       break;
 918  0062 1d000c        	subw	x,#12
 919  0065 270b          	jreq	L161
 920  0067 1d0010        	subw	x,#16
 921  006a 260a          	jrne	L371
 922                     ; 483     case CLK_IT_SWIF: /* Disable the clock switch interrupt */
 922                     ; 484       CLK->SWCR  &= (uint8_t)(~CLK_SWCR_SWIEN);
 923  006c 721550c5      	bres	20677,#2
 924                     ; 485       break;
 925  0070 2004          	jra	L371
 926  0072               L161:
 927                     ; 486     case CLK_IT_CSSD: /* Disable the clock security system detection interrupt */
 927                     ; 487       CLK->CSSR &= (uint8_t)(~CLK_CSSR_CSSDIE);
 928  0072 721550c8      	bres	20680,#2
 929                     ; 488       break;
 930  0076               L371:
 931                     ; 493 }
 932  0076 85            	popw	x
 933  0077 81            	ret
 934  0078               L361:
 935                     ; 489     default:
 935                     ; 490       break;
 936  0078 20fc          	jra	L371
 937  007a               L771:
 938  007a 20fa          	jra	L371
 940                     ; 500 void CLK_SYSCLKConfig(CLK_Prescaler_TypeDef CLK_Prescaler)
 940                     ; 501 {
 941                     .text:	section	.text,new
 942  0000               _CLK_SYSCLKConfig:
 943  0000 89            	pushw	x
 944       00000000      OFST:	set	0
 946                     ; 503   assert_param(IS_CLK_PRESCALER_OK(CLK_Prescaler));
 947  0001 a30000        	cpw	x,#0
 948  0004 2737          	jreq	L622
 949  0006 a30008        	cpw	x,#8
 950  0009 2732          	jreq	L622
 951  000b a30010        	cpw	x,#16
 952  000e 272d          	jreq	L622
 953  0010 a30018        	cpw	x,#24
 954  0013 2728          	jreq	L622
 955  0015 a30080        	cpw	x,#128
 956  0018 2723          	jreq	L622
 957  001a a30081        	cpw	x,#129
 958  001d 271e          	jreq	L622
 959  001f a30082        	cpw	x,#130
 960  0022 2719          	jreq	L622
 961  0024 a30083        	cpw	x,#131
 962  0027 2714          	jreq	L622
 963  0029 a30084        	cpw	x,#132
 964  002c 270f          	jreq	L622
 965  002e a30085        	cpw	x,#133
 966  0031 270a          	jreq	L622
 967  0033 a30086        	cpw	x,#134
 968  0036 2705          	jreq	L622
 969  0038 a30087        	cpw	x,#135
 970  003b 2603          	jrne	L422
 971  003d               L622:
 972  003d 4f            	clr	a
 973  003e 2010          	jra	L032
 974  0040               L422:
 975  0040 ae01f7        	ldw	x,#503
 976  0043 89            	pushw	x
 977  0044 ae0000        	ldw	x,#0
 978  0047 89            	pushw	x
 979  0048 ae000c        	ldw	x,#L31
 980  004b cd0000        	call	_assert_failed
 982  004e 5b04          	addw	sp,#4
 983  0050               L032:
 984                     ; 505   if (((uint8_t)CLK_Prescaler & (uint8_t)0x80) == 0x00) /* Bit7 = 0 means HSI divider */
 985  0050 7b02          	ld	a,(OFST+2,sp)
 986  0052 a580          	bcp	a,#128
 987  0054 2614          	jrne	L102
 988                     ; 507     CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_HSIDIV);
 989  0056 c650c6        	ld	a,20678
 990  0059 a4e7          	and	a,#231
 991  005b c750c6        	ld	20678,a
 992                     ; 508     CLK->CKDIVR |= (uint8_t)((uint8_t)CLK_Prescaler & (uint8_t)CLK_CKDIVR_HSIDIV);
 993  005e 7b02          	ld	a,(OFST+2,sp)
 994  0060 a418          	and	a,#24
 995  0062 ca50c6        	or	a,20678
 996  0065 c750c6        	ld	20678,a
 998  0068 2012          	jra	L302
 999  006a               L102:
1000                     ; 512     CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_CPUDIV);
1001  006a c650c6        	ld	a,20678
1002  006d a4f8          	and	a,#248
1003  006f c750c6        	ld	20678,a
1004                     ; 513     CLK->CKDIVR |= (uint8_t)((uint8_t)CLK_Prescaler & (uint8_t)CLK_CKDIVR_CPUDIV);
1005  0072 7b02          	ld	a,(OFST+2,sp)
1006  0074 a407          	and	a,#7
1007  0076 ca50c6        	or	a,20678
1008  0079 c750c6        	ld	20678,a
1009  007c               L302:
1010                     ; 515 }
1011  007c 85            	popw	x
1012  007d 81            	ret
1014                     ; 523 void CLK_SWIMConfig(CLK_SWIMDivider_TypeDef CLK_SWIMDivider)
1014                     ; 524 {
1015                     .text:	section	.text,new
1016  0000               _CLK_SWIMConfig:
1017  0000 89            	pushw	x
1018       00000000      OFST:	set	0
1020                     ; 526   assert_param(IS_CLK_SWIMDIVIDER_OK(CLK_SWIMDivider));
1021  0001 a30000        	cpw	x,#0
1022  0004 2705          	jreq	L632
1023  0006 a30001        	cpw	x,#1
1024  0009 2603          	jrne	L432
1025  000b               L632:
1026  000b 4f            	clr	a
1027  000c 2010          	jra	L042
1028  000e               L432:
1029  000e ae020e        	ldw	x,#526
1030  0011 89            	pushw	x
1031  0012 ae0000        	ldw	x,#0
1032  0015 89            	pushw	x
1033  0016 ae000c        	ldw	x,#L31
1034  0019 cd0000        	call	_assert_failed
1036  001c 5b04          	addw	sp,#4
1037  001e               L042:
1038                     ; 528   if (CLK_SWIMDivider != CLK_SWIMDIVIDER_2)
1039  001e 1e01          	ldw	x,(OFST+1,sp)
1040  0020 2706          	jreq	L502
1041                     ; 531     CLK->SWIMCCR |= CLK_SWIMCCR_SWIMDIV;
1042  0022 721050cd      	bset	20685,#0
1044  0026 2004          	jra	L702
1045  0028               L502:
1046                     ; 536     CLK->SWIMCCR &= (uint8_t)(~CLK_SWIMCCR_SWIMDIV);
1047  0028 721150cd      	bres	20685,#0
1048  002c               L702:
1049                     ; 538 }
1050  002c 85            	popw	x
1051  002d 81            	ret
1053                     ; 547 void CLK_ClockSecuritySystemEnable(void)
1053                     ; 548 {
1054                     .text:	section	.text,new
1055  0000               _CLK_ClockSecuritySystemEnable:
1057                     ; 550   CLK->CSSR |= CLK_CSSR_CSSEN;
1058  0000 721050c8      	bset	20680,#0
1059                     ; 551 }
1060  0004 81            	ret
1062                     ; 559 CLK_Source_TypeDef CLK_GetSYSCLKSource(void)
1062                     ; 560 {
1063                     .text:	section	.text,new
1064  0000               _CLK_GetSYSCLKSource:
1066                     ; 561   return((CLK_Source_TypeDef)CLK->CMSR);
1067  0000 c650c3        	ld	a,20675
1068  0003 5f            	clrw	x
1069  0004 97            	ld	xl,a
1071  0005 81            	ret
1073                     ; 569 uint32_t CLK_GetClockFreq(void)
1073                     ; 570 {
1074                     .text:	section	.text,new
1075  0000               _CLK_GetClockFreq:
1076  0000 520b          	subw	sp,#11
1077       0000000b      OFST:	set	11
1079                     ; 571   uint32_t clockfrequency = 0;
1080                     ; 572   CLK_Source_TypeDef clocksource = CLK_SOURCE_HSI;
1081                     ; 573   uint8_t tmp = 0, presc = 0;
1083                     ; 576   clocksource = (CLK_Source_TypeDef)CLK->CMSR;
1084  0002 c650c3        	ld	a,20675
1085  0005 5f            	clrw	x
1086  0006 97            	ld	xl,a
1087  0007 1f05          	ldw	(OFST-6,sp),x
1088                     ; 578   if (clocksource == CLK_SOURCE_HSI)
1089  0009 1e05          	ldw	x,(OFST-6,sp)
1090  000b a300e1        	cpw	x,#225
1091  000e 2641          	jrne	L112
1092                     ; 580     tmp = (uint8_t)(CLK->CKDIVR & CLK_CKDIVR_HSIDIV);
1093  0010 c650c6        	ld	a,20678
1094  0013 a418          	and	a,#24
1095  0015 6b0b          	ld	(OFST+0,sp),a
1096                     ; 581     tmp = (uint8_t)(tmp >> 3);
1097  0017 040b          	srl	(OFST+0,sp)
1098  0019 040b          	srl	(OFST+0,sp)
1099  001b 040b          	srl	(OFST+0,sp)
1100                     ; 582     presc = HSIDivFactor[tmp];
1101  001d 7b0b          	ld	a,(OFST+0,sp)
1102  001f 5f            	clrw	x
1103  0020 97            	ld	xl,a
1104  0021 d60000        	ld	a,(_HSIDivFactor,x)
1105  0024 6b0b          	ld	(OFST+0,sp),a
1106                     ; 583     clockfrequency = HSI_VALUE / presc;
1107  0026 7b0b          	ld	a,(OFST+0,sp)
1108  0028 b703          	ld	c_lreg+3,a
1109  002a 3f02          	clr	c_lreg+2
1110  002c 3f01          	clr	c_lreg+1
1111  002e 3f00          	clr	c_lreg
1112  0030 96            	ldw	x,sp
1113  0031 1c0001        	addw	x,#OFST-10
1114  0034 cd0000        	call	c_rtol
1116  0037 ae2400        	ldw	x,#9216
1117  003a bf02          	ldw	c_lreg+2,x
1118  003c ae00f4        	ldw	x,#244
1119  003f bf00          	ldw	c_lreg,x
1120  0041 96            	ldw	x,sp
1121  0042 1c0001        	addw	x,#OFST-10
1122  0045 cd0000        	call	c_ludv
1124  0048 96            	ldw	x,sp
1125  0049 1c0007        	addw	x,#OFST-4
1126  004c cd0000        	call	c_rtol
1129  004f 201d          	jra	L312
1130  0051               L112:
1131                     ; 585   else if ( clocksource == CLK_SOURCE_LSI)
1132  0051 1e05          	ldw	x,(OFST-6,sp)
1133  0053 a300d2        	cpw	x,#210
1134  0056 260c          	jrne	L512
1135                     ; 587     clockfrequency = LSI_VALUE;
1136  0058 aef400        	ldw	x,#62464
1137  005b 1f09          	ldw	(OFST-2,sp),x
1138  005d ae0001        	ldw	x,#1
1139  0060 1f07          	ldw	(OFST-4,sp),x
1141  0062 200a          	jra	L312
1142  0064               L512:
1143                     ; 591     clockfrequency = HSE_VALUE;
1144  0064 ae2400        	ldw	x,#9216
1145  0067 1f09          	ldw	(OFST-2,sp),x
1146  0069 ae00f4        	ldw	x,#244
1147  006c 1f07          	ldw	(OFST-4,sp),x
1148  006e               L312:
1149                     ; 594   return((uint32_t)clockfrequency);
1150  006e 96            	ldw	x,sp
1151  006f 1c0007        	addw	x,#OFST-4
1152  0072 cd0000        	call	c_ltor
1155  0075 5b0b          	addw	sp,#11
1156  0077 81            	ret
1158                     ; 604 void CLK_AdjustHSICalibrationValue(CLK_HSITrimValue_TypeDef CLK_HSICalibrationValue)
1158                     ; 605 {
1159                     .text:	section	.text,new
1160  0000               _CLK_AdjustHSICalibrationValue:
1161  0000 89            	pushw	x
1162       00000000      OFST:	set	0
1164                     ; 607   assert_param(IS_CLK_HSITRIMVALUE_OK(CLK_HSICalibrationValue));
1165  0001 a30000        	cpw	x,#0
1166  0004 2723          	jreq	L452
1167  0006 a30001        	cpw	x,#1
1168  0009 271e          	jreq	L452
1169  000b a30002        	cpw	x,#2
1170  000e 2719          	jreq	L452
1171  0010 a30003        	cpw	x,#3
1172  0013 2714          	jreq	L452
1173  0015 a30004        	cpw	x,#4
1174  0018 270f          	jreq	L452
1175  001a a30005        	cpw	x,#5
1176  001d 270a          	jreq	L452
1177  001f a30006        	cpw	x,#6
1178  0022 2705          	jreq	L452
1179  0024 a30007        	cpw	x,#7
1180  0027 2603          	jrne	L252
1181  0029               L452:
1182  0029 4f            	clr	a
1183  002a 2010          	jra	L652
1184  002c               L252:
1185  002c ae025f        	ldw	x,#607
1186  002f 89            	pushw	x
1187  0030 ae0000        	ldw	x,#0
1188  0033 89            	pushw	x
1189  0034 ae000c        	ldw	x,#L31
1190  0037 cd0000        	call	_assert_failed
1192  003a 5b04          	addw	sp,#4
1193  003c               L652:
1194                     ; 610   CLK->HSITRIMR = (uint8_t)( (uint8_t)(CLK->HSITRIMR & (uint8_t)(~CLK_HSITRIMR_HSITRIM))|((uint8_t)CLK_HSICalibrationValue));
1195  003c c650cc        	ld	a,20684
1196  003f a4f8          	and	a,#248
1197  0041 1a02          	or	a,(OFST+2,sp)
1198  0043 c750cc        	ld	20684,a
1199                     ; 611 }
1200  0046 85            	popw	x
1201  0047 81            	ret
1203                     ; 622 void CLK_SYSCLKEmergencyClear(void)
1203                     ; 623 {
1204                     .text:	section	.text,new
1205  0000               _CLK_SYSCLKEmergencyClear:
1207                     ; 624   CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWBSY);
1208  0000 721150c5      	bres	20677,#0
1209                     ; 625 }
1210  0004 81            	ret
1212                     ; 634 FlagStatus CLK_GetFlagStatus(CLK_Flag_TypeDef CLK_FLAG)
1212                     ; 635 {
1213                     .text:	section	.text,new
1214  0000               _CLK_GetFlagStatus:
1215  0000 89            	pushw	x
1216  0001 5203          	subw	sp,#3
1217       00000003      OFST:	set	3
1219                     ; 636   uint16_t statusreg = 0;
1220                     ; 637   uint8_t tmpreg = 0;
1221                     ; 638   FlagStatus bitstatus = RESET;
1222                     ; 641   assert_param(IS_CLK_FLAG_OK(CLK_FLAG));
1223  0003 a30110        	cpw	x,#272
1224  0006 2728          	jreq	L662
1225  0008 a30102        	cpw	x,#258
1226  000b 2723          	jreq	L662
1227  000d a30202        	cpw	x,#514
1228  0010 271e          	jreq	L662
1229  0012 a30308        	cpw	x,#776
1230  0015 2719          	jreq	L662
1231  0017 a30301        	cpw	x,#769
1232  001a 2714          	jreq	L662
1233  001c a30408        	cpw	x,#1032
1234  001f 270f          	jreq	L662
1235  0021 a30402        	cpw	x,#1026
1236  0024 270a          	jreq	L662
1237  0026 a30504        	cpw	x,#1284
1238  0029 2705          	jreq	L662
1239  002b a30502        	cpw	x,#1282
1240  002e 2603          	jrne	L462
1241  0030               L662:
1242  0030 4f            	clr	a
1243  0031 2010          	jra	L072
1244  0033               L462:
1245  0033 ae0281        	ldw	x,#641
1246  0036 89            	pushw	x
1247  0037 ae0000        	ldw	x,#0
1248  003a 89            	pushw	x
1249  003b ae000c        	ldw	x,#L31
1250  003e cd0000        	call	_assert_failed
1252  0041 5b04          	addw	sp,#4
1253  0043               L072:
1254                     ; 644   statusreg = (uint16_t)((uint16_t)CLK_FLAG & (uint16_t)0xFF00);
1255  0043 7b04          	ld	a,(OFST+1,sp)
1256  0045 97            	ld	xl,a
1257  0046 7b05          	ld	a,(OFST+2,sp)
1258  0048 9f            	ld	a,xl
1259  0049 a4ff          	and	a,#255
1260  004b 97            	ld	xl,a
1261  004c 4f            	clr	a
1262  004d 02            	rlwa	x,a
1263  004e 1f02          	ldw	(OFST-1,sp),x
1264  0050 01            	rrwa	x,a
1265                     ; 647   if (statusreg == 0x0100) /* The flag to check is in ICKRregister */
1266  0051 1e02          	ldw	x,(OFST-1,sp)
1267  0053 a30100        	cpw	x,#256
1268  0056 2607          	jrne	L122
1269                     ; 649     tmpreg = CLK->ICKR;
1270  0058 c650c0        	ld	a,20672
1271  005b 6b01          	ld	(OFST-2,sp),a
1273  005d 202f          	jra	L322
1274  005f               L122:
1275                     ; 651   else if (statusreg == 0x0200) /* The flag to check is in ECKRregister */
1276  005f 1e02          	ldw	x,(OFST-1,sp)
1277  0061 a30200        	cpw	x,#512
1278  0064 2607          	jrne	L522
1279                     ; 653     tmpreg = CLK->ECKR;
1280  0066 c650c1        	ld	a,20673
1281  0069 6b01          	ld	(OFST-2,sp),a
1283  006b 2021          	jra	L322
1284  006d               L522:
1285                     ; 655   else if (statusreg == 0x0300) /* The flag to check is in SWIC register */
1286  006d 1e02          	ldw	x,(OFST-1,sp)
1287  006f a30300        	cpw	x,#768
1288  0072 2607          	jrne	L132
1289                     ; 657     tmpreg = CLK->SWCR;
1290  0074 c650c5        	ld	a,20677
1291  0077 6b01          	ld	(OFST-2,sp),a
1293  0079 2013          	jra	L322
1294  007b               L132:
1295                     ; 659   else if (statusreg == 0x0400) /* The flag to check is in CSS register */
1296  007b 1e02          	ldw	x,(OFST-1,sp)
1297  007d a30400        	cpw	x,#1024
1298  0080 2607          	jrne	L532
1299                     ; 661     tmpreg = CLK->CSSR;
1300  0082 c650c8        	ld	a,20680
1301  0085 6b01          	ld	(OFST-2,sp),a
1303  0087 2005          	jra	L322
1304  0089               L532:
1305                     ; 665     tmpreg = CLK->CCOR;
1306  0089 c650c9        	ld	a,20681
1307  008c 6b01          	ld	(OFST-2,sp),a
1308  008e               L322:
1309                     ; 668   if ((tmpreg & (uint8_t)CLK_FLAG) != (uint8_t)RESET)
1310  008e 7b05          	ld	a,(OFST+2,sp)
1311  0090 1501          	bcp	a,(OFST-2,sp)
1312  0092 2707          	jreq	L142
1313                     ; 670     bitstatus = SET;
1314  0094 ae0001        	ldw	x,#1
1315  0097 1f02          	ldw	(OFST-1,sp),x
1317  0099 2003          	jra	L342
1318  009b               L142:
1319                     ; 674     bitstatus = RESET;
1320  009b 5f            	clrw	x
1321  009c 1f02          	ldw	(OFST-1,sp),x
1322  009e               L342:
1323                     ; 678   return((FlagStatus)bitstatus);
1324  009e 1e02          	ldw	x,(OFST-1,sp)
1326  00a0 5b05          	addw	sp,#5
1327  00a2 81            	ret
1329                     ; 687 ITStatus CLK_GetITStatus(CLK_IT_TypeDef CLK_IT)
1329                     ; 688 {
1330                     .text:	section	.text,new
1331  0000               _CLK_GetITStatus:
1332  0000 89            	pushw	x
1333  0001 89            	pushw	x
1334       00000002      OFST:	set	2
1336                     ; 689   ITStatus bitstatus = RESET;
1337                     ; 692   assert_param(IS_CLK_IT_OK(CLK_IT));
1338  0002 a3000c        	cpw	x,#12
1339  0005 2705          	jreq	L672
1340  0007 a3001c        	cpw	x,#28
1341  000a 2603          	jrne	L472
1342  000c               L672:
1343  000c 4f            	clr	a
1344  000d 2010          	jra	L003
1345  000f               L472:
1346  000f ae02b4        	ldw	x,#692
1347  0012 89            	pushw	x
1348  0013 ae0000        	ldw	x,#0
1349  0016 89            	pushw	x
1350  0017 ae000c        	ldw	x,#L31
1351  001a cd0000        	call	_assert_failed
1353  001d 5b04          	addw	sp,#4
1354  001f               L003:
1355                     ; 694   if (CLK_IT == CLK_IT_SWIF)
1356  001f 1e03          	ldw	x,(OFST+1,sp)
1357  0021 a3001c        	cpw	x,#28
1358  0024 2615          	jrne	L542
1359                     ; 697     if ((CLK->SWCR & (uint8_t)CLK_IT) == (uint8_t)0x0C)
1360  0026 c650c5        	ld	a,20677
1361  0029 1404          	and	a,(OFST+2,sp)
1362  002b a10c          	cp	a,#12
1363  002d 2607          	jrne	L742
1364                     ; 699       bitstatus = SET;
1365  002f ae0001        	ldw	x,#1
1366  0032 1f01          	ldw	(OFST-1,sp),x
1368  0034 2018          	jra	L352
1369  0036               L742:
1370                     ; 703       bitstatus = RESET;
1371  0036 5f            	clrw	x
1372  0037 1f01          	ldw	(OFST-1,sp),x
1373  0039 2013          	jra	L352
1374  003b               L542:
1375                     ; 709     if ((CLK->CSSR & (uint8_t)CLK_IT) == (uint8_t)0x0C)
1376  003b c650c8        	ld	a,20680
1377  003e 1404          	and	a,(OFST+2,sp)
1378  0040 a10c          	cp	a,#12
1379  0042 2607          	jrne	L552
1380                     ; 711       bitstatus = SET;
1381  0044 ae0001        	ldw	x,#1
1382  0047 1f01          	ldw	(OFST-1,sp),x
1384  0049 2003          	jra	L352
1385  004b               L552:
1386                     ; 715       bitstatus = RESET;
1387  004b 5f            	clrw	x
1388  004c 1f01          	ldw	(OFST-1,sp),x
1389  004e               L352:
1390                     ; 720   return bitstatus;
1391  004e 1e01          	ldw	x,(OFST-1,sp)
1393  0050 5b04          	addw	sp,#4
1394  0052 81            	ret
1396                     ; 729 void CLK_ClearITPendingBit(CLK_IT_TypeDef CLK_IT)
1396                     ; 730 {
1397                     .text:	section	.text,new
1398  0000               _CLK_ClearITPendingBit:
1399  0000 89            	pushw	x
1400       00000000      OFST:	set	0
1402                     ; 732   assert_param(IS_CLK_IT_OK(CLK_IT));
1403  0001 a3000c        	cpw	x,#12
1404  0004 2705          	jreq	L603
1405  0006 a3001c        	cpw	x,#28
1406  0009 2603          	jrne	L403
1407  000b               L603:
1408  000b 4f            	clr	a
1409  000c 2010          	jra	L013
1410  000e               L403:
1411  000e ae02dc        	ldw	x,#732
1412  0011 89            	pushw	x
1413  0012 ae0000        	ldw	x,#0
1414  0015 89            	pushw	x
1415  0016 ae000c        	ldw	x,#L31
1416  0019 cd0000        	call	_assert_failed
1418  001c 5b04          	addw	sp,#4
1419  001e               L013:
1420                     ; 734   if (CLK_IT == (uint8_t)CLK_IT_CSSD)
1421  001e 1e01          	ldw	x,(OFST+1,sp)
1422  0020 a3000c        	cpw	x,#12
1423  0023 2606          	jrne	L162
1424                     ; 737     CLK->CSSR &= (uint8_t)(~CLK_CSSR_CSSD);
1425  0025 721750c8      	bres	20680,#3
1427  0029 2004          	jra	L362
1428  002b               L162:
1429                     ; 742     CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIF);
1430  002b 721750c5      	bres	20677,#3
1431  002f               L362:
1432                     ; 745 }
1433  002f 85            	popw	x
1434  0030 81            	ret
1436                     	xdef	_CLKPrescTable
1437                     	xdef	_HSIDivFactor
1438                     	xdef	_CLK_ClearITPendingBit
1439                     	xdef	_CLK_GetITStatus
1440                     	xdef	_CLK_GetFlagStatus
1441                     	xdef	_CLK_GetSYSCLKSource
1442                     	xdef	_CLK_GetClockFreq
1443                     	xdef	_CLK_AdjustHSICalibrationValue
1444                     	xdef	_CLK_SYSCLKEmergencyClear
1445                     	xdef	_CLK_ClockSecuritySystemEnable
1446                     	xdef	_CLK_SWIMConfig
1447                     	xdef	_CLK_SYSCLKConfig
1448                     	xdef	_CLK_ITConfig
1449                     	xdef	_CLK_CCOConfig
1450                     	xdef	_CLK_HSIPrescalerConfig
1451                     	xdef	_CLK_ClockSwitchConfig
1452                     	xdef	_CLK_PeripheralClockConfig
1453                     	xdef	_CLK_SlowActiveHaltWakeUpCmd
1454                     	xdef	_CLK_FastHaltWakeUpCmd
1455                     	xdef	_CLK_ClockSwitchCmd
1456                     	xdef	_CLK_CCOCmd
1457                     	xdef	_CLK_LSICmd
1458                     	xdef	_CLK_HSICmd
1459                     	xdef	_CLK_HSECmd
1460                     	xdef	_CLK_DeInit
1461                     	xref	_assert_failed
1462                     	switch	.const
1463  000c               L31:
1464  000c 2e2e5c2e2e5c  	dc.b	"..\..\..\libraries"
1465  001e 5c73746d3873  	dc.b	"\stm8s_stdperiph_d"
1466  0030 72697665725c  	dc.b	"river\src\stm8s_cl"
1467  0042 6b2e6300      	dc.b	"k.c",0
1468                     	xref.b	c_lreg
1469                     	xref.b	c_x
1470                     	xref	c_ltor
1471                     	xref	c_ludv
1472                     	xref	c_rtol
1473                     	end

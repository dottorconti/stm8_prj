   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.10.2 - 02 Nov 2011
   3                     ; Generator (Limited) V4.3.7 - 29 Nov 2011
   4                     ; Optimizer V4.3.6 - 29 Nov 2011
  83                     ; 87 void FLASH_Unlock(FLASH_MemType_TypeDef FLASH_MemType)
  83                     ; 88 {
  85                     .text:	section	.text,new
  86  0000               _FLASH_Unlock:
  88  0000 89            	pushw	x
  89       00000000      OFST:	set	0
  92                     ; 90   assert_param(IS_MEMORY_TYPE_OK(FLASH_MemType));
  94  0001 a300fd        	cpw	x,#253
  95  0004 2713          	jreq	L21
  96  0006 a300f7        	cpw	x,#247
  97  0009 270e          	jreq	L21
  98  000b ae005a        	ldw	x,#90
  99  000e 89            	pushw	x
 100  000f 5f            	clrw	x
 101  0010 89            	pushw	x
 102  0011 ae0010        	ldw	x,#L73
 103  0014 cd0000        	call	_assert_failed
 105  0017 5b04          	addw	sp,#4
 106  0019               L21:
 107                     ; 93   if(FLASH_MemType == FLASH_MEMTYPE_PROG)
 109  0019 1e01          	ldw	x,(OFST+1,sp)
 110  001b a300fd        	cpw	x,#253
 111  001e 260a          	jrne	L14
 112                     ; 95     FLASH->PUKR = FLASH_RASS_KEY1;
 114  0020 35565062      	mov	20578,#86
 115                     ; 96     FLASH->PUKR = FLASH_RASS_KEY2;
 117  0024 35ae5062      	mov	20578,#174
 119  0028 2008          	jra	L34
 120  002a               L14:
 121                     ; 101     FLASH->DUKR = FLASH_RASS_KEY2; /* Warning: keys are reversed on data memory !!! */
 123  002a 35ae5064      	mov	20580,#174
 124                     ; 102     FLASH->DUKR = FLASH_RASS_KEY1;
 126  002e 35565064      	mov	20580,#86
 127  0032               L34:
 128                     ; 104 }
 131  0032 85            	popw	x
 132  0033 81            	ret	
 168                     ; 112 void FLASH_Lock(FLASH_MemType_TypeDef FLASH_MemType)
 168                     ; 113 {
 169                     .text:	section	.text,new
 170  0000               _FLASH_Lock:
 172  0000 89            	pushw	x
 173       00000000      OFST:	set	0
 176                     ; 115   assert_param(IS_MEMORY_TYPE_OK(FLASH_MemType));
 178  0001 a300fd        	cpw	x,#253
 179  0004 2713          	jreq	L42
 180  0006 a300f7        	cpw	x,#247
 181  0009 270e          	jreq	L42
 182  000b ae0073        	ldw	x,#115
 183  000e 89            	pushw	x
 184  000f 5f            	clrw	x
 185  0010 89            	pushw	x
 186  0011 ae0010        	ldw	x,#L73
 187  0014 cd0000        	call	_assert_failed
 189  0017 5b04          	addw	sp,#4
 190  0019               L42:
 191                     ; 118   FLASH->IAPSR &= (uint8_t)FLASH_MemType;
 193  0019 c6505f        	ld	a,20575
 194  001c 1402          	and	a,(OFST+2,sp)
 195  001e c7505f        	ld	20575,a
 196                     ; 119 }
 199  0021 85            	popw	x
 200  0022 81            	ret	
 223                     ; 126 void FLASH_DeInit(void)
 223                     ; 127 {
 224                     .text:	section	.text,new
 225  0000               _FLASH_DeInit:
 229                     ; 128   FLASH->CR1 = FLASH_CR1_RESET_VALUE;
 231  0000 725f505a      	clr	20570
 232                     ; 129   FLASH->CR2 = FLASH_CR2_RESET_VALUE;
 234  0004 725f505b      	clr	20571
 235                     ; 130   FLASH->NCR2 = FLASH_NCR2_RESET_VALUE;
 237  0008 35ff505c      	mov	20572,#255
 238                     ; 131   FLASH->IAPSR &= (uint8_t)(~FLASH_IAPSR_DUL);
 240  000c 7217505f      	bres	20575,#3
 241                     ; 132   FLASH->IAPSR &= (uint8_t)(~FLASH_IAPSR_PUL);
 243  0010 7213505f      	bres	20575,#1
 244                     ; 133   (void) FLASH->IAPSR; /* Reading of this register causes the clearing of status flags */
 246  0014 c6505f        	ld	a,20575
 247                     ; 134 }
 250  0017 81            	ret	
 306                     ; 142 void FLASH_ITConfig(FunctionalState NewState)
 306                     ; 143 {
 307                     .text:	section	.text,new
 308  0000               _FLASH_ITConfig:
 310  0000 89            	pushw	x
 311       00000000      OFST:	set	0
 314                     ; 145   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 316  0001 5d            	tnzw	x
 317  0002 2711          	jreq	L04
 318  0004 5a            	decw	x
 319  0005 270e          	jreq	L04
 320  0007 ae0091        	ldw	x,#145
 321  000a 89            	pushw	x
 322  000b 5f            	clrw	x
 323  000c 89            	pushw	x
 324  000d ae0010        	ldw	x,#L73
 325  0010 cd0000        	call	_assert_failed
 327  0013 5b04          	addw	sp,#4
 328  0015               L04:
 329                     ; 147   if(NewState != DISABLE)
 331  0015 1e01          	ldw	x,(OFST+1,sp)
 332  0017 2706          	jreq	L121
 333                     ; 149     FLASH->CR1 |= FLASH_CR1_IE; /* Enables the interrupt sources */
 335  0019 7212505a      	bset	20570,#1
 337  001d 2004          	jra	L321
 338  001f               L121:
 339                     ; 153     FLASH->CR1 &= (uint8_t)(~FLASH_CR1_IE); /* Disables the interrupt sources */
 341  001f 7213505a      	bres	20570,#1
 342  0023               L321:
 343                     ; 155 }
 346  0023 85            	popw	x
 347  0024 81            	ret	
 382                     .const:	section	.text
 383  0000               L45:
 384  0000 00008000      	dc.l	32768
 385  0004               L65:
 386  0004 0000a000      	dc.l	40960
 387  0008               L06:
 388  0008 00004000      	dc.l	16384
 389  000c               L26:
 390  000c 00004280      	dc.l	17024
 391                     ; 164 void FLASH_EraseByte(uint32_t Address)
 391                     ; 165 {
 392                     .text:	section	.text,new
 393  0000               _FLASH_EraseByte:
 395       00000000      OFST:	set	0
 398                     ; 167   assert_param(IS_FLASH_ADDRESS_OK(Address));
 400  0000 96            	ldw	x,sp
 401  0001 1c0003        	addw	x,#OFST+3
 402  0004 cd0000        	call	c_ltor
 404  0007 ae0000        	ldw	x,#L45
 405  000a cd0000        	call	c_lcmp
 407  000d 250f          	jrult	L25
 408  000f 96            	ldw	x,sp
 409  0010 1c0003        	addw	x,#OFST+3
 410  0013 cd0000        	call	c_ltor
 412  0016 ae0004        	ldw	x,#L65
 413  0019 cd0000        	call	c_lcmp
 415  001c 252c          	jrult	L46
 416  001e               L25:
 417  001e 96            	ldw	x,sp
 418  001f 1c0003        	addw	x,#OFST+3
 419  0022 cd0000        	call	c_ltor
 421  0025 ae0008        	ldw	x,#L06
 422  0028 cd0000        	call	c_lcmp
 424  002b 250f          	jrult	L64
 425  002d 96            	ldw	x,sp
 426  002e 1c0003        	addw	x,#OFST+3
 427  0031 cd0000        	call	c_ltor
 429  0034 ae000c        	ldw	x,#L26
 430  0037 cd0000        	call	c_lcmp
 432  003a 250e          	jrult	L46
 433  003c               L64:
 434  003c ae00a7        	ldw	x,#167
 435  003f 89            	pushw	x
 436  0040 5f            	clrw	x
 437  0041 89            	pushw	x
 438  0042 ae0010        	ldw	x,#L73
 439  0045 cd0000        	call	_assert_failed
 441  0048 5b04          	addw	sp,#4
 442  004a               L46:
 443                     ; 170   *(PointerAttr uint8_t*) (MemoryAddressCast)Address = FLASH_CLEAR_BYTE; 
 445  004a 1e05          	ldw	x,(OFST+5,sp)
 446  004c 7f            	clr	(x)
 447                     ; 171 }
 450  004d 81            	ret	
 494                     ; 181 void FLASH_ProgramByte(uint32_t Address, uint8_t Data)
 494                     ; 182 {
 495                     .text:	section	.text,new
 496  0000               _FLASH_ProgramByte:
 498       00000000      OFST:	set	0
 501                     ; 184   assert_param(IS_FLASH_ADDRESS_OK(Address));
 503  0000 96            	ldw	x,sp
 504  0001 1c0003        	addw	x,#OFST+3
 505  0004 cd0000        	call	c_ltor
 507  0007 ae0000        	ldw	x,#L45
 508  000a cd0000        	call	c_lcmp
 510  000d 250f          	jrult	L67
 511  000f 96            	ldw	x,sp
 512  0010 1c0003        	addw	x,#OFST+3
 513  0013 cd0000        	call	c_ltor
 515  0016 ae0004        	ldw	x,#L65
 516  0019 cd0000        	call	c_lcmp
 518  001c 252c          	jrult	L001
 519  001e               L67:
 520  001e 96            	ldw	x,sp
 521  001f 1c0003        	addw	x,#OFST+3
 522  0022 cd0000        	call	c_ltor
 524  0025 ae0008        	ldw	x,#L06
 525  0028 cd0000        	call	c_lcmp
 527  002b 250f          	jrult	L27
 528  002d 96            	ldw	x,sp
 529  002e 1c0003        	addw	x,#OFST+3
 530  0031 cd0000        	call	c_ltor
 532  0034 ae000c        	ldw	x,#L26
 533  0037 cd0000        	call	c_lcmp
 535  003a 250e          	jrult	L001
 536  003c               L27:
 537  003c ae00b8        	ldw	x,#184
 538  003f 89            	pushw	x
 539  0040 5f            	clrw	x
 540  0041 89            	pushw	x
 541  0042 ae0010        	ldw	x,#L73
 542  0045 cd0000        	call	_assert_failed
 544  0048 5b04          	addw	sp,#4
 545  004a               L001:
 546                     ; 185   *(PointerAttr uint8_t*) (MemoryAddressCast)Address = Data;
 548  004a 1e05          	ldw	x,(OFST+5,sp)
 549  004c 7b07          	ld	a,(OFST+7,sp)
 550  004e f7            	ld	(x),a
 551                     ; 186 }
 554  004f 81            	ret	
 589                     ; 195 uint8_t FLASH_ReadByte(uint32_t Address)
 589                     ; 196 {
 590                     .text:	section	.text,new
 591  0000               _FLASH_ReadByte:
 593       00000000      OFST:	set	0
 596                     ; 198   assert_param(IS_FLASH_ADDRESS_OK(Address));
 598  0000 96            	ldw	x,sp
 599  0001 1c0003        	addw	x,#OFST+3
 600  0004 cd0000        	call	c_ltor
 602  0007 ae0000        	ldw	x,#L45
 603  000a cd0000        	call	c_lcmp
 605  000d 250f          	jrult	L211
 606  000f 96            	ldw	x,sp
 607  0010 1c0003        	addw	x,#OFST+3
 608  0013 cd0000        	call	c_ltor
 610  0016 ae0004        	ldw	x,#L65
 611  0019 cd0000        	call	c_lcmp
 613  001c 252c          	jrult	L411
 614  001e               L211:
 615  001e 96            	ldw	x,sp
 616  001f 1c0003        	addw	x,#OFST+3
 617  0022 cd0000        	call	c_ltor
 619  0025 ae0008        	ldw	x,#L06
 620  0028 cd0000        	call	c_lcmp
 622  002b 250f          	jrult	L601
 623  002d 96            	ldw	x,sp
 624  002e 1c0003        	addw	x,#OFST+3
 625  0031 cd0000        	call	c_ltor
 627  0034 ae000c        	ldw	x,#L26
 628  0037 cd0000        	call	c_lcmp
 630  003a 250e          	jrult	L411
 631  003c               L601:
 632  003c ae00c6        	ldw	x,#198
 633  003f 89            	pushw	x
 634  0040 5f            	clrw	x
 635  0041 89            	pushw	x
 636  0042 ae0010        	ldw	x,#L73
 637  0045 cd0000        	call	_assert_failed
 639  0048 5b04          	addw	sp,#4
 640  004a               L411:
 641                     ; 201   return(*(PointerAttr uint8_t *) (MemoryAddressCast)Address); 
 643  004a 1e05          	ldw	x,(OFST+5,sp)
 644  004c f6            	ld	a,(x)
 647  004d 81            	ret	
 691                     ; 212 void FLASH_ProgramWord(uint32_t Address, uint32_t Data)
 691                     ; 213 {
 692                     .text:	section	.text,new
 693  0000               _FLASH_ProgramWord:
 695       00000000      OFST:	set	0
 698                     ; 215   assert_param(IS_FLASH_ADDRESS_OK(Address));
 700  0000 96            	ldw	x,sp
 701  0001 1c0003        	addw	x,#OFST+3
 702  0004 cd0000        	call	c_ltor
 704  0007 ae0000        	ldw	x,#L45
 705  000a cd0000        	call	c_lcmp
 707  000d 250f          	jrult	L621
 708  000f 96            	ldw	x,sp
 709  0010 1c0003        	addw	x,#OFST+3
 710  0013 cd0000        	call	c_ltor
 712  0016 ae0004        	ldw	x,#L65
 713  0019 cd0000        	call	c_lcmp
 715  001c 252c          	jrult	L031
 716  001e               L621:
 717  001e 96            	ldw	x,sp
 718  001f 1c0003        	addw	x,#OFST+3
 719  0022 cd0000        	call	c_ltor
 721  0025 ae0008        	ldw	x,#L06
 722  0028 cd0000        	call	c_lcmp
 724  002b 250f          	jrult	L221
 725  002d 96            	ldw	x,sp
 726  002e 1c0003        	addw	x,#OFST+3
 727  0031 cd0000        	call	c_ltor
 729  0034 ae000c        	ldw	x,#L26
 730  0037 cd0000        	call	c_lcmp
 732  003a 250e          	jrult	L031
 733  003c               L221:
 734  003c ae00d7        	ldw	x,#215
 735  003f 89            	pushw	x
 736  0040 5f            	clrw	x
 737  0041 89            	pushw	x
 738  0042 ae0010        	ldw	x,#L73
 739  0045 cd0000        	call	_assert_failed
 741  0048 5b04          	addw	sp,#4
 742  004a               L031:
 743                     ; 218   FLASH->CR2 |= FLASH_CR2_WPRG;
 745  004a 721c505b      	bset	20571,#6
 746                     ; 219   FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NWPRG);
 748  004e 721d505c      	bres	20572,#6
 749                     ; 222   *((PointerAttr uint8_t*)(MemoryAddressCast)Address)       = *((uint8_t*)(&Data));
 751  0052 1e05          	ldw	x,(OFST+5,sp)
 752  0054 7b07          	ld	a,(OFST+7,sp)
 753  0056 f7            	ld	(x),a
 754                     ; 224   *(((PointerAttr uint8_t*)(MemoryAddressCast)Address) + 1) = *((uint8_t*)(&Data)+1); 
 756  0057 7b08          	ld	a,(OFST+8,sp)
 757  0059 e701          	ld	(1,x),a
 758                     ; 226   *(((PointerAttr uint8_t*)(MemoryAddressCast)Address) + 2) = *((uint8_t*)(&Data)+2); 
 760  005b 7b09          	ld	a,(OFST+9,sp)
 761  005d e702          	ld	(2,x),a
 762                     ; 228   *(((PointerAttr uint8_t*)(MemoryAddressCast)Address) + 3) = *((uint8_t*)(&Data)+3); 
 764  005f 7b0a          	ld	a,(OFST+10,sp)
 765  0061 e703          	ld	(3,x),a
 766                     ; 229 }
 769  0063 81            	ret	
 815                     ; 237 void FLASH_ProgramOptionByte(uint16_t Address, uint8_t Data)
 815                     ; 238 {
 816                     .text:	section	.text,new
 817  0000               _FLASH_ProgramOptionByte:
 819  0000 89            	pushw	x
 820       00000000      OFST:	set	0
 823                     ; 240   assert_param(IS_OPTION_BYTE_ADDRESS_OK(Address));
 825  0001 a34800        	cpw	x,#18432
 826  0004 2505          	jrult	L631
 827  0006 a34880        	cpw	x,#18560
 828  0009 250e          	jrult	L041
 829  000b               L631:
 830  000b ae00f0        	ldw	x,#240
 831  000e 89            	pushw	x
 832  000f 5f            	clrw	x
 833  0010 89            	pushw	x
 834  0011 ae0010        	ldw	x,#L73
 835  0014 cd0000        	call	_assert_failed
 837  0017 5b04          	addw	sp,#4
 838  0019               L041:
 839                     ; 243   FLASH->CR2 |= FLASH_CR2_OPT;
 841  0019 721e505b      	bset	20571,#7
 842                     ; 244   FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NOPT);
 844  001d 721f505c      	bres	20572,#7
 845                     ; 247   if(Address == 0x4800)
 847  0021 1e01          	ldw	x,(OFST+1,sp)
 848  0023 a34800        	cpw	x,#18432
 849  0026 2605          	jrne	L742
 850                     ; 250     *((NEAR uint8_t*)Address) = Data;
 852  0028 7b05          	ld	a,(OFST+5,sp)
 853  002a f7            	ld	(x),a
 855  002b 2006          	jra	L152
 856  002d               L742:
 857                     ; 255     *((NEAR uint8_t*)Address) = Data;
 859  002d 7b05          	ld	a,(OFST+5,sp)
 860  002f f7            	ld	(x),a
 861                     ; 256     *((NEAR uint8_t*)((uint16_t)(Address + 1))) = (uint8_t)(~Data);
 863  0030 43            	cpl	a
 864  0031 e701          	ld	(1,x),a
 865  0033               L152:
 866                     ; 258   FLASH_WaitForLastOperation(FLASH_MEMTYPE_PROG);
 868  0033 ae00fd        	ldw	x,#253
 869  0036 cd0000        	call	_FLASH_WaitForLastOperation
 871                     ; 261   FLASH->CR2 &= (uint8_t)(~FLASH_CR2_OPT);
 873  0039 721f505b      	bres	20571,#7
 874                     ; 262   FLASH->NCR2 |= FLASH_NCR2_NOPT;
 876                     ; 263 }
 879  003d 85            	popw	x
 880  003e 721e505c      	bset	20572,#7
 881  0042 81            	ret	
 918                     ; 270 void FLASH_EraseOptionByte(uint16_t Address)
 918                     ; 271 {
 919                     .text:	section	.text,new
 920  0000               _FLASH_EraseOptionByte:
 922  0000 89            	pushw	x
 923       00000000      OFST:	set	0
 926                     ; 273   assert_param(IS_OPTION_BYTE_ADDRESS_OK(Address));
 928  0001 a34800        	cpw	x,#18432
 929  0004 2505          	jrult	L051
 930  0006 a34880        	cpw	x,#18560
 931  0009 250e          	jrult	L251
 932  000b               L051:
 933  000b ae0111        	ldw	x,#273
 934  000e 89            	pushw	x
 935  000f 5f            	clrw	x
 936  0010 89            	pushw	x
 937  0011 ae0010        	ldw	x,#L73
 938  0014 cd0000        	call	_assert_failed
 940  0017 5b04          	addw	sp,#4
 941  0019               L251:
 942                     ; 276   FLASH->CR2 |= FLASH_CR2_OPT;
 944  0019 721e505b      	bset	20571,#7
 945                     ; 277   FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NOPT);
 947  001d 721f505c      	bres	20572,#7
 948                     ; 280   if(Address == 0x4800)
 950  0021 1e01          	ldw	x,(OFST+1,sp)
 951  0023 a34800        	cpw	x,#18432
 952  0026 2603          	jrne	L172
 953                     ; 283     *((NEAR uint8_t*)Address) = FLASH_CLEAR_BYTE;
 955  0028 7f            	clr	(x)
 957  0029 2005          	jra	L372
 958  002b               L172:
 959                     ; 288     *((NEAR uint8_t*)Address) = FLASH_CLEAR_BYTE;
 961  002b 7f            	clr	(x)
 962                     ; 289     *((NEAR uint8_t*)((uint16_t)(Address + (uint16_t)1 ))) = FLASH_SET_BYTE;
 964  002c a6ff          	ld	a,#255
 965  002e e701          	ld	(1,x),a
 966  0030               L372:
 967                     ; 291   FLASH_WaitForLastOperation(FLASH_MEMTYPE_PROG);
 969  0030 ae00fd        	ldw	x,#253
 970  0033 cd0000        	call	_FLASH_WaitForLastOperation
 972                     ; 294   FLASH->CR2 &= (uint8_t)(~FLASH_CR2_OPT);
 974  0036 721f505b      	bres	20571,#7
 975                     ; 295   FLASH->NCR2 |= FLASH_NCR2_NOPT;
 977                     ; 296 }
 980  003a 85            	popw	x
 981  003b 721e505c      	bset	20572,#7
 982  003f 81            	ret	
1046                     ; 303 uint16_t FLASH_ReadOptionByte(uint16_t Address)
1046                     ; 304 {
1047                     .text:	section	.text,new
1048  0000               _FLASH_ReadOptionByte:
1050  0000 89            	pushw	x
1051  0001 5204          	subw	sp,#4
1052       00000004      OFST:	set	4
1055                     ; 305   uint8_t value_optbyte, value_optbyte_complement = 0;
1057                     ; 306   uint16_t res_value = 0;
1059                     ; 309   assert_param(IS_OPTION_BYTE_ADDRESS_OK(Address));
1061  0003 a34800        	cpw	x,#18432
1062  0006 2505          	jrult	L261
1063  0008 a34880        	cpw	x,#18560
1064  000b 250e          	jrult	L461
1065  000d               L261:
1066  000d ae0135        	ldw	x,#309
1067  0010 89            	pushw	x
1068  0011 5f            	clrw	x
1069  0012 89            	pushw	x
1070  0013 ae0010        	ldw	x,#L73
1071  0016 cd0000        	call	_assert_failed
1073  0019 5b04          	addw	sp,#4
1074  001b               L461:
1075                     ; 311   value_optbyte = *((NEAR uint8_t*)Address); /* Read option byte */
1077  001b 1e05          	ldw	x,(OFST+1,sp)
1078  001d f6            	ld	a,(x)
1079  001e 6b02          	ld	(OFST-2,sp),a
1080                     ; 312   value_optbyte_complement = *(((NEAR uint8_t*)Address) + 1); /* Read option byte complement */
1082  0020 e601          	ld	a,(1,x)
1083  0022 6b01          	ld	(OFST-3,sp),a
1084                     ; 315   if(Address == 0x4800)	 
1086  0024 a34800        	cpw	x,#18432
1087  0027 2606          	jrne	L723
1088                     ; 317     res_value =	 value_optbyte;
1090  0029 7b02          	ld	a,(OFST-2,sp)
1091  002b 5f            	clrw	x
1092  002c 97            	ld	xl,a
1094  002d 201c          	jra	L133
1095  002f               L723:
1096                     ; 321     if(value_optbyte == (uint8_t)(~value_optbyte_complement))
1098  002f 43            	cpl	a
1099  0030 1102          	cp	a,(OFST-2,sp)
1100  0032 2614          	jrne	L333
1101                     ; 323       res_value = (uint16_t)((uint16_t)value_optbyte << 8);
1103  0034 7b02          	ld	a,(OFST-2,sp)
1104  0036 97            	ld	xl,a
1105  0037 4f            	clr	a
1106  0038 02            	rlwa	x,a
1107  0039 1f03          	ldw	(OFST-1,sp),x
1108                     ; 324       res_value = res_value | (uint16_t)value_optbyte_complement;
1110  003b 5f            	clrw	x
1111  003c 7b01          	ld	a,(OFST-3,sp)
1112  003e 97            	ld	xl,a
1113  003f 01            	rrwa	x,a
1114  0040 1a04          	or	a,(OFST+0,sp)
1115  0042 01            	rrwa	x,a
1116  0043 1a03          	or	a,(OFST-1,sp)
1117  0045 01            	rrwa	x,a
1119  0046 2003          	jra	L133
1120  0048               L333:
1121                     ; 328       res_value = FLASH_OPTIONBYTE_ERROR;
1123  0048 ae5555        	ldw	x,#21845
1124  004b               L133:
1125                     ; 331   return(res_value);
1129  004b 5b06          	addw	sp,#6
1130  004d 81            	ret	
1205                     ; 340 void FLASH_SetLowPowerMode(FLASH_LPMode_TypeDef FLASH_LPMode)
1205                     ; 341 {
1206                     .text:	section	.text,new
1207  0000               _FLASH_SetLowPowerMode:
1209  0000 89            	pushw	x
1210       00000000      OFST:	set	0
1213                     ; 343   assert_param(IS_FLASH_LOW_POWER_MODE_OK(FLASH_LPMode));
1215  0001 a30004        	cpw	x,#4
1216  0004 271b          	jreq	L671
1217  0006 a30008        	cpw	x,#8
1218  0009 2716          	jreq	L671
1219  000b 5d            	tnzw	x
1220  000c 2713          	jreq	L671
1221  000e a3000c        	cpw	x,#12
1222  0011 270e          	jreq	L671
1223  0013 ae0157        	ldw	x,#343
1224  0016 89            	pushw	x
1225  0017 5f            	clrw	x
1226  0018 89            	pushw	x
1227  0019 ae0010        	ldw	x,#L73
1228  001c cd0000        	call	_assert_failed
1230  001f 5b04          	addw	sp,#4
1231  0021               L671:
1232                     ; 346   FLASH->CR1 &= (uint8_t)(~(FLASH_CR1_HALT | FLASH_CR1_AHALT)); 
1234  0021 c6505a        	ld	a,20570
1235  0024 a4f3          	and	a,#243
1236  0026 c7505a        	ld	20570,a
1237                     ; 349   FLASH->CR1 |= (uint8_t)FLASH_LPMode; 
1239  0029 c6505a        	ld	a,20570
1240  002c 1a02          	or	a,(OFST+2,sp)
1241  002e c7505a        	ld	20570,a
1242                     ; 350 }
1245  0031 85            	popw	x
1246  0032 81            	ret	
1305                     ; 358 void FLASH_SetProgrammingTime(FLASH_ProgramTime_TypeDef FLASH_ProgTime)
1305                     ; 359 {
1306                     .text:	section	.text,new
1307  0000               _FLASH_SetProgrammingTime:
1309  0000 89            	pushw	x
1310       00000000      OFST:	set	0
1313                     ; 361   assert_param(IS_FLASH_PROGRAM_TIME_OK(FLASH_ProgTime));
1315  0001 5d            	tnzw	x
1316  0002 2711          	jreq	L012
1317  0004 5a            	decw	x
1318  0005 270e          	jreq	L012
1319  0007 ae0169        	ldw	x,#361
1320  000a 89            	pushw	x
1321  000b 5f            	clrw	x
1322  000c 89            	pushw	x
1323  000d ae0010        	ldw	x,#L73
1324  0010 cd0000        	call	_assert_failed
1326  0013 5b04          	addw	sp,#4
1327  0015               L012:
1328                     ; 363   FLASH->CR1 &= (uint8_t)(~FLASH_CR1_FIX);
1330  0015 7211505a      	bres	20570,#0
1331                     ; 364   FLASH->CR1 |= (uint8_t)FLASH_ProgTime;
1333  0019 c6505a        	ld	a,20570
1334  001c 1a02          	or	a,(OFST+2,sp)
1335  001e c7505a        	ld	20570,a
1336                     ; 365 }
1339  0021 85            	popw	x
1340  0022 81            	ret	
1365                     ; 372 FLASH_LPMode_TypeDef FLASH_GetLowPowerMode(void)
1365                     ; 373 {
1366                     .text:	section	.text,new
1367  0000               _FLASH_GetLowPowerMode:
1371                     ; 374   return((FLASH_LPMode_TypeDef)(FLASH->CR1 & (uint8_t)(FLASH_CR1_HALT | FLASH_CR1_AHALT)));
1373  0000 c6505a        	ld	a,20570
1374  0003 a40c          	and	a,#12
1375  0005 5f            	clrw	x
1376  0006 02            	rlwa	x,a
1379  0007 81            	ret	
1404                     ; 382 FLASH_ProgramTime_TypeDef FLASH_GetProgrammingTime(void)
1404                     ; 383 {
1405                     .text:	section	.text,new
1406  0000               _FLASH_GetProgrammingTime:
1410                     ; 384   return((FLASH_ProgramTime_TypeDef)(FLASH->CR1 & FLASH_CR1_FIX));
1412  0000 c6505a        	ld	a,20570
1413  0003 a401          	and	a,#1
1414  0005 5f            	clrw	x
1415  0006 02            	rlwa	x,a
1418  0007 81            	ret	
1452                     ; 392 uint32_t FLASH_GetBootSize(void)
1452                     ; 393 {
1453                     .text:	section	.text,new
1454  0000               _FLASH_GetBootSize:
1456  0000 5204          	subw	sp,#4
1457       00000004      OFST:	set	4
1460                     ; 394   uint32_t temp = 0;
1462                     ; 397   temp = (uint32_t)((uint32_t)FLASH->FPR * (uint32_t)512);
1464  0002 c6505d        	ld	a,20573
1465  0005 5f            	clrw	x
1466  0006 97            	ld	xl,a
1467  0007 90ae0200      	ldw	y,#512
1468  000b cd0000        	call	c_umul
1470  000e 96            	ldw	x,sp
1471  000f 5c            	incw	x
1472  0010 cd0000        	call	c_rtol
1474                     ; 400   if(FLASH->FPR == 0xFF)
1476  0013 c6505d        	ld	a,20573
1477  0016 4c            	inc	a
1478  0017 260d          	jrne	L554
1479                     ; 402     temp += 512;
1481  0019 ae0200        	ldw	x,#512
1482  001c bf02          	ldw	c_lreg+2,x
1483  001e 5f            	clrw	x
1484  001f bf00          	ldw	c_lreg,x
1485  0021 96            	ldw	x,sp
1486  0022 5c            	incw	x
1487  0023 cd0000        	call	c_lgadd
1489  0026               L554:
1490                     ; 406   return(temp);
1492  0026 96            	ldw	x,sp
1493  0027 5c            	incw	x
1494  0028 cd0000        	call	c_ltor
1498  002b 5b04          	addw	sp,#4
1499  002d 81            	ret	
1602                     ; 417 FlagStatus FLASH_GetFlagStatus(FLASH_Flag_TypeDef FLASH_FLAG)
1602                     ; 418 {
1603                     .text:	section	.text,new
1604  0000               _FLASH_GetFlagStatus:
1606  0000 89            	pushw	x
1607  0001 89            	pushw	x
1608       00000002      OFST:	set	2
1611                     ; 419   FlagStatus status = RESET;
1613                     ; 421   assert_param(IS_FLASH_FLAGS_OK(FLASH_FLAG));
1615  0002 a30008        	cpw	x,#8
1616  0005 271b          	jreq	L032
1617  0007 a30004        	cpw	x,#4
1618  000a 2716          	jreq	L032
1619  000c a30002        	cpw	x,#2
1620  000f 2711          	jreq	L032
1621  0011 5a            	decw	x
1622  0012 270e          	jreq	L032
1623  0014 ae01a5        	ldw	x,#421
1624  0017 89            	pushw	x
1625  0018 5f            	clrw	x
1626  0019 89            	pushw	x
1627  001a ae0010        	ldw	x,#L73
1628  001d cd0000        	call	_assert_failed
1630  0020 5b04          	addw	sp,#4
1631  0022               L032:
1632                     ; 424   if((FLASH->IAPSR & (uint8_t)FLASH_FLAG) != (uint8_t)RESET)
1634  0022 c6505f        	ld	a,20575
1635  0025 1504          	bcp	a,(OFST+2,sp)
1636  0027 2705          	jreq	L525
1637                     ; 426     status = SET; /* FLASH_FLAG is set */
1639  0029 ae0001        	ldw	x,#1
1641  002c 2001          	jra	L725
1642  002e               L525:
1643                     ; 430     status = RESET; /* FLASH_FLAG is reset*/
1645  002e 5f            	clrw	x
1646  002f               L725:
1647                     ; 434   return status;
1651  002f 5b04          	addw	sp,#4
1652  0031 81            	ret	
1737                     ; 549 IN_RAM(FLASH_Status_TypeDef FLASH_WaitForLastOperation(FLASH_MemType_TypeDef FLASH_MemType)) 
1737                     ; 550 {
1738                     .text:	section	.text,new
1739  0000               _FLASH_WaitForLastOperation:
1741  0000 5203          	subw	sp,#3
1742       00000003      OFST:	set	3
1745                     ; 551   uint8_t flagstatus = 0x00;
1747  0002 0f03          	clr	(OFST+0,sp)
1748                     ; 552   uint16_t timeout = OPERATION_TIMEOUT;
1750  0004 aeffff        	ldw	x,#65535
1752  0007 2008          	jra	L575
1753  0009               L175:
1754                     ; 578     flagstatus = (uint8_t)(FLASH->IAPSR & (FLASH_IAPSR_EOP | FLASH_IAPSR_WR_PG_DIS));
1756  0009 c6505f        	ld	a,20575
1757  000c a405          	and	a,#5
1758  000e 6b03          	ld	(OFST+0,sp),a
1759                     ; 579     timeout--;
1761  0010 5a            	decw	x
1762  0011               L575:
1763  0011 1f01          	ldw	(OFST-2,sp),x
1764                     ; 576   while((flagstatus == 0x00) && (timeout != 0x00))
1766  0013 7b03          	ld	a,(OFST+0,sp)
1767  0015 2604          	jrne	L106
1769  0017 1e01          	ldw	x,(OFST-2,sp)
1770  0019 26ee          	jrne	L175
1771  001b               L106:
1772                     ; 583   if(timeout == 0x00 )
1774  001b 1e01          	ldw	x,(OFST-2,sp)
1775  001d 2602          	jrne	L306
1776                     ; 585     flagstatus = FLASH_STATUS_TIMEOUT;
1778  001f a602          	ld	a,#2
1779  0021               L306:
1780                     ; 588   return((FLASH_Status_TypeDef)flagstatus);
1782  0021 5f            	clrw	x
1783  0022 97            	ld	xl,a
1786  0023 5b03          	addw	sp,#3
1787  0025 81            	ret	
1851                     ; 598 IN_RAM(void FLASH_EraseBlock(uint16_t BlockNum, FLASH_MemType_TypeDef FLASH_MemType))
1851                     ; 599 {
1852                     .text:	section	.text,new
1853  0000               _FLASH_EraseBlock:
1855  0000 89            	pushw	x
1856  0001 5206          	subw	sp,#6
1857       00000006      OFST:	set	6
1860                     ; 600   uint32_t startaddress = 0;
1862                     ; 610   assert_param(IS_MEMORY_TYPE_OK(FLASH_MemType));
1864  0003 1e0b          	ldw	x,(OFST+5,sp)
1865  0005 a300fd        	cpw	x,#253
1866  0008 270c          	jreq	L442
1867  000a a300f7        	cpw	x,#247
1868  000d 2707          	jreq	L442
1869  000f ae0262        	ldw	x,#610
1870  0012 ad51          	call	LC001
1871  0014 1e0b          	ldw	x,(OFST+5,sp)
1872  0016               L442:
1873                     ; 611   if(FLASH_MemType == FLASH_MEMTYPE_PROG)
1875  0016 a300fd        	cpw	x,#253
1876  0019 2611          	jrne	L736
1877                     ; 613     assert_param(IS_FLASH_PROG_BLOCK_NUMBER_OK(BlockNum));
1879  001b 1e07          	ldw	x,(OFST+1,sp)
1880  001d a30080        	cpw	x,#128
1881  0020 2505          	jrult	L252
1882  0022 ae0265        	ldw	x,#613
1883  0025 ad3e          	call	LC001
1884  0027               L252:
1885                     ; 614     startaddress = FLASH_PROG_START_PHYSICAL_ADDRESS;
1887  0027 ae8000        	ldw	x,#32768
1889  002a 200f          	jra	L146
1890  002c               L736:
1891                     ; 618     assert_param(IS_FLASH_DATA_BLOCK_NUMBER_OK(BlockNum));
1893  002c 1e07          	ldw	x,(OFST+1,sp)
1894  002e a3000a        	cpw	x,#10
1895  0031 2505          	jrult	L062
1896  0033 ae026a        	ldw	x,#618
1897  0036 ad2d          	call	LC001
1898  0038               L062:
1899                     ; 619     startaddress = FLASH_DATA_START_PHYSICAL_ADDRESS;
1901  0038 ae4000        	ldw	x,#16384
1902  003b               L146:
1903  003b 1f05          	ldw	(OFST-1,sp),x
1904  003d 5f            	clrw	x
1905  003e 1f03          	ldw	(OFST-3,sp),x
1906                     ; 627     pwFlash = (PointerAttr uint32_t *)(MemoryAddressCast)(startaddress + ((uint32_t)BlockNum * FLASH_BLOCK_SIZE));
1908  0040 a640          	ld	a,#64
1909  0042 1e07          	ldw	x,(OFST+1,sp)
1910  0044 cd0000        	call	c_cmulx
1912  0047 96            	ldw	x,sp
1913  0048 1c0003        	addw	x,#OFST-3
1914  004b cd0000        	call	c_ladd
1916  004e be02          	ldw	x,c_lreg+2
1917  0050 1f01          	ldw	(OFST-5,sp),x
1918                     ; 631   FLASH->CR2 |= FLASH_CR2_ERASE;
1920  0052 721a505b      	bset	20571,#5
1921                     ; 632   FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NERASE);
1923                     ; 636     *pwFlash = (uint32_t)0;
1925  0056 4f            	clr	a
1926  0057 721b505c      	bres	20572,#5
1927  005b e703          	ld	(3,x),a
1928  005d e702          	ld	(2,x),a
1929  005f e701          	ld	(1,x),a
1930  0061 f7            	ld	(x),a
1931                     ; 644 }
1934  0062 5b08          	addw	sp,#8
1935  0064 81            	ret	
1936  0065               LC001:
1937  0065 89            	pushw	x
1938  0066 5f            	clrw	x
1939  0067 89            	pushw	x
1940  0068 ae0010        	ldw	x,#L73
1941  006b cd0000        	call	_assert_failed
1943  006e 5b04          	addw	sp,#4
1944  0070 81            	ret	
2049                     ; 655 IN_RAM(void FLASH_ProgramBlock(uint16_t BlockNum, FLASH_MemType_TypeDef FLASH_MemType, 
2049                     ; 656                         FLASH_ProgramMode_TypeDef FLASH_ProgMode, uint8_t *Buffer))
2049                     ; 657 {
2050                     .text:	section	.text,new
2051  0000               _FLASH_ProgramBlock:
2053  0000 89            	pushw	x
2054  0001 5206          	subw	sp,#6
2055       00000006      OFST:	set	6
2058                     ; 658   uint16_t Count = 0;
2060                     ; 659   uint32_t startaddress = 0;
2062                     ; 662   assert_param(IS_MEMORY_TYPE_OK(FLASH_MemType));
2064  0003 1e0b          	ldw	x,(OFST+5,sp)
2065  0005 a300fd        	cpw	x,#253
2066  0008 270a          	jreq	L272
2067  000a a300f7        	cpw	x,#247
2068  000d 2705          	jreq	L272
2069  000f ae0296        	ldw	x,#662
2070  0012 ad78          	call	LC002
2071  0014               L272:
2072                     ; 663   assert_param(IS_FLASH_PROGRAM_MODE_OK(FLASH_ProgMode));
2074  0014 1e0d          	ldw	x,(OFST+7,sp)
2075  0016 270a          	jreq	L203
2076  0018 a30010        	cpw	x,#16
2077  001b 2705          	jreq	L203
2078  001d ae0297        	ldw	x,#663
2079  0020 ad6a          	call	LC002
2080  0022               L203:
2081                     ; 664   if(FLASH_MemType == FLASH_MEMTYPE_PROG)
2083  0022 1e0b          	ldw	x,(OFST+5,sp)
2084  0024 a300fd        	cpw	x,#253
2085  0027 2611          	jrne	L517
2086                     ; 666     assert_param(IS_FLASH_PROG_BLOCK_NUMBER_OK(BlockNum));
2088  0029 1e07          	ldw	x,(OFST+1,sp)
2089  002b a30080        	cpw	x,#128
2090  002e 2505          	jrult	L013
2091  0030 ae029a        	ldw	x,#666
2092  0033 ad57          	call	LC002
2093  0035               L013:
2094                     ; 667     startaddress = FLASH_PROG_START_PHYSICAL_ADDRESS;
2096  0035 ae8000        	ldw	x,#32768
2098  0038 200f          	jra	L717
2099  003a               L517:
2100                     ; 671     assert_param(IS_FLASH_DATA_BLOCK_NUMBER_OK(BlockNum));
2102  003a 1e07          	ldw	x,(OFST+1,sp)
2103  003c a3000a        	cpw	x,#10
2104  003f 2505          	jrult	L613
2105  0041 ae029f        	ldw	x,#671
2106  0044 ad46          	call	LC002
2107  0046               L613:
2108                     ; 672     startaddress = FLASH_DATA_START_PHYSICAL_ADDRESS;
2110  0046 ae4000        	ldw	x,#16384
2111  0049               L717:
2112  0049 1f03          	ldw	(OFST-3,sp),x
2113  004b 5f            	clrw	x
2114  004c 1f01          	ldw	(OFST-5,sp),x
2115                     ; 676   startaddress = startaddress + ((uint32_t)BlockNum * FLASH_BLOCK_SIZE);
2117  004e a640          	ld	a,#64
2118  0050 1e07          	ldw	x,(OFST+1,sp)
2119  0052 cd0000        	call	c_cmulx
2121  0055 96            	ldw	x,sp
2122  0056 5c            	incw	x
2123  0057 cd0000        	call	c_lgadd
2125                     ; 679   if(FLASH_ProgMode == FLASH_PROGRAMMODE_STANDARD)
2127  005a 1e0d          	ldw	x,(OFST+7,sp)
2128  005c 260a          	jrne	L127
2129                     ; 682     FLASH->CR2 |= FLASH_CR2_PRG;
2131  005e 7210505b      	bset	20571,#0
2132                     ; 683     FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NPRG);
2134  0062 7211505c      	bres	20572,#0
2136  0066 2008          	jra	L327
2137  0068               L127:
2138                     ; 688     FLASH->CR2 |= FLASH_CR2_FPRG;
2140  0068 7218505b      	bset	20571,#4
2141                     ; 689     FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NFPRG);
2143  006c 7219505c      	bres	20572,#4
2144  0070               L327:
2145                     ; 693   for(Count = 0; Count < FLASH_BLOCK_SIZE; Count++)
2147  0070 5f            	clrw	x
2148  0071 1f05          	ldw	(OFST-1,sp),x
2149  0073               L527:
2150                     ; 695     *((PointerAttr uint8_t*) (MemoryAddressCast)startaddress + Count) = ((uint8_t)(Buffer[Count]));
2152  0073 1e0f          	ldw	x,(OFST+9,sp)
2153  0075 72fb05        	addw	x,(OFST-1,sp)
2154  0078 f6            	ld	a,(x)
2155  0079 1e03          	ldw	x,(OFST-3,sp)
2156  007b 72fb05        	addw	x,(OFST-1,sp)
2157  007e f7            	ld	(x),a
2158                     ; 693   for(Count = 0; Count < FLASH_BLOCK_SIZE; Count++)
2160  007f 1e05          	ldw	x,(OFST-1,sp)
2161  0081 5c            	incw	x
2162  0082 1f05          	ldw	(OFST-1,sp),x
2165  0084 a30040        	cpw	x,#64
2166  0087 25ea          	jrult	L527
2167                     ; 697 }
2170  0089 5b08          	addw	sp,#8
2171  008b 81            	ret	
2172  008c               LC002:
2173  008c 89            	pushw	x
2174  008d 5f            	clrw	x
2175  008e 89            	pushw	x
2176  008f ae0010        	ldw	x,#L73
2177  0092 cd0000        	call	_assert_failed
2179  0095 5b04          	addw	sp,#4
2180  0097 81            	ret	
2193                     	xdef	_FLASH_WaitForLastOperation
2194                     	xdef	_FLASH_ProgramBlock
2195                     	xdef	_FLASH_EraseBlock
2196                     	xdef	_FLASH_GetFlagStatus
2197                     	xdef	_FLASH_GetBootSize
2198                     	xdef	_FLASH_GetProgrammingTime
2199                     	xdef	_FLASH_GetLowPowerMode
2200                     	xdef	_FLASH_SetProgrammingTime
2201                     	xdef	_FLASH_SetLowPowerMode
2202                     	xdef	_FLASH_EraseOptionByte
2203                     	xdef	_FLASH_ProgramOptionByte
2204                     	xdef	_FLASH_ReadOptionByte
2205                     	xdef	_FLASH_ProgramWord
2206                     	xdef	_FLASH_ReadByte
2207                     	xdef	_FLASH_ProgramByte
2208                     	xdef	_FLASH_EraseByte
2209                     	xdef	_FLASH_ITConfig
2210                     	xdef	_FLASH_DeInit
2211                     	xdef	_FLASH_Lock
2212                     	xdef	_FLASH_Unlock
2213                     	xref	_assert_failed
2214                     	switch	.const
2215  0010               L73:
2216  0010 2e2e5c2e2e5c  	dc.b	"..\..\..\libraries"
2217  0022 5c73746d3873  	dc.b	"\stm8s_stdperiph_d"
2218  0034 72697665725c  	dc.b	"river\src\stm8s_fl"
2219  0046 6173682e6300  	dc.b	"ash.c",0
2220                     	xref.b	c_lreg
2221                     	xref.b	c_x
2222                     	xref.b	c_y
2242                     	xref	c_ladd
2243                     	xref	c_cmulx
2244                     	xref	c_lgadd
2245                     	xref	c_rtol
2246                     	xref	c_umul
2247                     	xref	c_lcmp
2248                     	xref	c_ltor
2249                     	end

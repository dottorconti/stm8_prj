   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.10.2 - 02 Nov 2011
   3                     ; Generator (Limited) V4.3.7 - 29 Nov 2011
  79                     ; 87 void FLASH_Unlock(FLASH_MemType_TypeDef FLASH_MemType)
  79                     ; 88 {
  81                     .text:	section	.text,new
  82  0000               _FLASH_Unlock:
  84  0000 89            	pushw	x
  85       00000000      OFST:	set	0
  88                     ; 90   assert_param(IS_MEMORY_TYPE_OK(FLASH_MemType));
  90  0001 a300fd        	cpw	x,#253
  91  0004 2705          	jreq	L01
  92  0006 a300f7        	cpw	x,#247
  93  0009 2603          	jrne	L6
  94  000b               L01:
  95  000b 4f            	clr	a
  96  000c 2010          	jra	L21
  97  000e               L6:
  98  000e ae005a        	ldw	x,#90
  99  0011 89            	pushw	x
 100  0012 ae0000        	ldw	x,#0
 101  0015 89            	pushw	x
 102  0016 ae0010        	ldw	x,#L73
 103  0019 cd0000        	call	_assert_failed
 105  001c 5b04          	addw	sp,#4
 106  001e               L21:
 107                     ; 93   if(FLASH_MemType == FLASH_MEMTYPE_PROG)
 109  001e 1e01          	ldw	x,(OFST+1,sp)
 110  0020 a300fd        	cpw	x,#253
 111  0023 260a          	jrne	L14
 112                     ; 95     FLASH->PUKR = FLASH_RASS_KEY1;
 114  0025 35565062      	mov	20578,#86
 115                     ; 96     FLASH->PUKR = FLASH_RASS_KEY2;
 117  0029 35ae5062      	mov	20578,#174
 119  002d 2008          	jra	L34
 120  002f               L14:
 121                     ; 101     FLASH->DUKR = FLASH_RASS_KEY2; /* Warning: keys are reversed on data memory !!! */
 123  002f 35ae5064      	mov	20580,#174
 124                     ; 102     FLASH->DUKR = FLASH_RASS_KEY1;
 126  0033 35565064      	mov	20580,#86
 127  0037               L34:
 128                     ; 104 }
 131  0037 85            	popw	x
 132  0038 81            	ret
 168                     ; 112 void FLASH_Lock(FLASH_MemType_TypeDef FLASH_MemType)
 168                     ; 113 {
 169                     .text:	section	.text,new
 170  0000               _FLASH_Lock:
 172  0000 89            	pushw	x
 173       00000000      OFST:	set	0
 176                     ; 115   assert_param(IS_MEMORY_TYPE_OK(FLASH_MemType));
 178  0001 a300fd        	cpw	x,#253
 179  0004 2705          	jreq	L02
 180  0006 a300f7        	cpw	x,#247
 181  0009 2603          	jrne	L61
 182  000b               L02:
 183  000b 4f            	clr	a
 184  000c 2010          	jra	L22
 185  000e               L61:
 186  000e ae0073        	ldw	x,#115
 187  0011 89            	pushw	x
 188  0012 ae0000        	ldw	x,#0
 189  0015 89            	pushw	x
 190  0016 ae0010        	ldw	x,#L73
 191  0019 cd0000        	call	_assert_failed
 193  001c 5b04          	addw	sp,#4
 194  001e               L22:
 195                     ; 118   FLASH->IAPSR &= (uint8_t)FLASH_MemType;
 197  001e c6505f        	ld	a,20575
 198  0021 1402          	and	a,(OFST+2,sp)
 199  0023 c7505f        	ld	20575,a
 200                     ; 119 }
 203  0026 85            	popw	x
 204  0027 81            	ret
 227                     ; 126 void FLASH_DeInit(void)
 227                     ; 127 {
 228                     .text:	section	.text,new
 229  0000               _FLASH_DeInit:
 233                     ; 128   FLASH->CR1 = FLASH_CR1_RESET_VALUE;
 235  0000 725f505a      	clr	20570
 236                     ; 129   FLASH->CR2 = FLASH_CR2_RESET_VALUE;
 238  0004 725f505b      	clr	20571
 239                     ; 130   FLASH->NCR2 = FLASH_NCR2_RESET_VALUE;
 241  0008 35ff505c      	mov	20572,#255
 242                     ; 131   FLASH->IAPSR &= (uint8_t)(~FLASH_IAPSR_DUL);
 244  000c 7217505f      	bres	20575,#3
 245                     ; 132   FLASH->IAPSR &= (uint8_t)(~FLASH_IAPSR_PUL);
 247  0010 7213505f      	bres	20575,#1
 248                     ; 133   (void) FLASH->IAPSR; /* Reading of this register causes the clearing of status flags */
 250  0014 c6505f        	ld	a,20575
 251                     ; 134 }
 254  0017 81            	ret
 310                     ; 142 void FLASH_ITConfig(FunctionalState NewState)
 310                     ; 143 {
 311                     .text:	section	.text,new
 312  0000               _FLASH_ITConfig:
 314  0000 89            	pushw	x
 315       00000000      OFST:	set	0
 318                     ; 145   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 320  0001 a30000        	cpw	x,#0
 321  0004 2705          	jreq	L23
 322  0006 a30001        	cpw	x,#1
 323  0009 2603          	jrne	L03
 324  000b               L23:
 325  000b 4f            	clr	a
 326  000c 2010          	jra	L43
 327  000e               L03:
 328  000e ae0091        	ldw	x,#145
 329  0011 89            	pushw	x
 330  0012 ae0000        	ldw	x,#0
 331  0015 89            	pushw	x
 332  0016 ae0010        	ldw	x,#L73
 333  0019 cd0000        	call	_assert_failed
 335  001c 5b04          	addw	sp,#4
 336  001e               L43:
 337                     ; 147   if(NewState != DISABLE)
 339  001e 1e01          	ldw	x,(OFST+1,sp)
 340  0020 2706          	jreq	L121
 341                     ; 149     FLASH->CR1 |= FLASH_CR1_IE; /* Enables the interrupt sources */
 343  0022 7212505a      	bset	20570,#1
 345  0026 2004          	jra	L321
 346  0028               L121:
 347                     ; 153     FLASH->CR1 &= (uint8_t)(~FLASH_CR1_IE); /* Disables the interrupt sources */
 349  0028 7213505a      	bres	20570,#1
 350  002c               L321:
 351                     ; 155 }
 354  002c 85            	popw	x
 355  002d 81            	ret
 388                     .const:	section	.text
 389  0000               L64:
 390  0000 00008000      	dc.l	32768
 391  0004               L05:
 392  0004 0000a000      	dc.l	40960
 393  0008               L25:
 394  0008 00004000      	dc.l	16384
 395  000c               L45:
 396  000c 00004280      	dc.l	17024
 397                     ; 164 void FLASH_EraseByte(uint32_t Address)
 397                     ; 165 {
 398                     .text:	section	.text,new
 399  0000               _FLASH_EraseByte:
 401       00000000      OFST:	set	0
 404                     ; 167   assert_param(IS_FLASH_ADDRESS_OK(Address));
 406  0000 96            	ldw	x,sp
 407  0001 1c0003        	addw	x,#OFST+3
 408  0004 cd0000        	call	c_ltor
 410  0007 ae0000        	ldw	x,#L64
 411  000a cd0000        	call	c_lcmp
 413  000d 250f          	jrult	L44
 414  000f 96            	ldw	x,sp
 415  0010 1c0003        	addw	x,#OFST+3
 416  0013 cd0000        	call	c_ltor
 418  0016 ae0004        	ldw	x,#L05
 419  0019 cd0000        	call	c_lcmp
 421  001c 251e          	jrult	L24
 422  001e               L44:
 423  001e 96            	ldw	x,sp
 424  001f 1c0003        	addw	x,#OFST+3
 425  0022 cd0000        	call	c_ltor
 427  0025 ae0008        	ldw	x,#L25
 428  0028 cd0000        	call	c_lcmp
 430  002b 2512          	jrult	L04
 431  002d 96            	ldw	x,sp
 432  002e 1c0003        	addw	x,#OFST+3
 433  0031 cd0000        	call	c_ltor
 435  0034 ae000c        	ldw	x,#L45
 436  0037 cd0000        	call	c_lcmp
 438  003a 2403          	jruge	L04
 439  003c               L24:
 440  003c 4f            	clr	a
 441  003d 2010          	jra	L65
 442  003f               L04:
 443  003f ae00a7        	ldw	x,#167
 444  0042 89            	pushw	x
 445  0043 ae0000        	ldw	x,#0
 446  0046 89            	pushw	x
 447  0047 ae0010        	ldw	x,#L73
 448  004a cd0000        	call	_assert_failed
 450  004d 5b04          	addw	sp,#4
 451  004f               L65:
 452                     ; 170   *(PointerAttr uint8_t*) (MemoryAddressCast)Address = FLASH_CLEAR_BYTE; 
 454  004f 1e05          	ldw	x,(OFST+5,sp)
 455  0051 7f            	clr	(x)
 456                     ; 171 }
 459  0052 81            	ret
 499                     ; 181 void FLASH_ProgramByte(uint32_t Address, uint8_t Data)
 499                     ; 182 {
 500                     .text:	section	.text,new
 501  0000               _FLASH_ProgramByte:
 503       00000000      OFST:	set	0
 506                     ; 184   assert_param(IS_FLASH_ADDRESS_OK(Address));
 508  0000 96            	ldw	x,sp
 509  0001 1c0003        	addw	x,#OFST+3
 510  0004 cd0000        	call	c_ltor
 512  0007 ae0000        	ldw	x,#L64
 513  000a cd0000        	call	c_lcmp
 515  000d 250f          	jrult	L66
 516  000f 96            	ldw	x,sp
 517  0010 1c0003        	addw	x,#OFST+3
 518  0013 cd0000        	call	c_ltor
 520  0016 ae0004        	ldw	x,#L05
 521  0019 cd0000        	call	c_lcmp
 523  001c 251e          	jrult	L46
 524  001e               L66:
 525  001e 96            	ldw	x,sp
 526  001f 1c0003        	addw	x,#OFST+3
 527  0022 cd0000        	call	c_ltor
 529  0025 ae0008        	ldw	x,#L25
 530  0028 cd0000        	call	c_lcmp
 532  002b 2512          	jrult	L26
 533  002d 96            	ldw	x,sp
 534  002e 1c0003        	addw	x,#OFST+3
 535  0031 cd0000        	call	c_ltor
 537  0034 ae000c        	ldw	x,#L45
 538  0037 cd0000        	call	c_lcmp
 540  003a 2403          	jruge	L26
 541  003c               L46:
 542  003c 4f            	clr	a
 543  003d 2010          	jra	L07
 544  003f               L26:
 545  003f ae00b8        	ldw	x,#184
 546  0042 89            	pushw	x
 547  0043 ae0000        	ldw	x,#0
 548  0046 89            	pushw	x
 549  0047 ae0010        	ldw	x,#L73
 550  004a cd0000        	call	_assert_failed
 552  004d 5b04          	addw	sp,#4
 553  004f               L07:
 554                     ; 185   *(PointerAttr uint8_t*) (MemoryAddressCast)Address = Data;
 556  004f 7b07          	ld	a,(OFST+7,sp)
 557  0051 1e05          	ldw	x,(OFST+5,sp)
 558  0053 f7            	ld	(x),a
 559                     ; 186 }
 562  0054 81            	ret
 595                     ; 195 uint8_t FLASH_ReadByte(uint32_t Address)
 595                     ; 196 {
 596                     .text:	section	.text,new
 597  0000               _FLASH_ReadByte:
 599       00000000      OFST:	set	0
 602                     ; 198   assert_param(IS_FLASH_ADDRESS_OK(Address));
 604  0000 96            	ldw	x,sp
 605  0001 1c0003        	addw	x,#OFST+3
 606  0004 cd0000        	call	c_ltor
 608  0007 ae0000        	ldw	x,#L64
 609  000a cd0000        	call	c_lcmp
 611  000d 250f          	jrult	L001
 612  000f 96            	ldw	x,sp
 613  0010 1c0003        	addw	x,#OFST+3
 614  0013 cd0000        	call	c_ltor
 616  0016 ae0004        	ldw	x,#L05
 617  0019 cd0000        	call	c_lcmp
 619  001c 251e          	jrult	L67
 620  001e               L001:
 621  001e 96            	ldw	x,sp
 622  001f 1c0003        	addw	x,#OFST+3
 623  0022 cd0000        	call	c_ltor
 625  0025 ae0008        	ldw	x,#L25
 626  0028 cd0000        	call	c_lcmp
 628  002b 2512          	jrult	L47
 629  002d 96            	ldw	x,sp
 630  002e 1c0003        	addw	x,#OFST+3
 631  0031 cd0000        	call	c_ltor
 633  0034 ae000c        	ldw	x,#L45
 634  0037 cd0000        	call	c_lcmp
 636  003a 2403          	jruge	L47
 637  003c               L67:
 638  003c 4f            	clr	a
 639  003d 2010          	jra	L201
 640  003f               L47:
 641  003f ae00c6        	ldw	x,#198
 642  0042 89            	pushw	x
 643  0043 ae0000        	ldw	x,#0
 644  0046 89            	pushw	x
 645  0047 ae0010        	ldw	x,#L73
 646  004a cd0000        	call	_assert_failed
 648  004d 5b04          	addw	sp,#4
 649  004f               L201:
 650                     ; 201   return(*(PointerAttr uint8_t *) (MemoryAddressCast)Address); 
 652  004f 1e05          	ldw	x,(OFST+5,sp)
 653  0051 f6            	ld	a,(x)
 656  0052 81            	ret
 696                     ; 212 void FLASH_ProgramWord(uint32_t Address, uint32_t Data)
 696                     ; 213 {
 697                     .text:	section	.text,new
 698  0000               _FLASH_ProgramWord:
 700       00000000      OFST:	set	0
 703                     ; 215   assert_param(IS_FLASH_ADDRESS_OK(Address));
 705  0000 96            	ldw	x,sp
 706  0001 1c0003        	addw	x,#OFST+3
 707  0004 cd0000        	call	c_ltor
 709  0007 ae0000        	ldw	x,#L64
 710  000a cd0000        	call	c_lcmp
 712  000d 250f          	jrult	L211
 713  000f 96            	ldw	x,sp
 714  0010 1c0003        	addw	x,#OFST+3
 715  0013 cd0000        	call	c_ltor
 717  0016 ae0004        	ldw	x,#L05
 718  0019 cd0000        	call	c_lcmp
 720  001c 251e          	jrult	L011
 721  001e               L211:
 722  001e 96            	ldw	x,sp
 723  001f 1c0003        	addw	x,#OFST+3
 724  0022 cd0000        	call	c_ltor
 726  0025 ae0008        	ldw	x,#L25
 727  0028 cd0000        	call	c_lcmp
 729  002b 2512          	jrult	L601
 730  002d 96            	ldw	x,sp
 731  002e 1c0003        	addw	x,#OFST+3
 732  0031 cd0000        	call	c_ltor
 734  0034 ae000c        	ldw	x,#L45
 735  0037 cd0000        	call	c_lcmp
 737  003a 2403          	jruge	L601
 738  003c               L011:
 739  003c 4f            	clr	a
 740  003d 2010          	jra	L411
 741  003f               L601:
 742  003f ae00d7        	ldw	x,#215
 743  0042 89            	pushw	x
 744  0043 ae0000        	ldw	x,#0
 745  0046 89            	pushw	x
 746  0047 ae0010        	ldw	x,#L73
 747  004a cd0000        	call	_assert_failed
 749  004d 5b04          	addw	sp,#4
 750  004f               L411:
 751                     ; 218   FLASH->CR2 |= FLASH_CR2_WPRG;
 753  004f 721c505b      	bset	20571,#6
 754                     ; 219   FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NWPRG);
 756  0053 721d505c      	bres	20572,#6
 757                     ; 222   *((PointerAttr uint8_t*)(MemoryAddressCast)Address)       = *((uint8_t*)(&Data));
 759  0057 7b07          	ld	a,(OFST+7,sp)
 760  0059 1e05          	ldw	x,(OFST+5,sp)
 761  005b f7            	ld	(x),a
 762                     ; 224   *(((PointerAttr uint8_t*)(MemoryAddressCast)Address) + 1) = *((uint8_t*)(&Data)+1); 
 764  005c 7b08          	ld	a,(OFST+8,sp)
 765  005e 1e05          	ldw	x,(OFST+5,sp)
 766  0060 e701          	ld	(1,x),a
 767                     ; 226   *(((PointerAttr uint8_t*)(MemoryAddressCast)Address) + 2) = *((uint8_t*)(&Data)+2); 
 769  0062 7b09          	ld	a,(OFST+9,sp)
 770  0064 1e05          	ldw	x,(OFST+5,sp)
 771  0066 e702          	ld	(2,x),a
 772                     ; 228   *(((PointerAttr uint8_t*)(MemoryAddressCast)Address) + 3) = *((uint8_t*)(&Data)+3); 
 774  0068 7b0a          	ld	a,(OFST+10,sp)
 775  006a 1e05          	ldw	x,(OFST+5,sp)
 776  006c e703          	ld	(3,x),a
 777                     ; 229 }
 780  006e 81            	ret
 822                     ; 237 void FLASH_ProgramOptionByte(uint16_t Address, uint8_t Data)
 822                     ; 238 {
 823                     .text:	section	.text,new
 824  0000               _FLASH_ProgramOptionByte:
 826  0000 89            	pushw	x
 827       00000000      OFST:	set	0
 830                     ; 240   assert_param(IS_OPTION_BYTE_ADDRESS_OK(Address));
 832  0001 a34800        	cpw	x,#18432
 833  0004 2508          	jrult	L021
 834  0006 a34880        	cpw	x,#18560
 835  0009 2403          	jruge	L021
 836  000b 4f            	clr	a
 837  000c 2010          	jra	L221
 838  000e               L021:
 839  000e ae00f0        	ldw	x,#240
 840  0011 89            	pushw	x
 841  0012 ae0000        	ldw	x,#0
 842  0015 89            	pushw	x
 843  0016 ae0010        	ldw	x,#L73
 844  0019 cd0000        	call	_assert_failed
 846  001c 5b04          	addw	sp,#4
 847  001e               L221:
 848                     ; 243   FLASH->CR2 |= FLASH_CR2_OPT;
 850  001e 721e505b      	bset	20571,#7
 851                     ; 244   FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NOPT);
 853  0022 721f505c      	bres	20572,#7
 854                     ; 247   if(Address == 0x4800)
 856  0026 1e01          	ldw	x,(OFST+1,sp)
 857  0028 a34800        	cpw	x,#18432
 858  002b 2607          	jrne	L722
 859                     ; 250     *((NEAR uint8_t*)Address) = Data;
 861  002d 7b05          	ld	a,(OFST+5,sp)
 862  002f 1e01          	ldw	x,(OFST+1,sp)
 863  0031 f7            	ld	(x),a
 865  0032 200c          	jra	L132
 866  0034               L722:
 867                     ; 255     *((NEAR uint8_t*)Address) = Data;
 869  0034 7b05          	ld	a,(OFST+5,sp)
 870  0036 1e01          	ldw	x,(OFST+1,sp)
 871  0038 f7            	ld	(x),a
 872                     ; 256     *((NEAR uint8_t*)((uint16_t)(Address + 1))) = (uint8_t)(~Data);
 874  0039 7b05          	ld	a,(OFST+5,sp)
 875  003b 43            	cpl	a
 876  003c 1e01          	ldw	x,(OFST+1,sp)
 877  003e e701          	ld	(1,x),a
 878  0040               L132:
 879                     ; 258   FLASH_WaitForLastOperation(FLASH_MEMTYPE_PROG);
 881  0040 ae00fd        	ldw	x,#253
 882  0043 cd0000        	call	_FLASH_WaitForLastOperation
 884                     ; 261   FLASH->CR2 &= (uint8_t)(~FLASH_CR2_OPT);
 886  0046 721f505b      	bres	20571,#7
 887                     ; 262   FLASH->NCR2 |= FLASH_NCR2_NOPT;
 889  004a 721e505c      	bset	20572,#7
 890                     ; 263 }
 893  004e 85            	popw	x
 894  004f 81            	ret
 929                     ; 270 void FLASH_EraseOptionByte(uint16_t Address)
 929                     ; 271 {
 930                     .text:	section	.text,new
 931  0000               _FLASH_EraseOptionByte:
 933  0000 89            	pushw	x
 934       00000000      OFST:	set	0
 937                     ; 273   assert_param(IS_OPTION_BYTE_ADDRESS_OK(Address));
 939  0001 a34800        	cpw	x,#18432
 940  0004 2508          	jrult	L621
 941  0006 a34880        	cpw	x,#18560
 942  0009 2403          	jruge	L621
 943  000b 4f            	clr	a
 944  000c 2010          	jra	L031
 945  000e               L621:
 946  000e ae0111        	ldw	x,#273
 947  0011 89            	pushw	x
 948  0012 ae0000        	ldw	x,#0
 949  0015 89            	pushw	x
 950  0016 ae0010        	ldw	x,#L73
 951  0019 cd0000        	call	_assert_failed
 953  001c 5b04          	addw	sp,#4
 954  001e               L031:
 955                     ; 276   FLASH->CR2 |= FLASH_CR2_OPT;
 957  001e 721e505b      	bset	20571,#7
 958                     ; 277   FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NOPT);
 960  0022 721f505c      	bres	20572,#7
 961                     ; 280   if(Address == 0x4800)
 963  0026 1e01          	ldw	x,(OFST+1,sp)
 964  0028 a34800        	cpw	x,#18432
 965  002b 2605          	jrne	L742
 966                     ; 283     *((NEAR uint8_t*)Address) = FLASH_CLEAR_BYTE;
 968  002d 1e01          	ldw	x,(OFST+1,sp)
 969  002f 7f            	clr	(x)
 971  0030 2009          	jra	L152
 972  0032               L742:
 973                     ; 288     *((NEAR uint8_t*)Address) = FLASH_CLEAR_BYTE;
 975  0032 1e01          	ldw	x,(OFST+1,sp)
 976  0034 7f            	clr	(x)
 977                     ; 289     *((NEAR uint8_t*)((uint16_t)(Address + (uint16_t)1 ))) = FLASH_SET_BYTE;
 979  0035 1e01          	ldw	x,(OFST+1,sp)
 980  0037 a6ff          	ld	a,#255
 981  0039 e701          	ld	(1,x),a
 982  003b               L152:
 983                     ; 291   FLASH_WaitForLastOperation(FLASH_MEMTYPE_PROG);
 985  003b ae00fd        	ldw	x,#253
 986  003e cd0000        	call	_FLASH_WaitForLastOperation
 988                     ; 294   FLASH->CR2 &= (uint8_t)(~FLASH_CR2_OPT);
 990  0041 721f505b      	bres	20571,#7
 991                     ; 295   FLASH->NCR2 |= FLASH_NCR2_NOPT;
 993  0045 721e505c      	bset	20572,#7
 994                     ; 296 }
 997  0049 85            	popw	x
 998  004a 81            	ret
1054                     ; 303 uint16_t FLASH_ReadOptionByte(uint16_t Address)
1054                     ; 304 {
1055                     .text:	section	.text,new
1056  0000               _FLASH_ReadOptionByte:
1058  0000 89            	pushw	x
1059  0001 5204          	subw	sp,#4
1060       00000004      OFST:	set	4
1063                     ; 305   uint8_t value_optbyte, value_optbyte_complement = 0;
1065                     ; 306   uint16_t res_value = 0;
1067                     ; 309   assert_param(IS_OPTION_BYTE_ADDRESS_OK(Address));
1069  0003 a34800        	cpw	x,#18432
1070  0006 2508          	jrult	L431
1071  0008 a34880        	cpw	x,#18560
1072  000b 2403          	jruge	L431
1073  000d 4f            	clr	a
1074  000e 2010          	jra	L631
1075  0010               L431:
1076  0010 ae0135        	ldw	x,#309
1077  0013 89            	pushw	x
1078  0014 ae0000        	ldw	x,#0
1079  0017 89            	pushw	x
1080  0018 ae0010        	ldw	x,#L73
1081  001b cd0000        	call	_assert_failed
1083  001e 5b04          	addw	sp,#4
1084  0020               L631:
1085                     ; 311   value_optbyte = *((NEAR uint8_t*)Address); /* Read option byte */
1087  0020 1e05          	ldw	x,(OFST+1,sp)
1088  0022 f6            	ld	a,(x)
1089  0023 6b02          	ld	(OFST-2,sp),a
1090                     ; 312   value_optbyte_complement = *(((NEAR uint8_t*)Address) + 1); /* Read option byte complement */
1092  0025 1e05          	ldw	x,(OFST+1,sp)
1093  0027 e601          	ld	a,(1,x)
1094  0029 6b01          	ld	(OFST-3,sp),a
1095                     ; 315   if(Address == 0x4800)	 
1097  002b 1e05          	ldw	x,(OFST+1,sp)
1098  002d a34800        	cpw	x,#18432
1099  0030 2608          	jrne	L572
1100                     ; 317     res_value =	 value_optbyte;
1102  0032 7b02          	ld	a,(OFST-2,sp)
1103  0034 5f            	clrw	x
1104  0035 97            	ld	xl,a
1105  0036 1f03          	ldw	(OFST-1,sp),x
1107  0038 2023          	jra	L772
1108  003a               L572:
1109                     ; 321     if(value_optbyte == (uint8_t)(~value_optbyte_complement))
1111  003a 7b01          	ld	a,(OFST-3,sp)
1112  003c 43            	cpl	a
1113  003d 1102          	cp	a,(OFST-2,sp)
1114  003f 2617          	jrne	L103
1115                     ; 323       res_value = (uint16_t)((uint16_t)value_optbyte << 8);
1117  0041 7b02          	ld	a,(OFST-2,sp)
1118  0043 5f            	clrw	x
1119  0044 97            	ld	xl,a
1120  0045 4f            	clr	a
1121  0046 02            	rlwa	x,a
1122  0047 1f03          	ldw	(OFST-1,sp),x
1123                     ; 324       res_value = res_value | (uint16_t)value_optbyte_complement;
1125  0049 7b01          	ld	a,(OFST-3,sp)
1126  004b 5f            	clrw	x
1127  004c 97            	ld	xl,a
1128  004d 01            	rrwa	x,a
1129  004e 1a04          	or	a,(OFST+0,sp)
1130  0050 01            	rrwa	x,a
1131  0051 1a03          	or	a,(OFST-1,sp)
1132  0053 01            	rrwa	x,a
1133  0054 1f03          	ldw	(OFST-1,sp),x
1135  0056 2005          	jra	L772
1136  0058               L103:
1137                     ; 328       res_value = FLASH_OPTIONBYTE_ERROR;
1139  0058 ae5555        	ldw	x,#21845
1140  005b 1f03          	ldw	(OFST-1,sp),x
1141  005d               L772:
1142                     ; 331   return(res_value);
1144  005d 1e03          	ldw	x,(OFST-1,sp)
1147  005f 5b06          	addw	sp,#6
1148  0061 81            	ret
1223                     ; 340 void FLASH_SetLowPowerMode(FLASH_LPMode_TypeDef FLASH_LPMode)
1223                     ; 341 {
1224                     .text:	section	.text,new
1225  0000               _FLASH_SetLowPowerMode:
1227  0000 89            	pushw	x
1228       00000000      OFST:	set	0
1231                     ; 343   assert_param(IS_FLASH_LOW_POWER_MODE_OK(FLASH_LPMode));
1233  0001 a30004        	cpw	x,#4
1234  0004 270f          	jreq	L441
1235  0006 a30008        	cpw	x,#8
1236  0009 270a          	jreq	L441
1237  000b a30000        	cpw	x,#0
1238  000e 2705          	jreq	L441
1239  0010 a3000c        	cpw	x,#12
1240  0013 2603          	jrne	L241
1241  0015               L441:
1242  0015 4f            	clr	a
1243  0016 2010          	jra	L641
1244  0018               L241:
1245  0018 ae0157        	ldw	x,#343
1246  001b 89            	pushw	x
1247  001c ae0000        	ldw	x,#0
1248  001f 89            	pushw	x
1249  0020 ae0010        	ldw	x,#L73
1250  0023 cd0000        	call	_assert_failed
1252  0026 5b04          	addw	sp,#4
1253  0028               L641:
1254                     ; 346   FLASH->CR1 &= (uint8_t)(~(FLASH_CR1_HALT | FLASH_CR1_AHALT)); 
1256  0028 c6505a        	ld	a,20570
1257  002b a4f3          	and	a,#243
1258  002d c7505a        	ld	20570,a
1259                     ; 349   FLASH->CR1 |= (uint8_t)FLASH_LPMode; 
1261  0030 c6505a        	ld	a,20570
1262  0033 1a02          	or	a,(OFST+2,sp)
1263  0035 c7505a        	ld	20570,a
1264                     ; 350 }
1267  0038 85            	popw	x
1268  0039 81            	ret
1327                     ; 358 void FLASH_SetProgrammingTime(FLASH_ProgramTime_TypeDef FLASH_ProgTime)
1327                     ; 359 {
1328                     .text:	section	.text,new
1329  0000               _FLASH_SetProgrammingTime:
1331  0000 89            	pushw	x
1332       00000000      OFST:	set	0
1335                     ; 361   assert_param(IS_FLASH_PROGRAM_TIME_OK(FLASH_ProgTime));
1337  0001 a30000        	cpw	x,#0
1338  0004 2705          	jreq	L451
1339  0006 a30001        	cpw	x,#1
1340  0009 2603          	jrne	L251
1341  000b               L451:
1342  000b 4f            	clr	a
1343  000c 2010          	jra	L651
1344  000e               L251:
1345  000e ae0169        	ldw	x,#361
1346  0011 89            	pushw	x
1347  0012 ae0000        	ldw	x,#0
1348  0015 89            	pushw	x
1349  0016 ae0010        	ldw	x,#L73
1350  0019 cd0000        	call	_assert_failed
1352  001c 5b04          	addw	sp,#4
1353  001e               L651:
1354                     ; 363   FLASH->CR1 &= (uint8_t)(~FLASH_CR1_FIX);
1356  001e 7211505a      	bres	20570,#0
1357                     ; 364   FLASH->CR1 |= (uint8_t)FLASH_ProgTime;
1359  0022 c6505a        	ld	a,20570
1360  0025 1a02          	or	a,(OFST+2,sp)
1361  0027 c7505a        	ld	20570,a
1362                     ; 365 }
1365  002a 85            	popw	x
1366  002b 81            	ret
1391                     ; 372 FLASH_LPMode_TypeDef FLASH_GetLowPowerMode(void)
1391                     ; 373 {
1392                     .text:	section	.text,new
1393  0000               _FLASH_GetLowPowerMode:
1397                     ; 374   return((FLASH_LPMode_TypeDef)(FLASH->CR1 & (uint8_t)(FLASH_CR1_HALT | FLASH_CR1_AHALT)));
1399  0000 c6505a        	ld	a,20570
1400  0003 5f            	clrw	x
1401  0004 a40c          	and	a,#12
1402  0006 5f            	clrw	x
1403  0007 02            	rlwa	x,a
1406  0008 81            	ret
1431                     ; 382 FLASH_ProgramTime_TypeDef FLASH_GetProgrammingTime(void)
1431                     ; 383 {
1432                     .text:	section	.text,new
1433  0000               _FLASH_GetProgrammingTime:
1437                     ; 384   return((FLASH_ProgramTime_TypeDef)(FLASH->CR1 & FLASH_CR1_FIX));
1439  0000 c6505a        	ld	a,20570
1440  0003 5f            	clrw	x
1441  0004 a401          	and	a,#1
1442  0006 5f            	clrw	x
1443  0007 02            	rlwa	x,a
1446  0008 81            	ret
1478                     ; 392 uint32_t FLASH_GetBootSize(void)
1478                     ; 393 {
1479                     .text:	section	.text,new
1480  0000               _FLASH_GetBootSize:
1482  0000 5204          	subw	sp,#4
1483       00000004      OFST:	set	4
1486                     ; 394   uint32_t temp = 0;
1488                     ; 397   temp = (uint32_t)((uint32_t)FLASH->FPR * (uint32_t)512);
1490  0002 c6505d        	ld	a,20573
1491  0005 5f            	clrw	x
1492  0006 97            	ld	xl,a
1493  0007 90ae0200      	ldw	y,#512
1494  000b cd0000        	call	c_umul
1496  000e 96            	ldw	x,sp
1497  000f 1c0001        	addw	x,#OFST-3
1498  0012 cd0000        	call	c_rtol
1500                     ; 400   if(FLASH->FPR == 0xFF)
1502  0015 c6505d        	ld	a,20573
1503  0018 a1ff          	cp	a,#255
1504  001a 2611          	jrne	L124
1505                     ; 402     temp += 512;
1507  001c ae0200        	ldw	x,#512
1508  001f bf02          	ldw	c_lreg+2,x
1509  0021 ae0000        	ldw	x,#0
1510  0024 bf00          	ldw	c_lreg,x
1511  0026 96            	ldw	x,sp
1512  0027 1c0001        	addw	x,#OFST-3
1513  002a cd0000        	call	c_lgadd
1515  002d               L124:
1516                     ; 406   return(temp);
1518  002d 96            	ldw	x,sp
1519  002e 1c0001        	addw	x,#OFST-3
1520  0031 cd0000        	call	c_ltor
1524  0034 5b04          	addw	sp,#4
1525  0036 81            	ret
1628                     ; 417 FlagStatus FLASH_GetFlagStatus(FLASH_Flag_TypeDef FLASH_FLAG)
1628                     ; 418 {
1629                     .text:	section	.text,new
1630  0000               _FLASH_GetFlagStatus:
1632  0000 89            	pushw	x
1633  0001 89            	pushw	x
1634       00000002      OFST:	set	2
1637                     ; 419   FlagStatus status = RESET;
1639                     ; 421   assert_param(IS_FLASH_FLAGS_OK(FLASH_FLAG));
1641  0002 a30008        	cpw	x,#8
1642  0005 270f          	jreq	L271
1643  0007 a30004        	cpw	x,#4
1644  000a 270a          	jreq	L271
1645  000c a30002        	cpw	x,#2
1646  000f 2705          	jreq	L271
1647  0011 a30001        	cpw	x,#1
1648  0014 2603          	jrne	L071
1649  0016               L271:
1650  0016 4f            	clr	a
1651  0017 2010          	jra	L471
1652  0019               L071:
1653  0019 ae01a5        	ldw	x,#421
1654  001c 89            	pushw	x
1655  001d ae0000        	ldw	x,#0
1656  0020 89            	pushw	x
1657  0021 ae0010        	ldw	x,#L73
1658  0024 cd0000        	call	_assert_failed
1660  0027 5b04          	addw	sp,#4
1661  0029               L471:
1662                     ; 424   if((FLASH->IAPSR & (uint8_t)FLASH_FLAG) != (uint8_t)RESET)
1664  0029 c6505f        	ld	a,20575
1665  002c 1504          	bcp	a,(OFST+2,sp)
1666  002e 2707          	jreq	L174
1667                     ; 426     status = SET; /* FLASH_FLAG is set */
1669  0030 ae0001        	ldw	x,#1
1670  0033 1f01          	ldw	(OFST-1,sp),x
1672  0035 2003          	jra	L374
1673  0037               L174:
1674                     ; 430     status = RESET; /* FLASH_FLAG is reset*/
1676  0037 5f            	clrw	x
1677  0038 1f01          	ldw	(OFST-1,sp),x
1678  003a               L374:
1679                     ; 434   return status;
1681  003a 1e01          	ldw	x,(OFST-1,sp)
1684  003c 5b04          	addw	sp,#4
1685  003e 81            	ret
1766                     ; 549 IN_RAM(FLASH_Status_TypeDef FLASH_WaitForLastOperation(FLASH_MemType_TypeDef FLASH_MemType)) 
1766                     ; 550 {
1767                     .text:	section	.text,new
1768  0000               _FLASH_WaitForLastOperation:
1770  0000 5203          	subw	sp,#3
1771       00000003      OFST:	set	3
1774                     ; 551   uint8_t flagstatus = 0x00;
1776  0002 0f03          	clr	(OFST+0,sp)
1777                     ; 552   uint16_t timeout = OPERATION_TIMEOUT;
1779  0004 aeffff        	ldw	x,#65535
1780  0007 1f01          	ldw	(OFST-2,sp),x
1782  0009 200e          	jra	L535
1783  000b               L135:
1784                     ; 578     flagstatus = (uint8_t)(FLASH->IAPSR & (FLASH_IAPSR_EOP | FLASH_IAPSR_WR_PG_DIS));
1786  000b c6505f        	ld	a,20575
1787  000e a405          	and	a,#5
1788  0010 6b03          	ld	(OFST+0,sp),a
1789                     ; 579     timeout--;
1791  0012 1e01          	ldw	x,(OFST-2,sp)
1792  0014 1d0001        	subw	x,#1
1793  0017 1f01          	ldw	(OFST-2,sp),x
1794  0019               L535:
1795                     ; 576   while((flagstatus == 0x00) && (timeout != 0x00))
1797  0019 0d03          	tnz	(OFST+0,sp)
1798  001b 2604          	jrne	L145
1800  001d 1e01          	ldw	x,(OFST-2,sp)
1801  001f 26ea          	jrne	L135
1802  0021               L145:
1803                     ; 583   if(timeout == 0x00 )
1805  0021 1e01          	ldw	x,(OFST-2,sp)
1806  0023 2604          	jrne	L345
1807                     ; 585     flagstatus = FLASH_STATUS_TIMEOUT;
1809  0025 a602          	ld	a,#2
1810  0027 6b03          	ld	(OFST+0,sp),a
1811  0029               L345:
1812                     ; 588   return((FLASH_Status_TypeDef)flagstatus);
1814  0029 7b03          	ld	a,(OFST+0,sp)
1815  002b 5f            	clrw	x
1816  002c 97            	ld	xl,a
1819  002d 5b03          	addw	sp,#3
1820  002f 81            	ret
1880                     ; 598 IN_RAM(void FLASH_EraseBlock(uint16_t BlockNum, FLASH_MemType_TypeDef FLASH_MemType))
1880                     ; 599 {
1881                     .text:	section	.text,new
1882  0000               _FLASH_EraseBlock:
1884  0000 89            	pushw	x
1885  0001 5206          	subw	sp,#6
1886       00000006      OFST:	set	6
1889                     ; 600   uint32_t startaddress = 0;
1891                     ; 610   assert_param(IS_MEMORY_TYPE_OK(FLASH_MemType));
1893  0003 1e0b          	ldw	x,(OFST+5,sp)
1894  0005 a300fd        	cpw	x,#253
1895  0008 2707          	jreq	L402
1896  000a 1e0b          	ldw	x,(OFST+5,sp)
1897  000c a300f7        	cpw	x,#247
1898  000f 2603          	jrne	L202
1899  0011               L402:
1900  0011 4f            	clr	a
1901  0012 2010          	jra	L602
1902  0014               L202:
1903  0014 ae0262        	ldw	x,#610
1904  0017 89            	pushw	x
1905  0018 ae0000        	ldw	x,#0
1906  001b 89            	pushw	x
1907  001c ae0010        	ldw	x,#L73
1908  001f cd0000        	call	_assert_failed
1910  0022 5b04          	addw	sp,#4
1911  0024               L602:
1912                     ; 611   if(FLASH_MemType == FLASH_MEMTYPE_PROG)
1914  0024 1e0b          	ldw	x,(OFST+5,sp)
1915  0026 a300fd        	cpw	x,#253
1916  0029 2626          	jrne	L375
1917                     ; 613     assert_param(IS_FLASH_PROG_BLOCK_NUMBER_OK(BlockNum));
1919  002b 1e07          	ldw	x,(OFST+1,sp)
1920  002d a30080        	cpw	x,#128
1921  0030 2403          	jruge	L012
1922  0032 4f            	clr	a
1923  0033 2010          	jra	L212
1924  0035               L012:
1925  0035 ae0265        	ldw	x,#613
1926  0038 89            	pushw	x
1927  0039 ae0000        	ldw	x,#0
1928  003c 89            	pushw	x
1929  003d ae0010        	ldw	x,#L73
1930  0040 cd0000        	call	_assert_failed
1932  0043 5b04          	addw	sp,#4
1933  0045               L212:
1934                     ; 614     startaddress = FLASH_PROG_START_PHYSICAL_ADDRESS;
1936  0045 ae8000        	ldw	x,#32768
1937  0048 1f05          	ldw	(OFST-1,sp),x
1938  004a ae0000        	ldw	x,#0
1939  004d 1f03          	ldw	(OFST-3,sp),x
1941  004f 2024          	jra	L575
1942  0051               L375:
1943                     ; 618     assert_param(IS_FLASH_DATA_BLOCK_NUMBER_OK(BlockNum));
1945  0051 1e07          	ldw	x,(OFST+1,sp)
1946  0053 a3000a        	cpw	x,#10
1947  0056 2403          	jruge	L412
1948  0058 4f            	clr	a
1949  0059 2010          	jra	L612
1950  005b               L412:
1951  005b ae026a        	ldw	x,#618
1952  005e 89            	pushw	x
1953  005f ae0000        	ldw	x,#0
1954  0062 89            	pushw	x
1955  0063 ae0010        	ldw	x,#L73
1956  0066 cd0000        	call	_assert_failed
1958  0069 5b04          	addw	sp,#4
1959  006b               L612:
1960                     ; 619     startaddress = FLASH_DATA_START_PHYSICAL_ADDRESS;
1962  006b ae4000        	ldw	x,#16384
1963  006e 1f05          	ldw	(OFST-1,sp),x
1964  0070 ae0000        	ldw	x,#0
1965  0073 1f03          	ldw	(OFST-3,sp),x
1966  0075               L575:
1967                     ; 627     pwFlash = (PointerAttr uint32_t *)(MemoryAddressCast)(startaddress + ((uint32_t)BlockNum * FLASH_BLOCK_SIZE));
1969  0075 1e07          	ldw	x,(OFST+1,sp)
1970  0077 a640          	ld	a,#64
1971  0079 cd0000        	call	c_cmulx
1973  007c 96            	ldw	x,sp
1974  007d 1c0003        	addw	x,#OFST-3
1975  0080 cd0000        	call	c_ladd
1977  0083 be02          	ldw	x,c_lreg+2
1978  0085 1f01          	ldw	(OFST-5,sp),x
1979                     ; 631   FLASH->CR2 |= FLASH_CR2_ERASE;
1981  0087 721a505b      	bset	20571,#5
1982                     ; 632   FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NERASE);
1984  008b 721b505c      	bres	20572,#5
1985                     ; 636     *pwFlash = (uint32_t)0;
1987  008f 1e01          	ldw	x,(OFST-5,sp)
1988  0091 a600          	ld	a,#0
1989  0093 e703          	ld	(3,x),a
1990  0095 a600          	ld	a,#0
1991  0097 e702          	ld	(2,x),a
1992  0099 a600          	ld	a,#0
1993  009b e701          	ld	(1,x),a
1994  009d a600          	ld	a,#0
1995  009f f7            	ld	(x),a
1996                     ; 644 }
1999  00a0 5b08          	addw	sp,#8
2000  00a2 81            	ret
2099                     ; 655 IN_RAM(void FLASH_ProgramBlock(uint16_t BlockNum, FLASH_MemType_TypeDef FLASH_MemType, 
2099                     ; 656                         FLASH_ProgramMode_TypeDef FLASH_ProgMode, uint8_t *Buffer))
2099                     ; 657 {
2100                     .text:	section	.text,new
2101  0000               _FLASH_ProgramBlock:
2103  0000 89            	pushw	x
2104  0001 5206          	subw	sp,#6
2105       00000006      OFST:	set	6
2108                     ; 658   uint16_t Count = 0;
2110                     ; 659   uint32_t startaddress = 0;
2112                     ; 662   assert_param(IS_MEMORY_TYPE_OK(FLASH_MemType));
2114  0003 1e0b          	ldw	x,(OFST+5,sp)
2115  0005 a300fd        	cpw	x,#253
2116  0008 2707          	jreq	L422
2117  000a 1e0b          	ldw	x,(OFST+5,sp)
2118  000c a300f7        	cpw	x,#247
2119  000f 2603          	jrne	L222
2120  0011               L422:
2121  0011 4f            	clr	a
2122  0012 2010          	jra	L622
2123  0014               L222:
2124  0014 ae0296        	ldw	x,#662
2125  0017 89            	pushw	x
2126  0018 ae0000        	ldw	x,#0
2127  001b 89            	pushw	x
2128  001c ae0010        	ldw	x,#L73
2129  001f cd0000        	call	_assert_failed
2131  0022 5b04          	addw	sp,#4
2132  0024               L622:
2133                     ; 663   assert_param(IS_FLASH_PROGRAM_MODE_OK(FLASH_ProgMode));
2135  0024 1e0d          	ldw	x,(OFST+7,sp)
2136  0026 2707          	jreq	L232
2137  0028 1e0d          	ldw	x,(OFST+7,sp)
2138  002a a30010        	cpw	x,#16
2139  002d 2603          	jrne	L032
2140  002f               L232:
2141  002f 4f            	clr	a
2142  0030 2010          	jra	L432
2143  0032               L032:
2144  0032 ae0297        	ldw	x,#663
2145  0035 89            	pushw	x
2146  0036 ae0000        	ldw	x,#0
2147  0039 89            	pushw	x
2148  003a ae0010        	ldw	x,#L73
2149  003d cd0000        	call	_assert_failed
2151  0040 5b04          	addw	sp,#4
2152  0042               L432:
2153                     ; 664   if(FLASH_MemType == FLASH_MEMTYPE_PROG)
2155  0042 1e0b          	ldw	x,(OFST+5,sp)
2156  0044 a300fd        	cpw	x,#253
2157  0047 2626          	jrne	L346
2158                     ; 666     assert_param(IS_FLASH_PROG_BLOCK_NUMBER_OK(BlockNum));
2160  0049 1e07          	ldw	x,(OFST+1,sp)
2161  004b a30080        	cpw	x,#128
2162  004e 2403          	jruge	L632
2163  0050 4f            	clr	a
2164  0051 2010          	jra	L042
2165  0053               L632:
2166  0053 ae029a        	ldw	x,#666
2167  0056 89            	pushw	x
2168  0057 ae0000        	ldw	x,#0
2169  005a 89            	pushw	x
2170  005b ae0010        	ldw	x,#L73
2171  005e cd0000        	call	_assert_failed
2173  0061 5b04          	addw	sp,#4
2174  0063               L042:
2175                     ; 667     startaddress = FLASH_PROG_START_PHYSICAL_ADDRESS;
2177  0063 ae8000        	ldw	x,#32768
2178  0066 1f03          	ldw	(OFST-3,sp),x
2179  0068 ae0000        	ldw	x,#0
2180  006b 1f01          	ldw	(OFST-5,sp),x
2182  006d 2024          	jra	L546
2183  006f               L346:
2184                     ; 671     assert_param(IS_FLASH_DATA_BLOCK_NUMBER_OK(BlockNum));
2186  006f 1e07          	ldw	x,(OFST+1,sp)
2187  0071 a3000a        	cpw	x,#10
2188  0074 2403          	jruge	L242
2189  0076 4f            	clr	a
2190  0077 2010          	jra	L442
2191  0079               L242:
2192  0079 ae029f        	ldw	x,#671
2193  007c 89            	pushw	x
2194  007d ae0000        	ldw	x,#0
2195  0080 89            	pushw	x
2196  0081 ae0010        	ldw	x,#L73
2197  0084 cd0000        	call	_assert_failed
2199  0087 5b04          	addw	sp,#4
2200  0089               L442:
2201                     ; 672     startaddress = FLASH_DATA_START_PHYSICAL_ADDRESS;
2203  0089 ae4000        	ldw	x,#16384
2204  008c 1f03          	ldw	(OFST-3,sp),x
2205  008e ae0000        	ldw	x,#0
2206  0091 1f01          	ldw	(OFST-5,sp),x
2207  0093               L546:
2208                     ; 676   startaddress = startaddress + ((uint32_t)BlockNum * FLASH_BLOCK_SIZE);
2210  0093 1e07          	ldw	x,(OFST+1,sp)
2211  0095 a640          	ld	a,#64
2212  0097 cd0000        	call	c_cmulx
2214  009a 96            	ldw	x,sp
2215  009b 1c0001        	addw	x,#OFST-5
2216  009e cd0000        	call	c_lgadd
2218                     ; 679   if(FLASH_ProgMode == FLASH_PROGRAMMODE_STANDARD)
2220  00a1 1e0d          	ldw	x,(OFST+7,sp)
2221  00a3 260a          	jrne	L746
2222                     ; 682     FLASH->CR2 |= FLASH_CR2_PRG;
2224  00a5 7210505b      	bset	20571,#0
2225                     ; 683     FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NPRG);
2227  00a9 7211505c      	bres	20572,#0
2229  00ad 2008          	jra	L156
2230  00af               L746:
2231                     ; 688     FLASH->CR2 |= FLASH_CR2_FPRG;
2233  00af 7218505b      	bset	20571,#4
2234                     ; 689     FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NFPRG);
2236  00b3 7219505c      	bres	20572,#4
2237  00b7               L156:
2238                     ; 693   for(Count = 0; Count < FLASH_BLOCK_SIZE; Count++)
2240  00b7 5f            	clrw	x
2241  00b8 1f05          	ldw	(OFST-1,sp),x
2242  00ba               L356:
2243                     ; 695     *((PointerAttr uint8_t*) (MemoryAddressCast)startaddress + Count) = ((uint8_t)(Buffer[Count]));
2245  00ba 1e0f          	ldw	x,(OFST+9,sp)
2246  00bc 72fb05        	addw	x,(OFST-1,sp)
2247  00bf f6            	ld	a,(x)
2248  00c0 1e03          	ldw	x,(OFST-3,sp)
2249  00c2 72fb05        	addw	x,(OFST-1,sp)
2250  00c5 f7            	ld	(x),a
2251                     ; 693   for(Count = 0; Count < FLASH_BLOCK_SIZE; Count++)
2253  00c6 1e05          	ldw	x,(OFST-1,sp)
2254  00c8 1c0001        	addw	x,#1
2255  00cb 1f05          	ldw	(OFST-1,sp),x
2258  00cd 1e05          	ldw	x,(OFST-1,sp)
2259  00cf a30040        	cpw	x,#64
2260  00d2 25e6          	jrult	L356
2261                     ; 697 }
2264  00d4 5b08          	addw	sp,#8
2265  00d6 81            	ret
2278                     	xdef	_FLASH_WaitForLastOperation
2279                     	xdef	_FLASH_ProgramBlock
2280                     	xdef	_FLASH_EraseBlock
2281                     	xdef	_FLASH_GetFlagStatus
2282                     	xdef	_FLASH_GetBootSize
2283                     	xdef	_FLASH_GetProgrammingTime
2284                     	xdef	_FLASH_GetLowPowerMode
2285                     	xdef	_FLASH_SetProgrammingTime
2286                     	xdef	_FLASH_SetLowPowerMode
2287                     	xdef	_FLASH_EraseOptionByte
2288                     	xdef	_FLASH_ProgramOptionByte
2289                     	xdef	_FLASH_ReadOptionByte
2290                     	xdef	_FLASH_ProgramWord
2291                     	xdef	_FLASH_ReadByte
2292                     	xdef	_FLASH_ProgramByte
2293                     	xdef	_FLASH_EraseByte
2294                     	xdef	_FLASH_ITConfig
2295                     	xdef	_FLASH_DeInit
2296                     	xdef	_FLASH_Lock
2297                     	xdef	_FLASH_Unlock
2298                     	xref	_assert_failed
2299                     	switch	.const
2300  0010               L73:
2301  0010 2e2e5c2e2e5c  	dc.b	"..\..\..\libraries"
2302  0022 5c73746d3873  	dc.b	"\stm8s_stdperiph_d"
2303  0034 72697665725c  	dc.b	"river\src\stm8s_fl"
2304  0046 6173682e6300  	dc.b	"ash.c",0
2305                     	xref.b	c_lreg
2306                     	xref.b	c_x
2307                     	xref.b	c_y
2327                     	xref	c_ladd
2328                     	xref	c_cmulx
2329                     	xref	c_lgadd
2330                     	xref	c_rtol
2331                     	xref	c_umul
2332                     	xref	c_lcmp
2333                     	xref	c_ltor
2334                     	end

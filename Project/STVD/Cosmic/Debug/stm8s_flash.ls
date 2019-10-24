   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.10.2 - 02 Nov 2011
   3                     ; Generator (Limited) V4.3.7 - 29 Nov 2011
  17                     ; 87 void FLASH_Unlock(FLASH_MemType_TypeDef FLASH_MemType)
  17                     ; 88 {
  18                     	scross	off
  19                     .text:	section	.text,new
  20  0000               _FLASH_Unlock:
  21  0000 89            	pushw	x
  22       00000000      OFST:	set	0
  24                     ; 90   assert_param(IS_MEMORY_TYPE_OK(FLASH_MemType));
  25  0001 a300fd        	cpw	x,#253
  26  0004 2705          	jreq	L6
  27  0006 a300f7        	cpw	x,#247
  28  0009 2603          	jrne	L4
  29  000b               L6:
  30  000b 4f            	clr	a
  31  000c 2010          	jra	L01
  32  000e               L4:
  33  000e ae005a        	ldw	x,#90
  34  0011 89            	pushw	x
  35  0012 ae0000        	ldw	x,#0
  36  0015 89            	pushw	x
  37  0016 ae0010        	ldw	x,#L3
  38  0019 cd0000        	call	_assert_failed
  40  001c 5b04          	addw	sp,#4
  41  001e               L01:
  42                     ; 93   if(FLASH_MemType == FLASH_MEMTYPE_PROG)
  43  001e 1e01          	ldw	x,(OFST+1,sp)
  44  0020 a300fd        	cpw	x,#253
  45  0023 260a          	jrne	L5
  46                     ; 95     FLASH->PUKR = FLASH_RASS_KEY1;
  47  0025 35565062      	mov	20578,#86
  48                     ; 96     FLASH->PUKR = FLASH_RASS_KEY2;
  49  0029 35ae5062      	mov	20578,#174
  51  002d 2008          	jra	L7
  52  002f               L5:
  53                     ; 101     FLASH->DUKR = FLASH_RASS_KEY2; /* Warning: keys are reversed on data memory !!! */
  54  002f 35ae5064      	mov	20580,#174
  55                     ; 102     FLASH->DUKR = FLASH_RASS_KEY1;
  56  0033 35565064      	mov	20580,#86
  57  0037               L7:
  58                     ; 104 }
  59  0037 85            	popw	x
  60  0038 81            	ret
  62                     ; 112 void FLASH_Lock(FLASH_MemType_TypeDef FLASH_MemType)
  62                     ; 113 {
  63                     .text:	section	.text,new
  64  0000               _FLASH_Lock:
  65  0000 89            	pushw	x
  66       00000000      OFST:	set	0
  68                     ; 115   assert_param(IS_MEMORY_TYPE_OK(FLASH_MemType));
  69  0001 a300fd        	cpw	x,#253
  70  0004 2705          	jreq	L61
  71  0006 a300f7        	cpw	x,#247
  72  0009 2603          	jrne	L41
  73  000b               L61:
  74  000b 4f            	clr	a
  75  000c 2010          	jra	L02
  76  000e               L41:
  77  000e ae0073        	ldw	x,#115
  78  0011 89            	pushw	x
  79  0012 ae0000        	ldw	x,#0
  80  0015 89            	pushw	x
  81  0016 ae0010        	ldw	x,#L3
  82  0019 cd0000        	call	_assert_failed
  84  001c 5b04          	addw	sp,#4
  85  001e               L02:
  86                     ; 118   FLASH->IAPSR &= (uint8_t)FLASH_MemType;
  87  001e c6505f        	ld	a,20575
  88  0021 1402          	and	a,(OFST+2,sp)
  89  0023 c7505f        	ld	20575,a
  90                     ; 119 }
  91  0026 85            	popw	x
  92  0027 81            	ret
  94                     ; 126 void FLASH_DeInit(void)
  94                     ; 127 {
  95                     .text:	section	.text,new
  96  0000               _FLASH_DeInit:
  98                     ; 128   FLASH->CR1 = FLASH_CR1_RESET_VALUE;
  99  0000 725f505a      	clr	20570
 100                     ; 129   FLASH->CR2 = FLASH_CR2_RESET_VALUE;
 101  0004 725f505b      	clr	20571
 102                     ; 130   FLASH->NCR2 = FLASH_NCR2_RESET_VALUE;
 103  0008 35ff505c      	mov	20572,#255
 104                     ; 131   FLASH->IAPSR &= (uint8_t)(~FLASH_IAPSR_DUL);
 105  000c 7217505f      	bres	20575,#3
 106                     ; 132   FLASH->IAPSR &= (uint8_t)(~FLASH_IAPSR_PUL);
 107  0010 7213505f      	bres	20575,#1
 108                     ; 133   (void) FLASH->IAPSR; /* Reading of this register causes the clearing of status flags */
 109  0014 c6505f        	ld	a,20575
 110                     ; 134 }
 111  0017 81            	ret
 113                     ; 142 void FLASH_ITConfig(FunctionalState NewState)
 113                     ; 143 {
 114                     .text:	section	.text,new
 115  0000               _FLASH_ITConfig:
 116  0000 89            	pushw	x
 117       00000000      OFST:	set	0
 119                     ; 145   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 120  0001 a30000        	cpw	x,#0
 121  0004 2705          	jreq	L03
 122  0006 a30001        	cpw	x,#1
 123  0009 2603          	jrne	L62
 124  000b               L03:
 125  000b 4f            	clr	a
 126  000c 2010          	jra	L23
 127  000e               L62:
 128  000e ae0091        	ldw	x,#145
 129  0011 89            	pushw	x
 130  0012 ae0000        	ldw	x,#0
 131  0015 89            	pushw	x
 132  0016 ae0010        	ldw	x,#L3
 133  0019 cd0000        	call	_assert_failed
 135  001c 5b04          	addw	sp,#4
 136  001e               L23:
 137                     ; 147   if(NewState != DISABLE)
 138  001e 1e01          	ldw	x,(OFST+1,sp)
 139  0020 2706          	jreq	L11
 140                     ; 149     FLASH->CR1 |= FLASH_CR1_IE; /* Enables the interrupt sources */
 141  0022 7212505a      	bset	20570,#1
 143  0026 2004          	jra	L31
 144  0028               L11:
 145                     ; 153     FLASH->CR1 &= (uint8_t)(~FLASH_CR1_IE); /* Disables the interrupt sources */
 146  0028 7213505a      	bres	20570,#1
 147  002c               L31:
 148                     ; 155 }
 149  002c 85            	popw	x
 150  002d 81            	ret
 152                     .const:	section	.text
 153  0000               L44:
 154  0000 00008000      	dc.l	32768
 155  0004               L64:
 156  0004 0000a000      	dc.l	40960
 157  0008               L05:
 158  0008 00004000      	dc.l	16384
 159  000c               L25:
 160  000c 00004280      	dc.l	17024
 161                     ; 164 void FLASH_EraseByte(uint32_t Address)
 161                     ; 165 {
 162                     .text:	section	.text,new
 163  0000               _FLASH_EraseByte:
 164       00000000      OFST:	set	0
 166                     ; 167   assert_param(IS_FLASH_ADDRESS_OK(Address));
 167  0000 96            	ldw	x,sp
 168  0001 1c0003        	addw	x,#OFST+3
 169  0004 cd0000        	call	c_ltor
 171  0007 ae0000        	ldw	x,#L44
 172  000a cd0000        	call	c_lcmp
 174  000d 250f          	jrult	L24
 175  000f 96            	ldw	x,sp
 176  0010 1c0003        	addw	x,#OFST+3
 177  0013 cd0000        	call	c_ltor
 179  0016 ae0004        	ldw	x,#L64
 180  0019 cd0000        	call	c_lcmp
 182  001c 251e          	jrult	L04
 183  001e               L24:
 184  001e 96            	ldw	x,sp
 185  001f 1c0003        	addw	x,#OFST+3
 186  0022 cd0000        	call	c_ltor
 188  0025 ae0008        	ldw	x,#L05
 189  0028 cd0000        	call	c_lcmp
 191  002b 2512          	jrult	L63
 192  002d 96            	ldw	x,sp
 193  002e 1c0003        	addw	x,#OFST+3
 194  0031 cd0000        	call	c_ltor
 196  0034 ae000c        	ldw	x,#L25
 197  0037 cd0000        	call	c_lcmp
 199  003a 2403          	jruge	L63
 200  003c               L04:
 201  003c 4f            	clr	a
 202  003d 2010          	jra	L45
 203  003f               L63:
 204  003f ae00a7        	ldw	x,#167
 205  0042 89            	pushw	x
 206  0043 ae0000        	ldw	x,#0
 207  0046 89            	pushw	x
 208  0047 ae0010        	ldw	x,#L3
 209  004a cd0000        	call	_assert_failed
 211  004d 5b04          	addw	sp,#4
 212  004f               L45:
 213                     ; 170   *(PointerAttr uint8_t*) (MemoryAddressCast)Address = FLASH_CLEAR_BYTE; 
 214  004f 1e05          	ldw	x,(OFST+5,sp)
 215  0051 7f            	clr	(x)
 216                     ; 171 }
 217  0052 81            	ret
 219                     ; 181 void FLASH_ProgramByte(uint32_t Address, uint8_t Data)
 219                     ; 182 {
 220                     .text:	section	.text,new
 221  0000               _FLASH_ProgramByte:
 222       00000000      OFST:	set	0
 224                     ; 184   assert_param(IS_FLASH_ADDRESS_OK(Address));
 225  0000 96            	ldw	x,sp
 226  0001 1c0003        	addw	x,#OFST+3
 227  0004 cd0000        	call	c_ltor
 229  0007 ae0000        	ldw	x,#L44
 230  000a cd0000        	call	c_lcmp
 232  000d 250f          	jrult	L46
 233  000f 96            	ldw	x,sp
 234  0010 1c0003        	addw	x,#OFST+3
 235  0013 cd0000        	call	c_ltor
 237  0016 ae0004        	ldw	x,#L64
 238  0019 cd0000        	call	c_lcmp
 240  001c 251e          	jrult	L26
 241  001e               L46:
 242  001e 96            	ldw	x,sp
 243  001f 1c0003        	addw	x,#OFST+3
 244  0022 cd0000        	call	c_ltor
 246  0025 ae0008        	ldw	x,#L05
 247  0028 cd0000        	call	c_lcmp
 249  002b 2512          	jrult	L06
 250  002d 96            	ldw	x,sp
 251  002e 1c0003        	addw	x,#OFST+3
 252  0031 cd0000        	call	c_ltor
 254  0034 ae000c        	ldw	x,#L25
 255  0037 cd0000        	call	c_lcmp
 257  003a 2403          	jruge	L06
 258  003c               L26:
 259  003c 4f            	clr	a
 260  003d 2010          	jra	L66
 261  003f               L06:
 262  003f ae00b8        	ldw	x,#184
 263  0042 89            	pushw	x
 264  0043 ae0000        	ldw	x,#0
 265  0046 89            	pushw	x
 266  0047 ae0010        	ldw	x,#L3
 267  004a cd0000        	call	_assert_failed
 269  004d 5b04          	addw	sp,#4
 270  004f               L66:
 271                     ; 185   *(PointerAttr uint8_t*) (MemoryAddressCast)Address = Data;
 272  004f 7b07          	ld	a,(OFST+7,sp)
 273  0051 1e05          	ldw	x,(OFST+5,sp)
 274  0053 f7            	ld	(x),a
 275                     ; 186 }
 276  0054 81            	ret
 278                     ; 195 uint8_t FLASH_ReadByte(uint32_t Address)
 278                     ; 196 {
 279                     .text:	section	.text,new
 280  0000               _FLASH_ReadByte:
 281       00000000      OFST:	set	0
 283                     ; 198   assert_param(IS_FLASH_ADDRESS_OK(Address));
 284  0000 96            	ldw	x,sp
 285  0001 1c0003        	addw	x,#OFST+3
 286  0004 cd0000        	call	c_ltor
 288  0007 ae0000        	ldw	x,#L44
 289  000a cd0000        	call	c_lcmp
 291  000d 250f          	jrult	L67
 292  000f 96            	ldw	x,sp
 293  0010 1c0003        	addw	x,#OFST+3
 294  0013 cd0000        	call	c_ltor
 296  0016 ae0004        	ldw	x,#L64
 297  0019 cd0000        	call	c_lcmp
 299  001c 251e          	jrult	L47
 300  001e               L67:
 301  001e 96            	ldw	x,sp
 302  001f 1c0003        	addw	x,#OFST+3
 303  0022 cd0000        	call	c_ltor
 305  0025 ae0008        	ldw	x,#L05
 306  0028 cd0000        	call	c_lcmp
 308  002b 2512          	jrult	L27
 309  002d 96            	ldw	x,sp
 310  002e 1c0003        	addw	x,#OFST+3
 311  0031 cd0000        	call	c_ltor
 313  0034 ae000c        	ldw	x,#L25
 314  0037 cd0000        	call	c_lcmp
 316  003a 2403          	jruge	L27
 317  003c               L47:
 318  003c 4f            	clr	a
 319  003d 2010          	jra	L001
 320  003f               L27:
 321  003f ae00c6        	ldw	x,#198
 322  0042 89            	pushw	x
 323  0043 ae0000        	ldw	x,#0
 324  0046 89            	pushw	x
 325  0047 ae0010        	ldw	x,#L3
 326  004a cd0000        	call	_assert_failed
 328  004d 5b04          	addw	sp,#4
 329  004f               L001:
 330                     ; 201   return(*(PointerAttr uint8_t *) (MemoryAddressCast)Address); 
 331  004f 1e05          	ldw	x,(OFST+5,sp)
 332  0051 f6            	ld	a,(x)
 334  0052 81            	ret
 336                     ; 212 void FLASH_ProgramWord(uint32_t Address, uint32_t Data)
 336                     ; 213 {
 337                     .text:	section	.text,new
 338  0000               _FLASH_ProgramWord:
 339       00000000      OFST:	set	0
 341                     ; 215   assert_param(IS_FLASH_ADDRESS_OK(Address));
 342  0000 96            	ldw	x,sp
 343  0001 1c0003        	addw	x,#OFST+3
 344  0004 cd0000        	call	c_ltor
 346  0007 ae0000        	ldw	x,#L44
 347  000a cd0000        	call	c_lcmp
 349  000d 250f          	jrult	L011
 350  000f 96            	ldw	x,sp
 351  0010 1c0003        	addw	x,#OFST+3
 352  0013 cd0000        	call	c_ltor
 354  0016 ae0004        	ldw	x,#L64
 355  0019 cd0000        	call	c_lcmp
 357  001c 251e          	jrult	L601
 358  001e               L011:
 359  001e 96            	ldw	x,sp
 360  001f 1c0003        	addw	x,#OFST+3
 361  0022 cd0000        	call	c_ltor
 363  0025 ae0008        	ldw	x,#L05
 364  0028 cd0000        	call	c_lcmp
 366  002b 2512          	jrult	L401
 367  002d 96            	ldw	x,sp
 368  002e 1c0003        	addw	x,#OFST+3
 369  0031 cd0000        	call	c_ltor
 371  0034 ae000c        	ldw	x,#L25
 372  0037 cd0000        	call	c_lcmp
 374  003a 2403          	jruge	L401
 375  003c               L601:
 376  003c 4f            	clr	a
 377  003d 2010          	jra	L211
 378  003f               L401:
 379  003f ae00d7        	ldw	x,#215
 380  0042 89            	pushw	x
 381  0043 ae0000        	ldw	x,#0
 382  0046 89            	pushw	x
 383  0047 ae0010        	ldw	x,#L3
 384  004a cd0000        	call	_assert_failed
 386  004d 5b04          	addw	sp,#4
 387  004f               L211:
 388                     ; 218   FLASH->CR2 |= FLASH_CR2_WPRG;
 389  004f 721c505b      	bset	20571,#6
 390                     ; 219   FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NWPRG);
 391  0053 721d505c      	bres	20572,#6
 392                     ; 222   *((PointerAttr uint8_t*)(MemoryAddressCast)Address)       = *((uint8_t*)(&Data));
 393  0057 7b07          	ld	a,(OFST+7,sp)
 394  0059 1e05          	ldw	x,(OFST+5,sp)
 395  005b f7            	ld	(x),a
 396                     ; 224   *(((PointerAttr uint8_t*)(MemoryAddressCast)Address) + 1) = *((uint8_t*)(&Data)+1); 
 397  005c 7b08          	ld	a,(OFST+8,sp)
 398  005e 1e05          	ldw	x,(OFST+5,sp)
 399  0060 e701          	ld	(1,x),a
 400                     ; 226   *(((PointerAttr uint8_t*)(MemoryAddressCast)Address) + 2) = *((uint8_t*)(&Data)+2); 
 401  0062 7b09          	ld	a,(OFST+9,sp)
 402  0064 1e05          	ldw	x,(OFST+5,sp)
 403  0066 e702          	ld	(2,x),a
 404                     ; 228   *(((PointerAttr uint8_t*)(MemoryAddressCast)Address) + 3) = *((uint8_t*)(&Data)+3); 
 405  0068 7b0a          	ld	a,(OFST+10,sp)
 406  006a 1e05          	ldw	x,(OFST+5,sp)
 407  006c e703          	ld	(3,x),a
 408                     ; 229 }
 409  006e 81            	ret
 411                     ; 237 void FLASH_ProgramOptionByte(uint16_t Address, uint8_t Data)
 411                     ; 238 {
 412                     .text:	section	.text,new
 413  0000               _FLASH_ProgramOptionByte:
 414  0000 89            	pushw	x
 415       00000000      OFST:	set	0
 417                     ; 240   assert_param(IS_OPTION_BYTE_ADDRESS_OK(Address));
 418  0001 a34800        	cpw	x,#18432
 419  0004 2508          	jrult	L611
 420  0006 a34880        	cpw	x,#18560
 421  0009 2403          	jruge	L611
 422  000b 4f            	clr	a
 423  000c 2010          	jra	L021
 424  000e               L611:
 425  000e ae00f0        	ldw	x,#240
 426  0011 89            	pushw	x
 427  0012 ae0000        	ldw	x,#0
 428  0015 89            	pushw	x
 429  0016 ae0010        	ldw	x,#L3
 430  0019 cd0000        	call	_assert_failed
 432  001c 5b04          	addw	sp,#4
 433  001e               L021:
 434                     ; 243   FLASH->CR2 |= FLASH_CR2_OPT;
 435  001e 721e505b      	bset	20571,#7
 436                     ; 244   FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NOPT);
 437  0022 721f505c      	bres	20572,#7
 438                     ; 247   if(Address == 0x4800)
 439  0026 1e01          	ldw	x,(OFST+1,sp)
 440  0028 a34800        	cpw	x,#18432
 441  002b 2607          	jrne	L51
 442                     ; 250     *((NEAR uint8_t*)Address) = Data;
 443  002d 7b05          	ld	a,(OFST+5,sp)
 444  002f 1e01          	ldw	x,(OFST+1,sp)
 445  0031 f7            	ld	(x),a
 447  0032 200c          	jra	L71
 448  0034               L51:
 449                     ; 255     *((NEAR uint8_t*)Address) = Data;
 450  0034 7b05          	ld	a,(OFST+5,sp)
 451  0036 1e01          	ldw	x,(OFST+1,sp)
 452  0038 f7            	ld	(x),a
 453                     ; 256     *((NEAR uint8_t*)((uint16_t)(Address + 1))) = (uint8_t)(~Data);
 454  0039 7b05          	ld	a,(OFST+5,sp)
 455  003b 43            	cpl	a
 456  003c 1e01          	ldw	x,(OFST+1,sp)
 457  003e e701          	ld	(1,x),a
 458  0040               L71:
 459                     ; 258   FLASH_WaitForLastOperation(FLASH_MEMTYPE_PROG);
 460  0040 ae00fd        	ldw	x,#253
 461  0043 cd0000        	call	_FLASH_WaitForLastOperation
 463                     ; 261   FLASH->CR2 &= (uint8_t)(~FLASH_CR2_OPT);
 464  0046 721f505b      	bres	20571,#7
 465                     ; 262   FLASH->NCR2 |= FLASH_NCR2_NOPT;
 466  004a 721e505c      	bset	20572,#7
 467                     ; 263 }
 468  004e 85            	popw	x
 469  004f 81            	ret
 471                     ; 270 void FLASH_EraseOptionByte(uint16_t Address)
 471                     ; 271 {
 472                     .text:	section	.text,new
 473  0000               _FLASH_EraseOptionByte:
 474  0000 89            	pushw	x
 475       00000000      OFST:	set	0
 477                     ; 273   assert_param(IS_OPTION_BYTE_ADDRESS_OK(Address));
 478  0001 a34800        	cpw	x,#18432
 479  0004 2508          	jrult	L421
 480  0006 a34880        	cpw	x,#18560
 481  0009 2403          	jruge	L421
 482  000b 4f            	clr	a
 483  000c 2010          	jra	L621
 484  000e               L421:
 485  000e ae0111        	ldw	x,#273
 486  0011 89            	pushw	x
 487  0012 ae0000        	ldw	x,#0
 488  0015 89            	pushw	x
 489  0016 ae0010        	ldw	x,#L3
 490  0019 cd0000        	call	_assert_failed
 492  001c 5b04          	addw	sp,#4
 493  001e               L621:
 494                     ; 276   FLASH->CR2 |= FLASH_CR2_OPT;
 495  001e 721e505b      	bset	20571,#7
 496                     ; 277   FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NOPT);
 497  0022 721f505c      	bres	20572,#7
 498                     ; 280   if(Address == 0x4800)
 499  0026 1e01          	ldw	x,(OFST+1,sp)
 500  0028 a34800        	cpw	x,#18432
 501  002b 2605          	jrne	L12
 502                     ; 283     *((NEAR uint8_t*)Address) = FLASH_CLEAR_BYTE;
 503  002d 1e01          	ldw	x,(OFST+1,sp)
 504  002f 7f            	clr	(x)
 506  0030 2009          	jra	L32
 507  0032               L12:
 508                     ; 288     *((NEAR uint8_t*)Address) = FLASH_CLEAR_BYTE;
 509  0032 1e01          	ldw	x,(OFST+1,sp)
 510  0034 7f            	clr	(x)
 511                     ; 289     *((NEAR uint8_t*)((uint16_t)(Address + (uint16_t)1 ))) = FLASH_SET_BYTE;
 512  0035 1e01          	ldw	x,(OFST+1,sp)
 513  0037 a6ff          	ld	a,#255
 514  0039 e701          	ld	(1,x),a
 515  003b               L32:
 516                     ; 291   FLASH_WaitForLastOperation(FLASH_MEMTYPE_PROG);
 517  003b ae00fd        	ldw	x,#253
 518  003e cd0000        	call	_FLASH_WaitForLastOperation
 520                     ; 294   FLASH->CR2 &= (uint8_t)(~FLASH_CR2_OPT);
 521  0041 721f505b      	bres	20571,#7
 522                     ; 295   FLASH->NCR2 |= FLASH_NCR2_NOPT;
 523  0045 721e505c      	bset	20572,#7
 524                     ; 296 }
 525  0049 85            	popw	x
 526  004a 81            	ret
 528                     ; 303 uint16_t FLASH_ReadOptionByte(uint16_t Address)
 528                     ; 304 {
 529                     .text:	section	.text,new
 530  0000               _FLASH_ReadOptionByte:
 531  0000 89            	pushw	x
 532  0001 5204          	subw	sp,#4
 533       00000004      OFST:	set	4
 535                     ; 305   uint8_t value_optbyte, value_optbyte_complement = 0;
 536                     ; 306   uint16_t res_value = 0;
 537                     ; 309   assert_param(IS_OPTION_BYTE_ADDRESS_OK(Address));
 538  0003 a34800        	cpw	x,#18432
 539  0006 2508          	jrult	L231
 540  0008 a34880        	cpw	x,#18560
 541  000b 2403          	jruge	L231
 542  000d 4f            	clr	a
 543  000e 2010          	jra	L431
 544  0010               L231:
 545  0010 ae0135        	ldw	x,#309
 546  0013 89            	pushw	x
 547  0014 ae0000        	ldw	x,#0
 548  0017 89            	pushw	x
 549  0018 ae0010        	ldw	x,#L3
 550  001b cd0000        	call	_assert_failed
 552  001e 5b04          	addw	sp,#4
 553  0020               L431:
 554                     ; 311   value_optbyte = *((NEAR uint8_t*)Address); /* Read option byte */
 555  0020 1e05          	ldw	x,(OFST+1,sp)
 556  0022 f6            	ld	a,(x)
 557  0023 6b02          	ld	(OFST-2,sp),a
 558                     ; 312   value_optbyte_complement = *(((NEAR uint8_t*)Address) + 1); /* Read option byte complement */
 559  0025 1e05          	ldw	x,(OFST+1,sp)
 560  0027 e601          	ld	a,(1,x)
 561  0029 6b01          	ld	(OFST-3,sp),a
 562                     ; 315   if(Address == 0x4800)	 
 563  002b 1e05          	ldw	x,(OFST+1,sp)
 564  002d a34800        	cpw	x,#18432
 565  0030 2608          	jrne	L52
 566                     ; 317     res_value =	 value_optbyte;
 567  0032 7b02          	ld	a,(OFST-2,sp)
 568  0034 5f            	clrw	x
 569  0035 97            	ld	xl,a
 570  0036 1f03          	ldw	(OFST-1,sp),x
 572  0038 2023          	jra	L72
 573  003a               L52:
 574                     ; 321     if(value_optbyte == (uint8_t)(~value_optbyte_complement))
 575  003a 7b01          	ld	a,(OFST-3,sp)
 576  003c 43            	cpl	a
 577  003d 1102          	cp	a,(OFST-2,sp)
 578  003f 2617          	jrne	L13
 579                     ; 323       res_value = (uint16_t)((uint16_t)value_optbyte << 8);
 580  0041 7b02          	ld	a,(OFST-2,sp)
 581  0043 5f            	clrw	x
 582  0044 97            	ld	xl,a
 583  0045 4f            	clr	a
 584  0046 02            	rlwa	x,a
 585  0047 1f03          	ldw	(OFST-1,sp),x
 586                     ; 324       res_value = res_value | (uint16_t)value_optbyte_complement;
 587  0049 7b01          	ld	a,(OFST-3,sp)
 588  004b 5f            	clrw	x
 589  004c 97            	ld	xl,a
 590  004d 01            	rrwa	x,a
 591  004e 1a04          	or	a,(OFST+0,sp)
 592  0050 01            	rrwa	x,a
 593  0051 1a03          	or	a,(OFST-1,sp)
 594  0053 01            	rrwa	x,a
 595  0054 1f03          	ldw	(OFST-1,sp),x
 597  0056 2005          	jra	L72
 598  0058               L13:
 599                     ; 328       res_value = FLASH_OPTIONBYTE_ERROR;
 600  0058 ae5555        	ldw	x,#21845
 601  005b 1f03          	ldw	(OFST-1,sp),x
 602  005d               L72:
 603                     ; 331   return(res_value);
 604  005d 1e03          	ldw	x,(OFST-1,sp)
 606  005f 5b06          	addw	sp,#6
 607  0061 81            	ret
 609                     ; 340 void FLASH_SetLowPowerMode(FLASH_LPMode_TypeDef FLASH_LPMode)
 609                     ; 341 {
 610                     .text:	section	.text,new
 611  0000               _FLASH_SetLowPowerMode:
 612  0000 89            	pushw	x
 613       00000000      OFST:	set	0
 615                     ; 343   assert_param(IS_FLASH_LOW_POWER_MODE_OK(FLASH_LPMode));
 616  0001 a30004        	cpw	x,#4
 617  0004 270f          	jreq	L241
 618  0006 a30008        	cpw	x,#8
 619  0009 270a          	jreq	L241
 620  000b a30000        	cpw	x,#0
 621  000e 2705          	jreq	L241
 622  0010 a3000c        	cpw	x,#12
 623  0013 2603          	jrne	L041
 624  0015               L241:
 625  0015 4f            	clr	a
 626  0016 2010          	jra	L441
 627  0018               L041:
 628  0018 ae0157        	ldw	x,#343
 629  001b 89            	pushw	x
 630  001c ae0000        	ldw	x,#0
 631  001f 89            	pushw	x
 632  0020 ae0010        	ldw	x,#L3
 633  0023 cd0000        	call	_assert_failed
 635  0026 5b04          	addw	sp,#4
 636  0028               L441:
 637                     ; 346   FLASH->CR1 &= (uint8_t)(~(FLASH_CR1_HALT | FLASH_CR1_AHALT)); 
 638  0028 c6505a        	ld	a,20570
 639  002b a4f3          	and	a,#243
 640  002d c7505a        	ld	20570,a
 641                     ; 349   FLASH->CR1 |= (uint8_t)FLASH_LPMode; 
 642  0030 c6505a        	ld	a,20570
 643  0033 1a02          	or	a,(OFST+2,sp)
 644  0035 c7505a        	ld	20570,a
 645                     ; 350 }
 646  0038 85            	popw	x
 647  0039 81            	ret
 649                     ; 358 void FLASH_SetProgrammingTime(FLASH_ProgramTime_TypeDef FLASH_ProgTime)
 649                     ; 359 {
 650                     .text:	section	.text,new
 651  0000               _FLASH_SetProgrammingTime:
 652  0000 89            	pushw	x
 653       00000000      OFST:	set	0
 655                     ; 361   assert_param(IS_FLASH_PROGRAM_TIME_OK(FLASH_ProgTime));
 656  0001 a30000        	cpw	x,#0
 657  0004 2705          	jreq	L251
 658  0006 a30001        	cpw	x,#1
 659  0009 2603          	jrne	L051
 660  000b               L251:
 661  000b 4f            	clr	a
 662  000c 2010          	jra	L451
 663  000e               L051:
 664  000e ae0169        	ldw	x,#361
 665  0011 89            	pushw	x
 666  0012 ae0000        	ldw	x,#0
 667  0015 89            	pushw	x
 668  0016 ae0010        	ldw	x,#L3
 669  0019 cd0000        	call	_assert_failed
 671  001c 5b04          	addw	sp,#4
 672  001e               L451:
 673                     ; 363   FLASH->CR1 &= (uint8_t)(~FLASH_CR1_FIX);
 674  001e 7211505a      	bres	20570,#0
 675                     ; 364   FLASH->CR1 |= (uint8_t)FLASH_ProgTime;
 676  0022 c6505a        	ld	a,20570
 677  0025 1a02          	or	a,(OFST+2,sp)
 678  0027 c7505a        	ld	20570,a
 679                     ; 365 }
 680  002a 85            	popw	x
 681  002b 81            	ret
 683                     ; 372 FLASH_LPMode_TypeDef FLASH_GetLowPowerMode(void)
 683                     ; 373 {
 684                     .text:	section	.text,new
 685  0000               _FLASH_GetLowPowerMode:
 687                     ; 374   return((FLASH_LPMode_TypeDef)(FLASH->CR1 & (uint8_t)(FLASH_CR1_HALT | FLASH_CR1_AHALT)));
 688  0000 c6505a        	ld	a,20570
 689  0003 5f            	clrw	x
 690  0004 a40c          	and	a,#12
 691  0006 5f            	clrw	x
 692  0007 02            	rlwa	x,a
 694  0008 81            	ret
 696                     ; 382 FLASH_ProgramTime_TypeDef FLASH_GetProgrammingTime(void)
 696                     ; 383 {
 697                     .text:	section	.text,new
 698  0000               _FLASH_GetProgrammingTime:
 700                     ; 384   return((FLASH_ProgramTime_TypeDef)(FLASH->CR1 & FLASH_CR1_FIX));
 701  0000 c6505a        	ld	a,20570
 702  0003 5f            	clrw	x
 703  0004 a401          	and	a,#1
 704  0006 5f            	clrw	x
 705  0007 02            	rlwa	x,a
 707  0008 81            	ret
 709                     ; 392 uint32_t FLASH_GetBootSize(void)
 709                     ; 393 {
 710                     .text:	section	.text,new
 711  0000               _FLASH_GetBootSize:
 712  0000 5204          	subw	sp,#4
 713       00000004      OFST:	set	4
 715                     ; 394   uint32_t temp = 0;
 716                     ; 397   temp = (uint32_t)((uint32_t)FLASH->FPR * (uint32_t)512);
 717  0002 c6505d        	ld	a,20573
 718  0005 5f            	clrw	x
 719  0006 97            	ld	xl,a
 720  0007 90ae0200      	ldw	y,#512
 721  000b cd0000        	call	c_umul
 723  000e 96            	ldw	x,sp
 724  000f 1c0001        	addw	x,#OFST-3
 725  0012 cd0000        	call	c_rtol
 727                     ; 400   if(FLASH->FPR == 0xFF)
 728  0015 c6505d        	ld	a,20573
 729  0018 a1ff          	cp	a,#255
 730  001a 2611          	jrne	L53
 731                     ; 402     temp += 512;
 732  001c ae0200        	ldw	x,#512
 733  001f bf02          	ldw	c_lreg+2,x
 734  0021 ae0000        	ldw	x,#0
 735  0024 bf00          	ldw	c_lreg,x
 736  0026 96            	ldw	x,sp
 737  0027 1c0001        	addw	x,#OFST-3
 738  002a cd0000        	call	c_lgadd
 740  002d               L53:
 741                     ; 406   return(temp);
 742  002d 96            	ldw	x,sp
 743  002e 1c0001        	addw	x,#OFST-3
 744  0031 cd0000        	call	c_ltor
 747  0034 5b04          	addw	sp,#4
 748  0036 81            	ret
 750                     ; 417 FlagStatus FLASH_GetFlagStatus(FLASH_Flag_TypeDef FLASH_FLAG)
 750                     ; 418 {
 751                     .text:	section	.text,new
 752  0000               _FLASH_GetFlagStatus:
 753  0000 89            	pushw	x
 754  0001 89            	pushw	x
 755       00000002      OFST:	set	2
 757                     ; 419   FlagStatus status = RESET;
 758                     ; 421   assert_param(IS_FLASH_FLAGS_OK(FLASH_FLAG));
 759  0002 a30008        	cpw	x,#8
 760  0005 270f          	jreq	L071
 761  0007 a30004        	cpw	x,#4
 762  000a 270a          	jreq	L071
 763  000c a30002        	cpw	x,#2
 764  000f 2705          	jreq	L071
 765  0011 a30001        	cpw	x,#1
 766  0014 2603          	jrne	L661
 767  0016               L071:
 768  0016 4f            	clr	a
 769  0017 2010          	jra	L271
 770  0019               L661:
 771  0019 ae01a5        	ldw	x,#421
 772  001c 89            	pushw	x
 773  001d ae0000        	ldw	x,#0
 774  0020 89            	pushw	x
 775  0021 ae0010        	ldw	x,#L3
 776  0024 cd0000        	call	_assert_failed
 778  0027 5b04          	addw	sp,#4
 779  0029               L271:
 780                     ; 424   if((FLASH->IAPSR & (uint8_t)FLASH_FLAG) != (uint8_t)RESET)
 781  0029 c6505f        	ld	a,20575
 782  002c 1504          	bcp	a,(OFST+2,sp)
 783  002e 2707          	jreq	L73
 784                     ; 426     status = SET; /* FLASH_FLAG is set */
 785  0030 ae0001        	ldw	x,#1
 786  0033 1f01          	ldw	(OFST-1,sp),x
 788  0035 2003          	jra	L14
 789  0037               L73:
 790                     ; 430     status = RESET; /* FLASH_FLAG is reset*/
 791  0037 5f            	clrw	x
 792  0038 1f01          	ldw	(OFST-1,sp),x
 793  003a               L14:
 794                     ; 434   return status;
 795  003a 1e01          	ldw	x,(OFST-1,sp)
 797  003c 5b04          	addw	sp,#4
 798  003e 81            	ret
 800                     ; 549 IN_RAM(FLASH_Status_TypeDef FLASH_WaitForLastOperation(FLASH_MemType_TypeDef FLASH_MemType)) 
 800                     ; 550 {
 801                     .text:	section	.text,new
 802  0000               _FLASH_WaitForLastOperation:
 803  0000 5203          	subw	sp,#3
 804       00000003      OFST:	set	3
 806                     ; 551   uint8_t flagstatus = 0x00;
 807  0002 0f03          	clr	(OFST+0,sp)
 808                     ; 552   uint16_t timeout = OPERATION_TIMEOUT;
 809  0004 aeffff        	ldw	x,#65535
 810  0007 1f01          	ldw	(OFST-2,sp),x
 812  0009 200e          	jra	L74
 813  000b               L34:
 814                     ; 578     flagstatus = (uint8_t)(FLASH->IAPSR & (FLASH_IAPSR_EOP | FLASH_IAPSR_WR_PG_DIS));
 815  000b c6505f        	ld	a,20575
 816  000e a405          	and	a,#5
 817  0010 6b03          	ld	(OFST+0,sp),a
 818                     ; 579     timeout--;
 819  0012 1e01          	ldw	x,(OFST-2,sp)
 820  0014 1d0001        	subw	x,#1
 821  0017 1f01          	ldw	(OFST-2,sp),x
 822  0019               L74:
 823                     ; 576   while((flagstatus == 0x00) && (timeout != 0x00))
 824  0019 0d03          	tnz	(OFST+0,sp)
 825  001b 2604          	jrne	L35
 827  001d 1e01          	ldw	x,(OFST-2,sp)
 828  001f 26ea          	jrne	L34
 829  0021               L35:
 830                     ; 583   if(timeout == 0x00 )
 831  0021 1e01          	ldw	x,(OFST-2,sp)
 832  0023 2604          	jrne	L55
 833                     ; 585     flagstatus = FLASH_STATUS_TIMEOUT;
 834  0025 a602          	ld	a,#2
 835  0027 6b03          	ld	(OFST+0,sp),a
 836  0029               L55:
 837                     ; 588   return((FLASH_Status_TypeDef)flagstatus);
 838  0029 7b03          	ld	a,(OFST+0,sp)
 839  002b 5f            	clrw	x
 840  002c 97            	ld	xl,a
 842  002d 5b03          	addw	sp,#3
 843  002f 81            	ret
 845                     ; 598 IN_RAM(void FLASH_EraseBlock(uint16_t BlockNum, FLASH_MemType_TypeDef FLASH_MemType))
 845                     ; 599 {
 846                     .text:	section	.text,new
 847  0000               _FLASH_EraseBlock:
 848  0000 89            	pushw	x
 849  0001 5206          	subw	sp,#6
 850       00000006      OFST:	set	6
 852                     ; 600   uint32_t startaddress = 0;
 853                     ; 610   assert_param(IS_MEMORY_TYPE_OK(FLASH_MemType));
 854  0003 1e0b          	ldw	x,(OFST+5,sp)
 855  0005 a300fd        	cpw	x,#253
 856  0008 2707          	jreq	L202
 857  000a 1e0b          	ldw	x,(OFST+5,sp)
 858  000c a300f7        	cpw	x,#247
 859  000f 2603          	jrne	L002
 860  0011               L202:
 861  0011 4f            	clr	a
 862  0012 2010          	jra	L402
 863  0014               L002:
 864  0014 ae0262        	ldw	x,#610
 865  0017 89            	pushw	x
 866  0018 ae0000        	ldw	x,#0
 867  001b 89            	pushw	x
 868  001c ae0010        	ldw	x,#L3
 869  001f cd0000        	call	_assert_failed
 871  0022 5b04          	addw	sp,#4
 872  0024               L402:
 873                     ; 611   if(FLASH_MemType == FLASH_MEMTYPE_PROG)
 874  0024 1e0b          	ldw	x,(OFST+5,sp)
 875  0026 a300fd        	cpw	x,#253
 876  0029 2626          	jrne	L75
 877                     ; 613     assert_param(IS_FLASH_PROG_BLOCK_NUMBER_OK(BlockNum));
 878  002b 1e07          	ldw	x,(OFST+1,sp)
 879  002d a30080        	cpw	x,#128
 880  0030 2403          	jruge	L602
 881  0032 4f            	clr	a
 882  0033 2010          	jra	L012
 883  0035               L602:
 884  0035 ae0265        	ldw	x,#613
 885  0038 89            	pushw	x
 886  0039 ae0000        	ldw	x,#0
 887  003c 89            	pushw	x
 888  003d ae0010        	ldw	x,#L3
 889  0040 cd0000        	call	_assert_failed
 891  0043 5b04          	addw	sp,#4
 892  0045               L012:
 893                     ; 614     startaddress = FLASH_PROG_START_PHYSICAL_ADDRESS;
 894  0045 ae8000        	ldw	x,#32768
 895  0048 1f05          	ldw	(OFST-1,sp),x
 896  004a ae0000        	ldw	x,#0
 897  004d 1f03          	ldw	(OFST-3,sp),x
 899  004f 2024          	jra	L16
 900  0051               L75:
 901                     ; 618     assert_param(IS_FLASH_DATA_BLOCK_NUMBER_OK(BlockNum));
 902  0051 1e07          	ldw	x,(OFST+1,sp)
 903  0053 a3000a        	cpw	x,#10
 904  0056 2403          	jruge	L212
 905  0058 4f            	clr	a
 906  0059 2010          	jra	L412
 907  005b               L212:
 908  005b ae026a        	ldw	x,#618
 909  005e 89            	pushw	x
 910  005f ae0000        	ldw	x,#0
 911  0062 89            	pushw	x
 912  0063 ae0010        	ldw	x,#L3
 913  0066 cd0000        	call	_assert_failed
 915  0069 5b04          	addw	sp,#4
 916  006b               L412:
 917                     ; 619     startaddress = FLASH_DATA_START_PHYSICAL_ADDRESS;
 918  006b ae4000        	ldw	x,#16384
 919  006e 1f05          	ldw	(OFST-1,sp),x
 920  0070 ae0000        	ldw	x,#0
 921  0073 1f03          	ldw	(OFST-3,sp),x
 922  0075               L16:
 923                     ; 627     pwFlash = (PointerAttr uint32_t *)(MemoryAddressCast)(startaddress + ((uint32_t)BlockNum * FLASH_BLOCK_SIZE));
 924  0075 1e07          	ldw	x,(OFST+1,sp)
 925  0077 a640          	ld	a,#64
 926  0079 cd0000        	call	c_cmulx
 928  007c 96            	ldw	x,sp
 929  007d 1c0003        	addw	x,#OFST-3
 930  0080 cd0000        	call	c_ladd
 932  0083 be02          	ldw	x,c_lreg+2
 933  0085 1f01          	ldw	(OFST-5,sp),x
 934                     ; 631   FLASH->CR2 |= FLASH_CR2_ERASE;
 935  0087 721a505b      	bset	20571,#5
 936                     ; 632   FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NERASE);
 937  008b 721b505c      	bres	20572,#5
 938                     ; 636     *pwFlash = (uint32_t)0;
 939  008f 1e01          	ldw	x,(OFST-5,sp)
 940  0091 a600          	ld	a,#0
 941  0093 e703          	ld	(3,x),a
 942  0095 a600          	ld	a,#0
 943  0097 e702          	ld	(2,x),a
 944  0099 a600          	ld	a,#0
 945  009b e701          	ld	(1,x),a
 946  009d a600          	ld	a,#0
 947  009f f7            	ld	(x),a
 948                     ; 644 }
 949  00a0 5b08          	addw	sp,#8
 950  00a2 81            	ret
 952                     ; 655 IN_RAM(void FLASH_ProgramBlock(uint16_t BlockNum, FLASH_MemType_TypeDef FLASH_MemType, 
 952                     ; 656                         FLASH_ProgramMode_TypeDef FLASH_ProgMode, uint8_t *Buffer))
 952                     ; 657 {
 953                     .text:	section	.text,new
 954  0000               _FLASH_ProgramBlock:
 955  0000 89            	pushw	x
 956  0001 5206          	subw	sp,#6
 957       00000006      OFST:	set	6
 959                     ; 658   uint16_t Count = 0;
 960                     ; 659   uint32_t startaddress = 0;
 961                     ; 662   assert_param(IS_MEMORY_TYPE_OK(FLASH_MemType));
 962  0003 1e0b          	ldw	x,(OFST+5,sp)
 963  0005 a300fd        	cpw	x,#253
 964  0008 2707          	jreq	L222
 965  000a 1e0b          	ldw	x,(OFST+5,sp)
 966  000c a300f7        	cpw	x,#247
 967  000f 2603          	jrne	L022
 968  0011               L222:
 969  0011 4f            	clr	a
 970  0012 2010          	jra	L422
 971  0014               L022:
 972  0014 ae0296        	ldw	x,#662
 973  0017 89            	pushw	x
 974  0018 ae0000        	ldw	x,#0
 975  001b 89            	pushw	x
 976  001c ae0010        	ldw	x,#L3
 977  001f cd0000        	call	_assert_failed
 979  0022 5b04          	addw	sp,#4
 980  0024               L422:
 981                     ; 663   assert_param(IS_FLASH_PROGRAM_MODE_OK(FLASH_ProgMode));
 982  0024 1e0d          	ldw	x,(OFST+7,sp)
 983  0026 2707          	jreq	L032
 984  0028 1e0d          	ldw	x,(OFST+7,sp)
 985  002a a30010        	cpw	x,#16
 986  002d 2603          	jrne	L622
 987  002f               L032:
 988  002f 4f            	clr	a
 989  0030 2010          	jra	L232
 990  0032               L622:
 991  0032 ae0297        	ldw	x,#663
 992  0035 89            	pushw	x
 993  0036 ae0000        	ldw	x,#0
 994  0039 89            	pushw	x
 995  003a ae0010        	ldw	x,#L3
 996  003d cd0000        	call	_assert_failed
 998  0040 5b04          	addw	sp,#4
 999  0042               L232:
1000                     ; 664   if(FLASH_MemType == FLASH_MEMTYPE_PROG)
1001  0042 1e0b          	ldw	x,(OFST+5,sp)
1002  0044 a300fd        	cpw	x,#253
1003  0047 2626          	jrne	L36
1004                     ; 666     assert_param(IS_FLASH_PROG_BLOCK_NUMBER_OK(BlockNum));
1005  0049 1e07          	ldw	x,(OFST+1,sp)
1006  004b a30080        	cpw	x,#128
1007  004e 2403          	jruge	L432
1008  0050 4f            	clr	a
1009  0051 2010          	jra	L632
1010  0053               L432:
1011  0053 ae029a        	ldw	x,#666
1012  0056 89            	pushw	x
1013  0057 ae0000        	ldw	x,#0
1014  005a 89            	pushw	x
1015  005b ae0010        	ldw	x,#L3
1016  005e cd0000        	call	_assert_failed
1018  0061 5b04          	addw	sp,#4
1019  0063               L632:
1020                     ; 667     startaddress = FLASH_PROG_START_PHYSICAL_ADDRESS;
1021  0063 ae8000        	ldw	x,#32768
1022  0066 1f03          	ldw	(OFST-3,sp),x
1023  0068 ae0000        	ldw	x,#0
1024  006b 1f01          	ldw	(OFST-5,sp),x
1026  006d 2024          	jra	L56
1027  006f               L36:
1028                     ; 671     assert_param(IS_FLASH_DATA_BLOCK_NUMBER_OK(BlockNum));
1029  006f 1e07          	ldw	x,(OFST+1,sp)
1030  0071 a3000a        	cpw	x,#10
1031  0074 2403          	jruge	L042
1032  0076 4f            	clr	a
1033  0077 2010          	jra	L242
1034  0079               L042:
1035  0079 ae029f        	ldw	x,#671
1036  007c 89            	pushw	x
1037  007d ae0000        	ldw	x,#0
1038  0080 89            	pushw	x
1039  0081 ae0010        	ldw	x,#L3
1040  0084 cd0000        	call	_assert_failed
1042  0087 5b04          	addw	sp,#4
1043  0089               L242:
1044                     ; 672     startaddress = FLASH_DATA_START_PHYSICAL_ADDRESS;
1045  0089 ae4000        	ldw	x,#16384
1046  008c 1f03          	ldw	(OFST-3,sp),x
1047  008e ae0000        	ldw	x,#0
1048  0091 1f01          	ldw	(OFST-5,sp),x
1049  0093               L56:
1050                     ; 676   startaddress = startaddress + ((uint32_t)BlockNum * FLASH_BLOCK_SIZE);
1051  0093 1e07          	ldw	x,(OFST+1,sp)
1052  0095 a640          	ld	a,#64
1053  0097 cd0000        	call	c_cmulx
1055  009a 96            	ldw	x,sp
1056  009b 1c0001        	addw	x,#OFST-5
1057  009e cd0000        	call	c_lgadd
1059                     ; 679   if(FLASH_ProgMode == FLASH_PROGRAMMODE_STANDARD)
1060  00a1 1e0d          	ldw	x,(OFST+7,sp)
1061  00a3 260a          	jrne	L76
1062                     ; 682     FLASH->CR2 |= FLASH_CR2_PRG;
1063  00a5 7210505b      	bset	20571,#0
1064                     ; 683     FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NPRG);
1065  00a9 7211505c      	bres	20572,#0
1067  00ad 2008          	jra	L17
1068  00af               L76:
1069                     ; 688     FLASH->CR2 |= FLASH_CR2_FPRG;
1070  00af 7218505b      	bset	20571,#4
1071                     ; 689     FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NFPRG);
1072  00b3 7219505c      	bres	20572,#4
1073  00b7               L17:
1074                     ; 693   for(Count = 0; Count < FLASH_BLOCK_SIZE; Count++)
1075  00b7 5f            	clrw	x
1076  00b8 1f05          	ldw	(OFST-1,sp),x
1077  00ba               L37:
1078                     ; 695     *((PointerAttr uint8_t*) (MemoryAddressCast)startaddress + Count) = ((uint8_t)(Buffer[Count]));
1079  00ba 1e0f          	ldw	x,(OFST+9,sp)
1080  00bc 72fb05        	addw	x,(OFST-1,sp)
1081  00bf f6            	ld	a,(x)
1082  00c0 1e03          	ldw	x,(OFST-3,sp)
1083  00c2 72fb05        	addw	x,(OFST-1,sp)
1084  00c5 f7            	ld	(x),a
1085                     ; 693   for(Count = 0; Count < FLASH_BLOCK_SIZE; Count++)
1086  00c6 1e05          	ldw	x,(OFST-1,sp)
1087  00c8 1c0001        	addw	x,#1
1088  00cb 1f05          	ldw	(OFST-1,sp),x
1090  00cd 1e05          	ldw	x,(OFST-1,sp)
1091  00cf a30040        	cpw	x,#64
1092  00d2 25e6          	jrult	L37
1093                     ; 697 }
1094  00d4 5b08          	addw	sp,#8
1095  00d6 81            	ret
1097                     	xdef	_FLASH_WaitForLastOperation
1098                     	xdef	_FLASH_ProgramBlock
1099                     	xdef	_FLASH_EraseBlock
1100                     	xdef	_FLASH_GetFlagStatus
1101                     	xdef	_FLASH_GetBootSize
1102                     	xdef	_FLASH_GetProgrammingTime
1103                     	xdef	_FLASH_GetLowPowerMode
1104                     	xdef	_FLASH_SetProgrammingTime
1105                     	xdef	_FLASH_SetLowPowerMode
1106                     	xdef	_FLASH_EraseOptionByte
1107                     	xdef	_FLASH_ProgramOptionByte
1108                     	xdef	_FLASH_ReadOptionByte
1109                     	xdef	_FLASH_ProgramWord
1110                     	xdef	_FLASH_ReadByte
1111                     	xdef	_FLASH_ProgramByte
1112                     	xdef	_FLASH_EraseByte
1113                     	xdef	_FLASH_ITConfig
1114                     	xdef	_FLASH_DeInit
1115                     	xdef	_FLASH_Lock
1116                     	xdef	_FLASH_Unlock
1117                     	xref	_assert_failed
1118                     	switch	.const
1119  0010               L3:
1120  0010 2e2e5c2e2e5c  	dc.b	"..\..\..\libraries"
1121  0022 5c73746d3873  	dc.b	"\stm8s_stdperiph_d"
1122  0034 72697665725c  	dc.b	"river\src\stm8s_fl"
1123  0046 6173682e6300  	dc.b	"ash.c",0
1124                     	xref.b	c_lreg
1125                     	xref.b	c_x
1126                     	xref.b	c_y
1127                     	xref	c_ladd
1128                     	xref	c_cmulx
1129                     	xref	c_lgadd
1130                     	xref	c_rtol
1131                     	xref	c_umul
1132                     	xref	c_lcmp
1133                     	xref	c_ltor
1134                     	end

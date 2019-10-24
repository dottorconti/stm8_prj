   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.10.2 - 02 Nov 2011
   3                     ; Generator (Limited) V4.3.7 - 29 Nov 2011
  17                     ; 52 void ADC1_DeInit(void)
  17                     ; 53 {
  18                     	scross	off
  19                     .text:	section	.text,new
  20  0000               _ADC1_DeInit:
  22                     ; 54   ADC1->CSR  = ADC1_CSR_RESET_VALUE;
  23  0000 725f5400      	clr	21504
  24                     ; 55   ADC1->CR1  = ADC1_CR1_RESET_VALUE;
  25  0004 725f5401      	clr	21505
  26                     ; 56   ADC1->CR2  = ADC1_CR2_RESET_VALUE;
  27  0008 725f5402      	clr	21506
  28                     ; 57   ADC1->CR3  = ADC1_CR3_RESET_VALUE;
  29  000c 725f5403      	clr	21507
  30                     ; 58   ADC1->TDRH = ADC1_TDRH_RESET_VALUE;
  31  0010 725f5406      	clr	21510
  32                     ; 59   ADC1->TDRL = ADC1_TDRL_RESET_VALUE;
  33  0014 725f5407      	clr	21511
  34                     ; 60   ADC1->HTRH = ADC1_HTRH_RESET_VALUE;
  35  0018 35ff5408      	mov	21512,#255
  36                     ; 61   ADC1->HTRL = ADC1_HTRL_RESET_VALUE;
  37  001c 35035409      	mov	21513,#3
  38                     ; 62   ADC1->LTRH = ADC1_LTRH_RESET_VALUE;
  39  0020 725f540a      	clr	21514
  40                     ; 63   ADC1->LTRL = ADC1_LTRL_RESET_VALUE;
  41  0024 725f540b      	clr	21515
  42                     ; 64   ADC1->AWCRH = ADC1_AWCRH_RESET_VALUE;
  43  0028 725f540e      	clr	21518
  44                     ; 65   ADC1->AWCRL = ADC1_AWCRL_RESET_VALUE;
  45  002c 725f540f      	clr	21519
  46                     ; 66 }
  47  0030 81            	ret
  49                     ; 88 void ADC1_Init(ADC1_ConvMode_TypeDef ADC1_ConversionMode, ADC1_Channel_TypeDef ADC1_Channel, ADC1_PresSel_TypeDef ADC1_PrescalerSelection, ADC1_ExtTrig_TypeDef ADC1_ExtTrigger, FunctionalState ADC1_ExtTriggerState, ADC1_Align_TypeDef ADC1_Align, ADC1_SchmittTrigg_TypeDef ADC1_SchmittTriggerChannel, FunctionalState ADC1_SchmittTriggerState)
  49                     ; 89 {
  50                     .text:	section	.text,new
  51  0000               _ADC1_Init:
  52  0000 89            	pushw	x
  53       00000000      OFST:	set	0
  55                     ; 91   assert_param(IS_ADC1_CONVERSIONMODE_OK(ADC1_ConversionMode));
  56  0001 a30000        	cpw	x,#0
  57  0004 2705          	jreq	L01
  58  0006 a30001        	cpw	x,#1
  59  0009 2603          	jrne	L6
  60  000b               L01:
  61  000b 4f            	clr	a
  62  000c 2010          	jra	L21
  63  000e               L6:
  64  000e ae005b        	ldw	x,#91
  65  0011 89            	pushw	x
  66  0012 ae0000        	ldw	x,#0
  67  0015 89            	pushw	x
  68  0016 ae0000        	ldw	x,#L3
  69  0019 cd0000        	call	_assert_failed
  71  001c 5b04          	addw	sp,#4
  72  001e               L21:
  73                     ; 92   assert_param(IS_ADC1_CHANNEL_OK(ADC1_Channel));
  74  001e 1e05          	ldw	x,(OFST+5,sp)
  75  0020 2746          	jreq	L61
  76  0022 1e05          	ldw	x,(OFST+5,sp)
  77  0024 a30001        	cpw	x,#1
  78  0027 273f          	jreq	L61
  79  0029 1e05          	ldw	x,(OFST+5,sp)
  80  002b a30002        	cpw	x,#2
  81  002e 2738          	jreq	L61
  82  0030 1e05          	ldw	x,(OFST+5,sp)
  83  0032 a30003        	cpw	x,#3
  84  0035 2731          	jreq	L61
  85  0037 1e05          	ldw	x,(OFST+5,sp)
  86  0039 a30004        	cpw	x,#4
  87  003c 272a          	jreq	L61
  88  003e 1e05          	ldw	x,(OFST+5,sp)
  89  0040 a30005        	cpw	x,#5
  90  0043 2723          	jreq	L61
  91  0045 1e05          	ldw	x,(OFST+5,sp)
  92  0047 a30006        	cpw	x,#6
  93  004a 271c          	jreq	L61
  94  004c 1e05          	ldw	x,(OFST+5,sp)
  95  004e a30007        	cpw	x,#7
  96  0051 2715          	jreq	L61
  97  0053 1e05          	ldw	x,(OFST+5,sp)
  98  0055 a30008        	cpw	x,#8
  99  0058 270e          	jreq	L61
 100  005a 1e05          	ldw	x,(OFST+5,sp)
 101  005c a3000c        	cpw	x,#12
 102  005f 2707          	jreq	L61
 103  0061 1e05          	ldw	x,(OFST+5,sp)
 104  0063 a30009        	cpw	x,#9
 105  0066 2603          	jrne	L41
 106  0068               L61:
 107  0068 4f            	clr	a
 108  0069 2010          	jra	L02
 109  006b               L41:
 110  006b ae005c        	ldw	x,#92
 111  006e 89            	pushw	x
 112  006f ae0000        	ldw	x,#0
 113  0072 89            	pushw	x
 114  0073 ae0000        	ldw	x,#L3
 115  0076 cd0000        	call	_assert_failed
 117  0079 5b04          	addw	sp,#4
 118  007b               L02:
 119                     ; 93   assert_param(IS_ADC1_PRESSEL_OK(ADC1_PrescalerSelection));
 120  007b 1e07          	ldw	x,(OFST+7,sp)
 121  007d 2731          	jreq	L42
 122  007f 1e07          	ldw	x,(OFST+7,sp)
 123  0081 a30010        	cpw	x,#16
 124  0084 272a          	jreq	L42
 125  0086 1e07          	ldw	x,(OFST+7,sp)
 126  0088 a30020        	cpw	x,#32
 127  008b 2723          	jreq	L42
 128  008d 1e07          	ldw	x,(OFST+7,sp)
 129  008f a30030        	cpw	x,#48
 130  0092 271c          	jreq	L42
 131  0094 1e07          	ldw	x,(OFST+7,sp)
 132  0096 a30040        	cpw	x,#64
 133  0099 2715          	jreq	L42
 134  009b 1e07          	ldw	x,(OFST+7,sp)
 135  009d a30050        	cpw	x,#80
 136  00a0 270e          	jreq	L42
 137  00a2 1e07          	ldw	x,(OFST+7,sp)
 138  00a4 a30060        	cpw	x,#96
 139  00a7 2707          	jreq	L42
 140  00a9 1e07          	ldw	x,(OFST+7,sp)
 141  00ab a30070        	cpw	x,#112
 142  00ae 2603          	jrne	L22
 143  00b0               L42:
 144  00b0 4f            	clr	a
 145  00b1 2010          	jra	L62
 146  00b3               L22:
 147  00b3 ae005d        	ldw	x,#93
 148  00b6 89            	pushw	x
 149  00b7 ae0000        	ldw	x,#0
 150  00ba 89            	pushw	x
 151  00bb ae0000        	ldw	x,#L3
 152  00be cd0000        	call	_assert_failed
 154  00c1 5b04          	addw	sp,#4
 155  00c3               L62:
 156                     ; 94   assert_param(IS_ADC1_EXTTRIG_OK(ADC1_ExtTrigger));
 157  00c3 1e09          	ldw	x,(OFST+9,sp)
 158  00c5 2707          	jreq	L23
 159  00c7 1e09          	ldw	x,(OFST+9,sp)
 160  00c9 a30010        	cpw	x,#16
 161  00cc 2603          	jrne	L03
 162  00ce               L23:
 163  00ce 4f            	clr	a
 164  00cf 2010          	jra	L43
 165  00d1               L03:
 166  00d1 ae005e        	ldw	x,#94
 167  00d4 89            	pushw	x
 168  00d5 ae0000        	ldw	x,#0
 169  00d8 89            	pushw	x
 170  00d9 ae0000        	ldw	x,#L3
 171  00dc cd0000        	call	_assert_failed
 173  00df 5b04          	addw	sp,#4
 174  00e1               L43:
 175                     ; 95   assert_param(IS_FUNCTIONALSTATE_OK(((ADC1_ExtTriggerState))));
 176  00e1 1e0b          	ldw	x,(OFST+11,sp)
 177  00e3 2707          	jreq	L04
 178  00e5 1e0b          	ldw	x,(OFST+11,sp)
 179  00e7 a30001        	cpw	x,#1
 180  00ea 2603          	jrne	L63
 181  00ec               L04:
 182  00ec 4f            	clr	a
 183  00ed 2010          	jra	L24
 184  00ef               L63:
 185  00ef ae005f        	ldw	x,#95
 186  00f2 89            	pushw	x
 187  00f3 ae0000        	ldw	x,#0
 188  00f6 89            	pushw	x
 189  00f7 ae0000        	ldw	x,#L3
 190  00fa cd0000        	call	_assert_failed
 192  00fd 5b04          	addw	sp,#4
 193  00ff               L24:
 194                     ; 96   assert_param(IS_ADC1_ALIGN_OK(ADC1_Align));
 195  00ff 1e0d          	ldw	x,(OFST+13,sp)
 196  0101 2707          	jreq	L64
 197  0103 1e0d          	ldw	x,(OFST+13,sp)
 198  0105 a30008        	cpw	x,#8
 199  0108 2603          	jrne	L44
 200  010a               L64:
 201  010a 4f            	clr	a
 202  010b 2010          	jra	L05
 203  010d               L44:
 204  010d ae0060        	ldw	x,#96
 205  0110 89            	pushw	x
 206  0111 ae0000        	ldw	x,#0
 207  0114 89            	pushw	x
 208  0115 ae0000        	ldw	x,#L3
 209  0118 cd0000        	call	_assert_failed
 211  011b 5b04          	addw	sp,#4
 212  011d               L05:
 213                     ; 97   assert_param(IS_ADC1_SCHMITTTRIG_OK(ADC1_SchmittTriggerChannel));
 214  011d 1e0f          	ldw	x,(OFST+15,sp)
 215  011f 274d          	jreq	L45
 216  0121 1e0f          	ldw	x,(OFST+15,sp)
 217  0123 a30001        	cpw	x,#1
 218  0126 2746          	jreq	L45
 219  0128 1e0f          	ldw	x,(OFST+15,sp)
 220  012a a30002        	cpw	x,#2
 221  012d 273f          	jreq	L45
 222  012f 1e0f          	ldw	x,(OFST+15,sp)
 223  0131 a30003        	cpw	x,#3
 224  0134 2738          	jreq	L45
 225  0136 1e0f          	ldw	x,(OFST+15,sp)
 226  0138 a30004        	cpw	x,#4
 227  013b 2731          	jreq	L45
 228  013d 1e0f          	ldw	x,(OFST+15,sp)
 229  013f a30005        	cpw	x,#5
 230  0142 272a          	jreq	L45
 231  0144 1e0f          	ldw	x,(OFST+15,sp)
 232  0146 a30006        	cpw	x,#6
 233  0149 2723          	jreq	L45
 234  014b 1e0f          	ldw	x,(OFST+15,sp)
 235  014d a30007        	cpw	x,#7
 236  0150 271c          	jreq	L45
 237  0152 1e0f          	ldw	x,(OFST+15,sp)
 238  0154 a30008        	cpw	x,#8
 239  0157 2715          	jreq	L45
 240  0159 1e0f          	ldw	x,(OFST+15,sp)
 241  015b a3000c        	cpw	x,#12
 242  015e 270e          	jreq	L45
 243  0160 1e0f          	ldw	x,(OFST+15,sp)
 244  0162 a300ff        	cpw	x,#255
 245  0165 2707          	jreq	L45
 246  0167 1e0f          	ldw	x,(OFST+15,sp)
 247  0169 a30009        	cpw	x,#9
 248  016c 2603          	jrne	L25
 249  016e               L45:
 250  016e 4f            	clr	a
 251  016f 2010          	jra	L65
 252  0171               L25:
 253  0171 ae0061        	ldw	x,#97
 254  0174 89            	pushw	x
 255  0175 ae0000        	ldw	x,#0
 256  0178 89            	pushw	x
 257  0179 ae0000        	ldw	x,#L3
 258  017c cd0000        	call	_assert_failed
 260  017f 5b04          	addw	sp,#4
 261  0181               L65:
 262                     ; 98   assert_param(IS_FUNCTIONALSTATE_OK(ADC1_SchmittTriggerState));
 263  0181 1e11          	ldw	x,(OFST+17,sp)
 264  0183 2707          	jreq	L26
 265  0185 1e11          	ldw	x,(OFST+17,sp)
 266  0187 a30001        	cpw	x,#1
 267  018a 2603          	jrne	L06
 268  018c               L26:
 269  018c 4f            	clr	a
 270  018d 2010          	jra	L46
 271  018f               L06:
 272  018f ae0062        	ldw	x,#98
 273  0192 89            	pushw	x
 274  0193 ae0000        	ldw	x,#0
 275  0196 89            	pushw	x
 276  0197 ae0000        	ldw	x,#L3
 277  019a cd0000        	call	_assert_failed
 279  019d 5b04          	addw	sp,#4
 280  019f               L46:
 281                     ; 103   ADC1_ConversionConfig(ADC1_ConversionMode, ADC1_Channel, ADC1_Align);
 282  019f 1e0d          	ldw	x,(OFST+13,sp)
 283  01a1 89            	pushw	x
 284  01a2 1e07          	ldw	x,(OFST+7,sp)
 285  01a4 89            	pushw	x
 286  01a5 1e05          	ldw	x,(OFST+5,sp)
 287  01a7 cd0000        	call	_ADC1_ConversionConfig
 289  01aa 5b04          	addw	sp,#4
 290                     ; 105   ADC1_PrescalerConfig(ADC1_PrescalerSelection);
 291  01ac 1e07          	ldw	x,(OFST+7,sp)
 292  01ae cd0000        	call	_ADC1_PrescalerConfig
 294                     ; 110   ADC1_ExternalTriggerConfig(ADC1_ExtTrigger, ADC1_ExtTriggerState);
 295  01b1 1e0b          	ldw	x,(OFST+11,sp)
 296  01b3 89            	pushw	x
 297  01b4 1e0b          	ldw	x,(OFST+11,sp)
 298  01b6 cd0000        	call	_ADC1_ExternalTriggerConfig
 300  01b9 85            	popw	x
 301                     ; 115   ADC1_SchmittTriggerConfig(ADC1_SchmittTriggerChannel, ADC1_SchmittTriggerState);
 302  01ba 1e11          	ldw	x,(OFST+17,sp)
 303  01bc 89            	pushw	x
 304  01bd 1e11          	ldw	x,(OFST+17,sp)
 305  01bf cd0000        	call	_ADC1_SchmittTriggerConfig
 307  01c2 85            	popw	x
 308                     ; 118   ADC1->CR1 |= ADC1_CR1_ADON;
 309  01c3 72105401      	bset	21505,#0
 310                     ; 119 }
 311  01c7 85            	popw	x
 312  01c8 81            	ret
 314                     ; 126 void ADC1_Cmd(FunctionalState NewState)
 314                     ; 127 {
 315                     .text:	section	.text,new
 316  0000               _ADC1_Cmd:
 317  0000 89            	pushw	x
 318       00000000      OFST:	set	0
 320                     ; 129   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 321  0001 a30000        	cpw	x,#0
 322  0004 2705          	jreq	L27
 323  0006 a30001        	cpw	x,#1
 324  0009 2603          	jrne	L07
 325  000b               L27:
 326  000b 4f            	clr	a
 327  000c 2010          	jra	L47
 328  000e               L07:
 329  000e ae0081        	ldw	x,#129
 330  0011 89            	pushw	x
 331  0012 ae0000        	ldw	x,#0
 332  0015 89            	pushw	x
 333  0016 ae0000        	ldw	x,#L3
 334  0019 cd0000        	call	_assert_failed
 336  001c 5b04          	addw	sp,#4
 337  001e               L47:
 338                     ; 131   if (NewState != DISABLE)
 339  001e 1e01          	ldw	x,(OFST+1,sp)
 340  0020 2706          	jreq	L5
 341                     ; 133     ADC1->CR1 |= ADC1_CR1_ADON;
 342  0022 72105401      	bset	21505,#0
 344  0026 2004          	jra	L7
 345  0028               L5:
 346                     ; 137     ADC1->CR1 &= (uint8_t)(~ADC1_CR1_ADON);
 347  0028 72115401      	bres	21505,#0
 348  002c               L7:
 349                     ; 139 }
 350  002c 85            	popw	x
 351  002d 81            	ret
 353                     ; 146 void ADC1_ScanModeCmd(FunctionalState NewState)
 353                     ; 147 {
 354                     .text:	section	.text,new
 355  0000               _ADC1_ScanModeCmd:
 356  0000 89            	pushw	x
 357       00000000      OFST:	set	0
 359                     ; 149   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 360  0001 a30000        	cpw	x,#0
 361  0004 2705          	jreq	L201
 362  0006 a30001        	cpw	x,#1
 363  0009 2603          	jrne	L001
 364  000b               L201:
 365  000b 4f            	clr	a
 366  000c 2010          	jra	L401
 367  000e               L001:
 368  000e ae0095        	ldw	x,#149
 369  0011 89            	pushw	x
 370  0012 ae0000        	ldw	x,#0
 371  0015 89            	pushw	x
 372  0016 ae0000        	ldw	x,#L3
 373  0019 cd0000        	call	_assert_failed
 375  001c 5b04          	addw	sp,#4
 376  001e               L401:
 377                     ; 151   if (NewState != DISABLE)
 378  001e 1e01          	ldw	x,(OFST+1,sp)
 379  0020 2706          	jreq	L11
 380                     ; 153     ADC1->CR2 |= ADC1_CR2_SCAN;
 381  0022 72125402      	bset	21506,#1
 383  0026 2004          	jra	L31
 384  0028               L11:
 385                     ; 157     ADC1->CR2 &= (uint8_t)(~ADC1_CR2_SCAN);
 386  0028 72135402      	bres	21506,#1
 387  002c               L31:
 388                     ; 159 }
 389  002c 85            	popw	x
 390  002d 81            	ret
 392                     ; 166 void ADC1_DataBufferCmd(FunctionalState NewState)
 392                     ; 167 {
 393                     .text:	section	.text,new
 394  0000               _ADC1_DataBufferCmd:
 395  0000 89            	pushw	x
 396       00000000      OFST:	set	0
 398                     ; 169   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 399  0001 a30000        	cpw	x,#0
 400  0004 2705          	jreq	L211
 401  0006 a30001        	cpw	x,#1
 402  0009 2603          	jrne	L011
 403  000b               L211:
 404  000b 4f            	clr	a
 405  000c 2010          	jra	L411
 406  000e               L011:
 407  000e ae00a9        	ldw	x,#169
 408  0011 89            	pushw	x
 409  0012 ae0000        	ldw	x,#0
 410  0015 89            	pushw	x
 411  0016 ae0000        	ldw	x,#L3
 412  0019 cd0000        	call	_assert_failed
 414  001c 5b04          	addw	sp,#4
 415  001e               L411:
 416                     ; 171   if (NewState != DISABLE)
 417  001e 1e01          	ldw	x,(OFST+1,sp)
 418  0020 2706          	jreq	L51
 419                     ; 173     ADC1->CR3 |= ADC1_CR3_DBUF;
 420  0022 721e5403      	bset	21507,#7
 422  0026 2004          	jra	L71
 423  0028               L51:
 424                     ; 177     ADC1->CR3 &= (uint8_t)(~ADC1_CR3_DBUF);
 425  0028 721f5403      	bres	21507,#7
 426  002c               L71:
 427                     ; 179 }
 428  002c 85            	popw	x
 429  002d 81            	ret
 431                     ; 190 void ADC1_ITConfig(ADC1_IT_TypeDef ADC1_IT, FunctionalState NewState)
 431                     ; 191 {
 432                     .text:	section	.text,new
 433  0000               _ADC1_ITConfig:
 434  0000 89            	pushw	x
 435       00000000      OFST:	set	0
 437                     ; 193   assert_param(IS_ADC1_IT_OK(ADC1_IT));
 438  0001 a30020        	cpw	x,#32
 439  0004 2705          	jreq	L221
 440  0006 a30010        	cpw	x,#16
 441  0009 2603          	jrne	L021
 442  000b               L221:
 443  000b 4f            	clr	a
 444  000c 2010          	jra	L421
 445  000e               L021:
 446  000e ae00c1        	ldw	x,#193
 447  0011 89            	pushw	x
 448  0012 ae0000        	ldw	x,#0
 449  0015 89            	pushw	x
 450  0016 ae0000        	ldw	x,#L3
 451  0019 cd0000        	call	_assert_failed
 453  001c 5b04          	addw	sp,#4
 454  001e               L421:
 455                     ; 194   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 456  001e 1e05          	ldw	x,(OFST+5,sp)
 457  0020 2707          	jreq	L031
 458  0022 1e05          	ldw	x,(OFST+5,sp)
 459  0024 a30001        	cpw	x,#1
 460  0027 2603          	jrne	L621
 461  0029               L031:
 462  0029 4f            	clr	a
 463  002a 2010          	jra	L231
 464  002c               L621:
 465  002c ae00c2        	ldw	x,#194
 466  002f 89            	pushw	x
 467  0030 ae0000        	ldw	x,#0
 468  0033 89            	pushw	x
 469  0034 ae0000        	ldw	x,#L3
 470  0037 cd0000        	call	_assert_failed
 472  003a 5b04          	addw	sp,#4
 473  003c               L231:
 474                     ; 196   if (NewState != DISABLE)
 475  003c 1e05          	ldw	x,(OFST+5,sp)
 476  003e 270a          	jreq	L12
 477                     ; 199     ADC1->CSR |= (uint8_t)ADC1_IT;
 478  0040 c65400        	ld	a,21504
 479  0043 1a02          	or	a,(OFST+2,sp)
 480  0045 c75400        	ld	21504,a
 482  0048 2009          	jra	L32
 483  004a               L12:
 484                     ; 204     ADC1->CSR &= (uint8_t)((uint16_t)~(uint16_t)ADC1_IT);
 485  004a 7b02          	ld	a,(OFST+2,sp)
 486  004c 43            	cpl	a
 487  004d c45400        	and	a,21504
 488  0050 c75400        	ld	21504,a
 489  0053               L32:
 490                     ; 206 }
 491  0053 85            	popw	x
 492  0054 81            	ret
 494                     ; 214 void ADC1_PrescalerConfig(ADC1_PresSel_TypeDef ADC1_Prescaler)
 494                     ; 215 {
 495                     .text:	section	.text,new
 496  0000               _ADC1_PrescalerConfig:
 497  0000 89            	pushw	x
 498       00000000      OFST:	set	0
 500                     ; 217   assert_param(IS_ADC1_PRESSEL_OK(ADC1_Prescaler));
 501  0001 a30000        	cpw	x,#0
 502  0004 2723          	jreq	L041
 503  0006 a30010        	cpw	x,#16
 504  0009 271e          	jreq	L041
 505  000b a30020        	cpw	x,#32
 506  000e 2719          	jreq	L041
 507  0010 a30030        	cpw	x,#48
 508  0013 2714          	jreq	L041
 509  0015 a30040        	cpw	x,#64
 510  0018 270f          	jreq	L041
 511  001a a30050        	cpw	x,#80
 512  001d 270a          	jreq	L041
 513  001f a30060        	cpw	x,#96
 514  0022 2705          	jreq	L041
 515  0024 a30070        	cpw	x,#112
 516  0027 2603          	jrne	L631
 517  0029               L041:
 518  0029 4f            	clr	a
 519  002a 2010          	jra	L241
 520  002c               L631:
 521  002c ae00d9        	ldw	x,#217
 522  002f 89            	pushw	x
 523  0030 ae0000        	ldw	x,#0
 524  0033 89            	pushw	x
 525  0034 ae0000        	ldw	x,#L3
 526  0037 cd0000        	call	_assert_failed
 528  003a 5b04          	addw	sp,#4
 529  003c               L241:
 530                     ; 220   ADC1->CR1 &= (uint8_t)(~ADC1_CR1_SPSEL);
 531  003c c65401        	ld	a,21505
 532  003f a48f          	and	a,#143
 533  0041 c75401        	ld	21505,a
 534                     ; 222   ADC1->CR1 |= (uint8_t)(ADC1_Prescaler);
 535  0044 c65401        	ld	a,21505
 536  0047 1a02          	or	a,(OFST+2,sp)
 537  0049 c75401        	ld	21505,a
 538                     ; 223 }
 539  004c 85            	popw	x
 540  004d 81            	ret
 542                     ; 233 void ADC1_SchmittTriggerConfig(ADC1_SchmittTrigg_TypeDef ADC1_SchmittTriggerChannel, FunctionalState NewState)
 542                     ; 234 {
 543                     .text:	section	.text,new
 544  0000               _ADC1_SchmittTriggerConfig:
 545  0000 89            	pushw	x
 546       00000000      OFST:	set	0
 548                     ; 236   assert_param(IS_ADC1_SCHMITTTRIG_OK(ADC1_SchmittTriggerChannel));
 549  0001 a30000        	cpw	x,#0
 550  0004 2737          	jreq	L051
 551  0006 a30001        	cpw	x,#1
 552  0009 2732          	jreq	L051
 553  000b a30002        	cpw	x,#2
 554  000e 272d          	jreq	L051
 555  0010 a30003        	cpw	x,#3
 556  0013 2728          	jreq	L051
 557  0015 a30004        	cpw	x,#4
 558  0018 2723          	jreq	L051
 559  001a a30005        	cpw	x,#5
 560  001d 271e          	jreq	L051
 561  001f a30006        	cpw	x,#6
 562  0022 2719          	jreq	L051
 563  0024 a30007        	cpw	x,#7
 564  0027 2714          	jreq	L051
 565  0029 a30008        	cpw	x,#8
 566  002c 270f          	jreq	L051
 567  002e a3000c        	cpw	x,#12
 568  0031 270a          	jreq	L051
 569  0033 a300ff        	cpw	x,#255
 570  0036 2705          	jreq	L051
 571  0038 a30009        	cpw	x,#9
 572  003b 2603          	jrne	L641
 573  003d               L051:
 574  003d 4f            	clr	a
 575  003e 2010          	jra	L251
 576  0040               L641:
 577  0040 ae00ec        	ldw	x,#236
 578  0043 89            	pushw	x
 579  0044 ae0000        	ldw	x,#0
 580  0047 89            	pushw	x
 581  0048 ae0000        	ldw	x,#L3
 582  004b cd0000        	call	_assert_failed
 584  004e 5b04          	addw	sp,#4
 585  0050               L251:
 586                     ; 237   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 587  0050 1e05          	ldw	x,(OFST+5,sp)
 588  0052 2707          	jreq	L651
 589  0054 1e05          	ldw	x,(OFST+5,sp)
 590  0056 a30001        	cpw	x,#1
 591  0059 2603          	jrne	L451
 592  005b               L651:
 593  005b 4f            	clr	a
 594  005c 2010          	jra	L061
 595  005e               L451:
 596  005e ae00ed        	ldw	x,#237
 597  0061 89            	pushw	x
 598  0062 ae0000        	ldw	x,#0
 599  0065 89            	pushw	x
 600  0066 ae0000        	ldw	x,#L3
 601  0069 cd0000        	call	_assert_failed
 603  006c 5b04          	addw	sp,#4
 604  006e               L061:
 605                     ; 239   if (ADC1_SchmittTriggerChannel == ADC1_SCHMITTTRIG_ALL)
 606  006e 1e01          	ldw	x,(OFST+1,sp)
 607  0070 a300ff        	cpw	x,#255
 608  0073 2620          	jrne	L52
 609                     ; 241     if (NewState != DISABLE)
 610  0075 1e05          	ldw	x,(OFST+5,sp)
 611  0077 270a          	jreq	L72
 612                     ; 243       ADC1->TDRL &= (uint8_t)0x0;
 613  0079 725f5407      	clr	21511
 614                     ; 244       ADC1->TDRH &= (uint8_t)0x0;
 615  007d 725f5406      	clr	21510
 617  0081 207a          	jra	L33
 618  0083               L72:
 619                     ; 248       ADC1->TDRL |= (uint8_t)0xFF;
 620  0083 c65407        	ld	a,21511
 621  0086 aaff          	or	a,#255
 622  0088 c75407        	ld	21511,a
 623                     ; 249       ADC1->TDRH |= (uint8_t)0xFF;
 624  008b c65406        	ld	a,21510
 625  008e aaff          	or	a,#255
 626  0090 c75406        	ld	21510,a
 627  0093 2068          	jra	L33
 628  0095               L52:
 629                     ; 252   else if (ADC1_SchmittTriggerChannel < ADC1_SCHMITTTRIG_CHANNEL8)
 630  0095 9c            	rvf
 631  0096 1e01          	ldw	x,(OFST+1,sp)
 632  0098 a30008        	cpw	x,#8
 633  009b 2e2f          	jrsge	L53
 634                     ; 254     if (NewState != DISABLE)
 635  009d 1e05          	ldw	x,(OFST+5,sp)
 636  009f 2716          	jreq	L73
 637                     ; 256       ADC1->TDRL &= (uint8_t)(~(uint8_t)((uint8_t)0x01 << (uint8_t)ADC1_SchmittTriggerChannel));
 638  00a1 7b02          	ld	a,(OFST+2,sp)
 639  00a3 5f            	clrw	x
 640  00a4 97            	ld	xl,a
 641  00a5 a601          	ld	a,#1
 642  00a7 5d            	tnzw	x
 643  00a8 2704          	jreq	L261
 644  00aa               L461:
 645  00aa 48            	sll	a
 646  00ab 5a            	decw	x
 647  00ac 26fc          	jrne	L461
 648  00ae               L261:
 649  00ae 43            	cpl	a
 650  00af c45407        	and	a,21511
 651  00b2 c75407        	ld	21511,a
 653  00b5 2046          	jra	L33
 654  00b7               L73:
 655                     ; 260       ADC1->TDRL |= (uint8_t)((uint8_t)0x01 << (uint8_t)ADC1_SchmittTriggerChannel);
 656  00b7 7b02          	ld	a,(OFST+2,sp)
 657  00b9 5f            	clrw	x
 658  00ba 97            	ld	xl,a
 659  00bb a601          	ld	a,#1
 660  00bd 5d            	tnzw	x
 661  00be 2704          	jreq	L661
 662  00c0               L071:
 663  00c0 48            	sll	a
 664  00c1 5a            	decw	x
 665  00c2 26fc          	jrne	L071
 666  00c4               L661:
 667  00c4 ca5407        	or	a,21511
 668  00c7 c75407        	ld	21511,a
 669  00ca 2031          	jra	L33
 670  00cc               L53:
 671                     ; 265     if (NewState != DISABLE)
 672  00cc 1e05          	ldw	x,(OFST+5,sp)
 673  00ce 2718          	jreq	L54
 674                     ; 267       ADC1->TDRH &= (uint8_t)(~(uint8_t)((uint8_t)0x01 << ((uint8_t)ADC1_SchmittTriggerChannel - (uint8_t)8)));
 675  00d0 7b02          	ld	a,(OFST+2,sp)
 676  00d2 a008          	sub	a,#8
 677  00d4 5f            	clrw	x
 678  00d5 97            	ld	xl,a
 679  00d6 a601          	ld	a,#1
 680  00d8 5d            	tnzw	x
 681  00d9 2704          	jreq	L271
 682  00db               L471:
 683  00db 48            	sll	a
 684  00dc 5a            	decw	x
 685  00dd 26fc          	jrne	L471
 686  00df               L271:
 687  00df 43            	cpl	a
 688  00e0 c45406        	and	a,21510
 689  00e3 c75406        	ld	21510,a
 691  00e6 2015          	jra	L33
 692  00e8               L54:
 693                     ; 271       ADC1->TDRH |= (uint8_t)((uint8_t)0x01 << ((uint8_t)ADC1_SchmittTriggerChannel - (uint8_t)8));
 694  00e8 7b02          	ld	a,(OFST+2,sp)
 695  00ea a008          	sub	a,#8
 696  00ec 5f            	clrw	x
 697  00ed 97            	ld	xl,a
 698  00ee a601          	ld	a,#1
 699  00f0 5d            	tnzw	x
 700  00f1 2704          	jreq	L671
 701  00f3               L002:
 702  00f3 48            	sll	a
 703  00f4 5a            	decw	x
 704  00f5 26fc          	jrne	L002
 705  00f7               L671:
 706  00f7 ca5406        	or	a,21510
 707  00fa c75406        	ld	21510,a
 708  00fd               L33:
 709                     ; 274 }
 710  00fd 85            	popw	x
 711  00fe 81            	ret
 713                     ; 286 void ADC1_ConversionConfig(ADC1_ConvMode_TypeDef ADC1_ConversionMode, ADC1_Channel_TypeDef ADC1_Channel, ADC1_Align_TypeDef ADC1_Align)
 713                     ; 287 {
 714                     .text:	section	.text,new
 715  0000               _ADC1_ConversionConfig:
 716  0000 89            	pushw	x
 717       00000000      OFST:	set	0
 719                     ; 289   assert_param(IS_ADC1_CONVERSIONMODE_OK(ADC1_ConversionMode));
 720  0001 a30000        	cpw	x,#0
 721  0004 2705          	jreq	L602
 722  0006 a30001        	cpw	x,#1
 723  0009 2603          	jrne	L402
 724  000b               L602:
 725  000b 4f            	clr	a
 726  000c 2010          	jra	L012
 727  000e               L402:
 728  000e ae0121        	ldw	x,#289
 729  0011 89            	pushw	x
 730  0012 ae0000        	ldw	x,#0
 731  0015 89            	pushw	x
 732  0016 ae0000        	ldw	x,#L3
 733  0019 cd0000        	call	_assert_failed
 735  001c 5b04          	addw	sp,#4
 736  001e               L012:
 737                     ; 290   assert_param(IS_ADC1_CHANNEL_OK(ADC1_Channel));
 738  001e 1e05          	ldw	x,(OFST+5,sp)
 739  0020 2746          	jreq	L412
 740  0022 1e05          	ldw	x,(OFST+5,sp)
 741  0024 a30001        	cpw	x,#1
 742  0027 273f          	jreq	L412
 743  0029 1e05          	ldw	x,(OFST+5,sp)
 744  002b a30002        	cpw	x,#2
 745  002e 2738          	jreq	L412
 746  0030 1e05          	ldw	x,(OFST+5,sp)
 747  0032 a30003        	cpw	x,#3
 748  0035 2731          	jreq	L412
 749  0037 1e05          	ldw	x,(OFST+5,sp)
 750  0039 a30004        	cpw	x,#4
 751  003c 272a          	jreq	L412
 752  003e 1e05          	ldw	x,(OFST+5,sp)
 753  0040 a30005        	cpw	x,#5
 754  0043 2723          	jreq	L412
 755  0045 1e05          	ldw	x,(OFST+5,sp)
 756  0047 a30006        	cpw	x,#6
 757  004a 271c          	jreq	L412
 758  004c 1e05          	ldw	x,(OFST+5,sp)
 759  004e a30007        	cpw	x,#7
 760  0051 2715          	jreq	L412
 761  0053 1e05          	ldw	x,(OFST+5,sp)
 762  0055 a30008        	cpw	x,#8
 763  0058 270e          	jreq	L412
 764  005a 1e05          	ldw	x,(OFST+5,sp)
 765  005c a3000c        	cpw	x,#12
 766  005f 2707          	jreq	L412
 767  0061 1e05          	ldw	x,(OFST+5,sp)
 768  0063 a30009        	cpw	x,#9
 769  0066 2603          	jrne	L212
 770  0068               L412:
 771  0068 4f            	clr	a
 772  0069 2010          	jra	L612
 773  006b               L212:
 774  006b ae0122        	ldw	x,#290
 775  006e 89            	pushw	x
 776  006f ae0000        	ldw	x,#0
 777  0072 89            	pushw	x
 778  0073 ae0000        	ldw	x,#L3
 779  0076 cd0000        	call	_assert_failed
 781  0079 5b04          	addw	sp,#4
 782  007b               L612:
 783                     ; 291   assert_param(IS_ADC1_ALIGN_OK(ADC1_Align));
 784  007b 1e07          	ldw	x,(OFST+7,sp)
 785  007d 2707          	jreq	L222
 786  007f 1e07          	ldw	x,(OFST+7,sp)
 787  0081 a30008        	cpw	x,#8
 788  0084 2603          	jrne	L022
 789  0086               L222:
 790  0086 4f            	clr	a
 791  0087 2010          	jra	L422
 792  0089               L022:
 793  0089 ae0123        	ldw	x,#291
 794  008c 89            	pushw	x
 795  008d ae0000        	ldw	x,#0
 796  0090 89            	pushw	x
 797  0091 ae0000        	ldw	x,#L3
 798  0094 cd0000        	call	_assert_failed
 800  0097 5b04          	addw	sp,#4
 801  0099               L422:
 802                     ; 294   ADC1->CR2 &= (uint8_t)(~ADC1_CR2_ALIGN);
 803  0099 72175402      	bres	21506,#3
 804                     ; 296   ADC1->CR2 |= (uint8_t)(ADC1_Align);
 805  009d c65402        	ld	a,21506
 806  00a0 1a08          	or	a,(OFST+8,sp)
 807  00a2 c75402        	ld	21506,a
 808                     ; 298   if (ADC1_ConversionMode == ADC1_CONVERSIONMODE_CONTINUOUS)
 809  00a5 1e01          	ldw	x,(OFST+1,sp)
 810  00a7 a30001        	cpw	x,#1
 811  00aa 2606          	jrne	L15
 812                     ; 301     ADC1->CR1 |= ADC1_CR1_CONT;
 813  00ac 72125401      	bset	21505,#1
 815  00b0 2004          	jra	L35
 816  00b2               L15:
 817                     ; 306     ADC1->CR1 &= (uint8_t)(~ADC1_CR1_CONT);
 818  00b2 72135401      	bres	21505,#1
 819  00b6               L35:
 820                     ; 310   ADC1->CSR &= (uint8_t)(~ADC1_CSR_CH);
 821  00b6 c65400        	ld	a,21504
 822  00b9 a4f0          	and	a,#240
 823  00bb c75400        	ld	21504,a
 824                     ; 312   ADC1->CSR |= (uint8_t)(ADC1_Channel);
 825  00be c65400        	ld	a,21504
 826  00c1 1a06          	or	a,(OFST+6,sp)
 827  00c3 c75400        	ld	21504,a
 828                     ; 313 }
 829  00c6 85            	popw	x
 830  00c7 81            	ret
 832                     ; 325 void ADC1_ExternalTriggerConfig(ADC1_ExtTrig_TypeDef ADC1_ExtTrigger, FunctionalState NewState)
 832                     ; 326 {
 833                     .text:	section	.text,new
 834  0000               _ADC1_ExternalTriggerConfig:
 835  0000 89            	pushw	x
 836       00000000      OFST:	set	0
 838                     ; 328   assert_param(IS_ADC1_EXTTRIG_OK(ADC1_ExtTrigger));
 839  0001 a30000        	cpw	x,#0
 840  0004 2705          	jreq	L232
 841  0006 a30010        	cpw	x,#16
 842  0009 2603          	jrne	L032
 843  000b               L232:
 844  000b 4f            	clr	a
 845  000c 2010          	jra	L432
 846  000e               L032:
 847  000e ae0148        	ldw	x,#328
 848  0011 89            	pushw	x
 849  0012 ae0000        	ldw	x,#0
 850  0015 89            	pushw	x
 851  0016 ae0000        	ldw	x,#L3
 852  0019 cd0000        	call	_assert_failed
 854  001c 5b04          	addw	sp,#4
 855  001e               L432:
 856                     ; 329   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 857  001e 1e05          	ldw	x,(OFST+5,sp)
 858  0020 2707          	jreq	L042
 859  0022 1e05          	ldw	x,(OFST+5,sp)
 860  0024 a30001        	cpw	x,#1
 861  0027 2603          	jrne	L632
 862  0029               L042:
 863  0029 4f            	clr	a
 864  002a 2010          	jra	L242
 865  002c               L632:
 866  002c ae0149        	ldw	x,#329
 867  002f 89            	pushw	x
 868  0030 ae0000        	ldw	x,#0
 869  0033 89            	pushw	x
 870  0034 ae0000        	ldw	x,#L3
 871  0037 cd0000        	call	_assert_failed
 873  003a 5b04          	addw	sp,#4
 874  003c               L242:
 875                     ; 332   ADC1->CR2 &= (uint8_t)(~ADC1_CR2_EXTSEL);
 876  003c c65402        	ld	a,21506
 877  003f a4cf          	and	a,#207
 878  0041 c75402        	ld	21506,a
 879                     ; 334   if (NewState != DISABLE)
 880  0044 1e05          	ldw	x,(OFST+5,sp)
 881  0046 2706          	jreq	L55
 882                     ; 337     ADC1->CR2 |= (uint8_t)(ADC1_CR2_EXTTRIG);
 883  0048 721c5402      	bset	21506,#6
 885  004c 2004          	jra	L75
 886  004e               L55:
 887                     ; 342     ADC1->CR2 &= (uint8_t)(~ADC1_CR2_EXTTRIG);
 888  004e 721d5402      	bres	21506,#6
 889  0052               L75:
 890                     ; 346   ADC1->CR2 |= (uint8_t)(ADC1_ExtTrigger);
 891  0052 c65402        	ld	a,21506
 892  0055 1a02          	or	a,(OFST+2,sp)
 893  0057 c75402        	ld	21506,a
 894                     ; 347 }
 895  005a 85            	popw	x
 896  005b 81            	ret
 898                     ; 358 void ADC1_StartConversion(void)
 898                     ; 359 {
 899                     .text:	section	.text,new
 900  0000               _ADC1_StartConversion:
 902                     ; 360   ADC1->CR1 |= ADC1_CR1_ADON;
 903  0000 72105401      	bset	21505,#0
 904                     ; 361 }
 905  0004 81            	ret
 907                     ; 370 uint16_t ADC1_GetConversionValue(void)
 907                     ; 371 {
 908                     .text:	section	.text,new
 909  0000               _ADC1_GetConversionValue:
 910  0000 5205          	subw	sp,#5
 911       00000005      OFST:	set	5
 913                     ; 372   uint16_t temph = 0;
 914                     ; 373   uint8_t templ = 0;
 915                     ; 375   if ((ADC1->CR2 & ADC1_CR2_ALIGN) != 0) /* Right alignment */
 916  0002 c65402        	ld	a,21506
 917  0005 a508          	bcp	a,#8
 918  0007 2715          	jreq	L16
 919                     ; 378     templ = ADC1->DRL;
 920  0009 c65405        	ld	a,21509
 921  000c 6b03          	ld	(OFST-2,sp),a
 922                     ; 380     temph = ADC1->DRH;
 923  000e c65404        	ld	a,21508
 924  0011 5f            	clrw	x
 925  0012 97            	ld	xl,a
 926  0013 1f04          	ldw	(OFST-1,sp),x
 927                     ; 382     temph = (uint16_t)(templ | (uint16_t)(temph << (uint8_t)8));
 928  0015 1e04          	ldw	x,(OFST-1,sp)
 929  0017 7b03          	ld	a,(OFST-2,sp)
 930  0019 02            	rlwa	x,a
 931  001a 1f04          	ldw	(OFST-1,sp),x
 933  001c 2021          	jra	L36
 934  001e               L16:
 935                     ; 387     temph = ADC1->DRH;
 936  001e c65404        	ld	a,21508
 937  0021 5f            	clrw	x
 938  0022 97            	ld	xl,a
 939  0023 1f04          	ldw	(OFST-1,sp),x
 940                     ; 389     templ = ADC1->DRL;
 941  0025 c65405        	ld	a,21509
 942  0028 6b03          	ld	(OFST-2,sp),a
 943                     ; 391     temph = (uint16_t)((uint16_t)((uint16_t)templ << 6) | (uint16_t)((uint16_t)temph << 8));
 944  002a 1e04          	ldw	x,(OFST-1,sp)
 945  002c 4f            	clr	a
 946  002d 02            	rlwa	x,a
 947  002e 1f01          	ldw	(OFST-4,sp),x
 948  0030 7b03          	ld	a,(OFST-2,sp)
 949  0032 97            	ld	xl,a
 950  0033 a640          	ld	a,#64
 951  0035 42            	mul	x,a
 952  0036 01            	rrwa	x,a
 953  0037 1a02          	or	a,(OFST-3,sp)
 954  0039 01            	rrwa	x,a
 955  003a 1a01          	or	a,(OFST-4,sp)
 956  003c 01            	rrwa	x,a
 957  003d 1f04          	ldw	(OFST-1,sp),x
 958  003f               L36:
 959                     ; 394   return ((uint16_t)temph);
 960  003f 1e04          	ldw	x,(OFST-1,sp)
 962  0041 5b05          	addw	sp,#5
 963  0043 81            	ret
 965                     ; 405 void ADC1_AWDChannelConfig(ADC1_Channel_TypeDef Channel, FunctionalState NewState)
 965                     ; 406 {
 966                     .text:	section	.text,new
 967  0000               _ADC1_AWDChannelConfig:
 968  0000 89            	pushw	x
 969       00000000      OFST:	set	0
 971                     ; 408   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 972  0001 1e05          	ldw	x,(OFST+5,sp)
 973  0003 2707          	jreq	L452
 974  0005 1e05          	ldw	x,(OFST+5,sp)
 975  0007 a30001        	cpw	x,#1
 976  000a 2603          	jrne	L252
 977  000c               L452:
 978  000c 4f            	clr	a
 979  000d 2010          	jra	L652
 980  000f               L252:
 981  000f ae0198        	ldw	x,#408
 982  0012 89            	pushw	x
 983  0013 ae0000        	ldw	x,#0
 984  0016 89            	pushw	x
 985  0017 ae0000        	ldw	x,#L3
 986  001a cd0000        	call	_assert_failed
 988  001d 5b04          	addw	sp,#4
 989  001f               L652:
 990                     ; 409   assert_param(IS_ADC1_CHANNEL_OK(Channel));
 991  001f 1e01          	ldw	x,(OFST+1,sp)
 992  0021 2746          	jreq	L262
 993  0023 1e01          	ldw	x,(OFST+1,sp)
 994  0025 a30001        	cpw	x,#1
 995  0028 273f          	jreq	L262
 996  002a 1e01          	ldw	x,(OFST+1,sp)
 997  002c a30002        	cpw	x,#2
 998  002f 2738          	jreq	L262
 999  0031 1e01          	ldw	x,(OFST+1,sp)
1000  0033 a30003        	cpw	x,#3
1001  0036 2731          	jreq	L262
1002  0038 1e01          	ldw	x,(OFST+1,sp)
1003  003a a30004        	cpw	x,#4
1004  003d 272a          	jreq	L262
1005  003f 1e01          	ldw	x,(OFST+1,sp)
1006  0041 a30005        	cpw	x,#5
1007  0044 2723          	jreq	L262
1008  0046 1e01          	ldw	x,(OFST+1,sp)
1009  0048 a30006        	cpw	x,#6
1010  004b 271c          	jreq	L262
1011  004d 1e01          	ldw	x,(OFST+1,sp)
1012  004f a30007        	cpw	x,#7
1013  0052 2715          	jreq	L262
1014  0054 1e01          	ldw	x,(OFST+1,sp)
1015  0056 a30008        	cpw	x,#8
1016  0059 270e          	jreq	L262
1017  005b 1e01          	ldw	x,(OFST+1,sp)
1018  005d a3000c        	cpw	x,#12
1019  0060 2707          	jreq	L262
1020  0062 1e01          	ldw	x,(OFST+1,sp)
1021  0064 a30009        	cpw	x,#9
1022  0067 2603          	jrne	L062
1023  0069               L262:
1024  0069 4f            	clr	a
1025  006a 2010          	jra	L462
1026  006c               L062:
1027  006c ae0199        	ldw	x,#409
1028  006f 89            	pushw	x
1029  0070 ae0000        	ldw	x,#0
1030  0073 89            	pushw	x
1031  0074 ae0000        	ldw	x,#L3
1032  0077 cd0000        	call	_assert_failed
1034  007a 5b04          	addw	sp,#4
1035  007c               L462:
1036                     ; 411   if (Channel < (uint8_t)8)
1037  007c 9c            	rvf
1038  007d 1e01          	ldw	x,(OFST+1,sp)
1039  007f a30008        	cpw	x,#8
1040  0082 2e37          	jrsge	L56
1041                     ; 413     if (NewState != DISABLE)
1042  0084 1e05          	ldw	x,(OFST+5,sp)
1043  0086 2719          	jreq	L76
1044                     ; 415       ADC1->AWCRL |= (uint8_t)((uint8_t)1 << Channel);
1045  0088 7b02          	ld	a,(OFST+2,sp)
1046  008a 5f            	clrw	x
1047  008b 4d            	tnz	a
1048  008c 2a01          	jrpl	L662
1049  008e 53            	cplw	x
1050  008f               L662:
1051  008f 97            	ld	xl,a
1052  0090 a601          	ld	a,#1
1053  0092 5d            	tnzw	x
1054  0093 2704          	jreq	L072
1055  0095               L272:
1056  0095 48            	sll	a
1057  0096 5a            	decw	x
1058  0097 26fc          	jrne	L272
1059  0099               L072:
1060  0099 ca540f        	or	a,21519
1061  009c c7540f        	ld	21519,a
1063  009f 204b          	jra	L37
1064  00a1               L76:
1065                     ; 419       ADC1->AWCRL &= (uint8_t)~(uint8_t)((uint8_t)1 << Channel);
1066  00a1 7b02          	ld	a,(OFST+2,sp)
1067  00a3 5f            	clrw	x
1068  00a4 4d            	tnz	a
1069  00a5 2a01          	jrpl	L472
1070  00a7 53            	cplw	x
1071  00a8               L472:
1072  00a8 97            	ld	xl,a
1073  00a9 a601          	ld	a,#1
1074  00ab 5d            	tnzw	x
1075  00ac 2704          	jreq	L672
1076  00ae               L003:
1077  00ae 48            	sll	a
1078  00af 5a            	decw	x
1079  00b0 26fc          	jrne	L003
1080  00b2               L672:
1081  00b2 43            	cpl	a
1082  00b3 c4540f        	and	a,21519
1083  00b6 c7540f        	ld	21519,a
1084  00b9 2031          	jra	L37
1085  00bb               L56:
1086                     ; 424     if (NewState != DISABLE)
1087  00bb 1e05          	ldw	x,(OFST+5,sp)
1088  00bd 2717          	jreq	L57
1089                     ; 426       ADC1->AWCRH |= (uint8_t)((uint8_t)1 << (Channel - (uint8_t)8));
1090  00bf 7b02          	ld	a,(OFST+2,sp)
1091  00c1 a008          	sub	a,#8
1092  00c3 5f            	clrw	x
1093  00c4 97            	ld	xl,a
1094  00c5 a601          	ld	a,#1
1095  00c7 5d            	tnzw	x
1096  00c8 2704          	jreq	L203
1097  00ca               L403:
1098  00ca 48            	sll	a
1099  00cb 5a            	decw	x
1100  00cc 26fc          	jrne	L403
1101  00ce               L203:
1102  00ce ca540e        	or	a,21518
1103  00d1 c7540e        	ld	21518,a
1105  00d4 2016          	jra	L37
1106  00d6               L57:
1107                     ; 430       ADC1->AWCRH &= (uint8_t)~(uint8_t)((uint8_t)1 << (uint8_t)(Channel - (uint8_t)8));
1108  00d6 7b02          	ld	a,(OFST+2,sp)
1109  00d8 a008          	sub	a,#8
1110  00da 5f            	clrw	x
1111  00db 97            	ld	xl,a
1112  00dc a601          	ld	a,#1
1113  00de 5d            	tnzw	x
1114  00df 2704          	jreq	L603
1115  00e1               L013:
1116  00e1 48            	sll	a
1117  00e2 5a            	decw	x
1118  00e3 26fc          	jrne	L013
1119  00e5               L603:
1120  00e5 43            	cpl	a
1121  00e6 c4540e        	and	a,21518
1122  00e9 c7540e        	ld	21518,a
1123  00ec               L37:
1124                     ; 433 }
1125  00ec 85            	popw	x
1126  00ed 81            	ret
1128                     ; 441 void ADC1_SetHighThreshold(uint16_t Threshold)
1128                     ; 442 {
1129                     .text:	section	.text,new
1130  0000               _ADC1_SetHighThreshold:
1131  0000 89            	pushw	x
1132       00000000      OFST:	set	0
1134                     ; 443   ADC1->HTRH = (uint8_t)(Threshold >> (uint8_t)2);
1135  0001 54            	srlw	x
1136  0002 54            	srlw	x
1137  0003 9f            	ld	a,xl
1138  0004 c75408        	ld	21512,a
1139                     ; 444   ADC1->HTRL = (uint8_t)Threshold;
1140  0007 7b02          	ld	a,(OFST+2,sp)
1141  0009 c75409        	ld	21513,a
1142                     ; 445 }
1143  000c 85            	popw	x
1144  000d 81            	ret
1146                     ; 453 void ADC1_SetLowThreshold(uint16_t Threshold)
1146                     ; 454 {
1147                     .text:	section	.text,new
1148  0000               _ADC1_SetLowThreshold:
1150                     ; 455   ADC1->LTRL = (uint8_t)Threshold;
1151  0000 9f            	ld	a,xl
1152  0001 c7540b        	ld	21515,a
1153                     ; 456   ADC1->LTRH = (uint8_t)(Threshold >> (uint8_t)2);
1154  0004 54            	srlw	x
1155  0005 54            	srlw	x
1156  0006 9f            	ld	a,xl
1157  0007 c7540a        	ld	21514,a
1158                     ; 457 }
1159  000a 81            	ret
1161                     ; 466 uint16_t ADC1_GetBufferValue(uint8_t Buffer)
1161                     ; 467 {
1162                     .text:	section	.text,new
1163  0000               _ADC1_GetBufferValue:
1164  0000 88            	push	a
1165  0001 5205          	subw	sp,#5
1166       00000005      OFST:	set	5
1168                     ; 468   uint16_t temph = 0;
1169                     ; 469   uint8_t templ = 0;
1170                     ; 472   assert_param(IS_ADC1_BUFFER_OK(Buffer));
1171  0003 a10a          	cp	a,#10
1172  0005 2403          	jruge	L023
1173  0007 4f            	clr	a
1174  0008 2010          	jra	L223
1175  000a               L023:
1176  000a ae01d8        	ldw	x,#472
1177  000d 89            	pushw	x
1178  000e ae0000        	ldw	x,#0
1179  0011 89            	pushw	x
1180  0012 ae0000        	ldw	x,#L3
1181  0015 cd0000        	call	_assert_failed
1183  0018 5b04          	addw	sp,#4
1184  001a               L223:
1185                     ; 474   if ((ADC1->CR2 & ADC1_CR2_ALIGN) != 0) /* Right alignment */
1186  001a c65402        	ld	a,21506
1187  001d a508          	bcp	a,#8
1188  001f 271f          	jreq	L101
1189                     ; 477     templ = *(uint8_t*)(uint16_t)((uint16_t)ADC1_BaseAddress + (uint8_t)(Buffer << 1) + 1);
1190  0021 7b06          	ld	a,(OFST+1,sp)
1191  0023 48            	sll	a
1192  0024 5f            	clrw	x
1193  0025 97            	ld	xl,a
1194  0026 d653e1        	ld	a,(21473,x)
1195  0029 6b03          	ld	(OFST-2,sp),a
1196                     ; 479     temph = *(uint8_t*)(uint16_t)((uint16_t)ADC1_BaseAddress + (uint8_t)(Buffer << 1));
1197  002b 7b06          	ld	a,(OFST+1,sp)
1198  002d 48            	sll	a
1199  002e 5f            	clrw	x
1200  002f 97            	ld	xl,a
1201  0030 d653e0        	ld	a,(21472,x)
1202  0033 5f            	clrw	x
1203  0034 97            	ld	xl,a
1204  0035 1f04          	ldw	(OFST-1,sp),x
1205                     ; 481     temph = (uint16_t)(templ | (uint16_t)(temph << (uint8_t)8));
1206  0037 1e04          	ldw	x,(OFST-1,sp)
1207  0039 7b03          	ld	a,(OFST-2,sp)
1208  003b 02            	rlwa	x,a
1209  003c 1f04          	ldw	(OFST-1,sp),x
1211  003e 202b          	jra	L301
1212  0040               L101:
1213                     ; 486     temph = *(uint8_t*)(uint16_t)((uint16_t)ADC1_BaseAddress + (uint8_t)(Buffer << 1));
1214  0040 7b06          	ld	a,(OFST+1,sp)
1215  0042 48            	sll	a
1216  0043 5f            	clrw	x
1217  0044 97            	ld	xl,a
1218  0045 d653e0        	ld	a,(21472,x)
1219  0048 5f            	clrw	x
1220  0049 97            	ld	xl,a
1221  004a 1f04          	ldw	(OFST-1,sp),x
1222                     ; 488     templ = *(uint8_t*)(uint16_t)((uint16_t)ADC1_BaseAddress + (uint8_t)(Buffer << 1) + 1);
1223  004c 7b06          	ld	a,(OFST+1,sp)
1224  004e 48            	sll	a
1225  004f 5f            	clrw	x
1226  0050 97            	ld	xl,a
1227  0051 d653e1        	ld	a,(21473,x)
1228  0054 6b03          	ld	(OFST-2,sp),a
1229                     ; 490     temph = (uint16_t)((uint16_t)((uint16_t)templ << 6) | (uint16_t)(temph << 8));
1230  0056 1e04          	ldw	x,(OFST-1,sp)
1231  0058 4f            	clr	a
1232  0059 02            	rlwa	x,a
1233  005a 1f01          	ldw	(OFST-4,sp),x
1234  005c 7b03          	ld	a,(OFST-2,sp)
1235  005e 97            	ld	xl,a
1236  005f a640          	ld	a,#64
1237  0061 42            	mul	x,a
1238  0062 01            	rrwa	x,a
1239  0063 1a02          	or	a,(OFST-3,sp)
1240  0065 01            	rrwa	x,a
1241  0066 1a01          	or	a,(OFST-4,sp)
1242  0068 01            	rrwa	x,a
1243  0069 1f04          	ldw	(OFST-1,sp),x
1244  006b               L301:
1245                     ; 493   return ((uint16_t)temph);
1246  006b 1e04          	ldw	x,(OFST-1,sp)
1248  006d 5b06          	addw	sp,#6
1249  006f 81            	ret
1251                     ; 502 FlagStatus ADC1_GetAWDChannelStatus(ADC1_Channel_TypeDef Channel)
1251                     ; 503 {
1252                     .text:	section	.text,new
1253  0000               _ADC1_GetAWDChannelStatus:
1254  0000 89            	pushw	x
1255  0001 88            	push	a
1256       00000001      OFST:	set	1
1258                     ; 504   uint8_t status = 0;
1259                     ; 507   assert_param(IS_ADC1_CHANNEL_OK(Channel));
1260  0002 a30000        	cpw	x,#0
1261  0005 2732          	jreq	L033
1262  0007 a30001        	cpw	x,#1
1263  000a 272d          	jreq	L033
1264  000c a30002        	cpw	x,#2
1265  000f 2728          	jreq	L033
1266  0011 a30003        	cpw	x,#3
1267  0014 2723          	jreq	L033
1268  0016 a30004        	cpw	x,#4
1269  0019 271e          	jreq	L033
1270  001b a30005        	cpw	x,#5
1271  001e 2719          	jreq	L033
1272  0020 a30006        	cpw	x,#6
1273  0023 2714          	jreq	L033
1274  0025 a30007        	cpw	x,#7
1275  0028 270f          	jreq	L033
1276  002a a30008        	cpw	x,#8
1277  002d 270a          	jreq	L033
1278  002f a3000c        	cpw	x,#12
1279  0032 2705          	jreq	L033
1280  0034 a30009        	cpw	x,#9
1281  0037 2603          	jrne	L623
1282  0039               L033:
1283  0039 4f            	clr	a
1284  003a 2010          	jra	L233
1285  003c               L623:
1286  003c ae01fb        	ldw	x,#507
1287  003f 89            	pushw	x
1288  0040 ae0000        	ldw	x,#0
1289  0043 89            	pushw	x
1290  0044 ae0000        	ldw	x,#L3
1291  0047 cd0000        	call	_assert_failed
1293  004a 5b04          	addw	sp,#4
1294  004c               L233:
1295                     ; 509   if (Channel < (uint8_t)8)
1296  004c 9c            	rvf
1297  004d 1e02          	ldw	x,(OFST+1,sp)
1298  004f a30008        	cpw	x,#8
1299  0052 2e18          	jrsge	L501
1300                     ; 511     status = (uint8_t)(ADC1->AWSRL & (uint8_t)((uint8_t)1 << Channel));
1301  0054 7b03          	ld	a,(OFST+2,sp)
1302  0056 5f            	clrw	x
1303  0057 4d            	tnz	a
1304  0058 2a01          	jrpl	L433
1305  005a 53            	cplw	x
1306  005b               L433:
1307  005b 97            	ld	xl,a
1308  005c a601          	ld	a,#1
1309  005e 5d            	tnzw	x
1310  005f 2704          	jreq	L633
1311  0061               L043:
1312  0061 48            	sll	a
1313  0062 5a            	decw	x
1314  0063 26fc          	jrne	L043
1315  0065               L633:
1316  0065 c4540d        	and	a,21517
1317  0068 6b01          	ld	(OFST+0,sp),a
1319  006a 2014          	jra	L701
1320  006c               L501:
1321                     ; 515     status = (uint8_t)(ADC1->AWSRH & (uint8_t)((uint8_t)1 << (Channel - (uint8_t)8)));
1322  006c 7b03          	ld	a,(OFST+2,sp)
1323  006e a008          	sub	a,#8
1324  0070 5f            	clrw	x
1325  0071 97            	ld	xl,a
1326  0072 a601          	ld	a,#1
1327  0074 5d            	tnzw	x
1328  0075 2704          	jreq	L243
1329  0077               L443:
1330  0077 48            	sll	a
1331  0078 5a            	decw	x
1332  0079 26fc          	jrne	L443
1333  007b               L243:
1334  007b c4540c        	and	a,21516
1335  007e 6b01          	ld	(OFST+0,sp),a
1336  0080               L701:
1337                     ; 518   return ((FlagStatus)status);
1338  0080 7b01          	ld	a,(OFST+0,sp)
1339  0082 5f            	clrw	x
1340  0083 97            	ld	xl,a
1342  0084 5b03          	addw	sp,#3
1343  0086 81            	ret
1345                     ; 527 FlagStatus ADC1_GetFlagStatus(ADC1_Flag_TypeDef Flag)
1345                     ; 528 {
1346                     .text:	section	.text,new
1347  0000               _ADC1_GetFlagStatus:
1348  0000 89            	pushw	x
1349  0001 88            	push	a
1350       00000001      OFST:	set	1
1352                     ; 529   uint8_t flagstatus = 0;
1353                     ; 530   uint8_t temp = 0;
1354                     ; 533   assert_param(IS_ADC1_FLAG_OK(Flag));
1355  0002 a30080        	cpw	x,#128
1356  0005 273c          	jreq	L253
1357  0007 a30041        	cpw	x,#65
1358  000a 2737          	jreq	L253
1359  000c a30040        	cpw	x,#64
1360  000f 2732          	jreq	L253
1361  0011 a30010        	cpw	x,#16
1362  0014 272d          	jreq	L253
1363  0016 a30011        	cpw	x,#17
1364  0019 2728          	jreq	L253
1365  001b a30012        	cpw	x,#18
1366  001e 2723          	jreq	L253
1367  0020 a30013        	cpw	x,#19
1368  0023 271e          	jreq	L253
1369  0025 a30014        	cpw	x,#20
1370  0028 2719          	jreq	L253
1371  002a a30015        	cpw	x,#21
1372  002d 2714          	jreq	L253
1373  002f a30016        	cpw	x,#22
1374  0032 270f          	jreq	L253
1375  0034 a30017        	cpw	x,#23
1376  0037 270a          	jreq	L253
1377  0039 a30018        	cpw	x,#24
1378  003c 2705          	jreq	L253
1379  003e a30019        	cpw	x,#25
1380  0041 2603          	jrne	L053
1381  0043               L253:
1382  0043 4f            	clr	a
1383  0044 2010          	jra	L453
1384  0046               L053:
1385  0046 ae0215        	ldw	x,#533
1386  0049 89            	pushw	x
1387  004a ae0000        	ldw	x,#0
1388  004d 89            	pushw	x
1389  004e ae0000        	ldw	x,#L3
1390  0051 cd0000        	call	_assert_failed
1392  0054 5b04          	addw	sp,#4
1393  0056               L453:
1394                     ; 535   if ((Flag & 0x0F) == 0x01)
1395  0056 7b02          	ld	a,(OFST+1,sp)
1396  0058 97            	ld	xl,a
1397  0059 7b03          	ld	a,(OFST+2,sp)
1398  005b a40f          	and	a,#15
1399  005d 5f            	clrw	x
1400  005e 02            	rlwa	x,a
1401  005f a30001        	cpw	x,#1
1402  0062 2609          	jrne	L111
1403                     ; 538     flagstatus = (uint8_t)(ADC1->CR3 & ADC1_CR3_OVR);
1404  0064 c65403        	ld	a,21507
1405  0067 a440          	and	a,#64
1406  0069 6b01          	ld	(OFST+0,sp),a
1408  006b 204b          	jra	L311
1409  006d               L111:
1410                     ; 540   else if ((Flag & 0xF0) == 0x10)
1411  006d 7b02          	ld	a,(OFST+1,sp)
1412  006f 97            	ld	xl,a
1413  0070 7b03          	ld	a,(OFST+2,sp)
1414  0072 a4f0          	and	a,#240
1415  0074 5f            	clrw	x
1416  0075 02            	rlwa	x,a
1417  0076 a30010        	cpw	x,#16
1418  0079 2636          	jrne	L511
1419                     ; 543     temp = (uint8_t)(Flag & (uint8_t)0x0F);
1420  007b 7b03          	ld	a,(OFST+2,sp)
1421  007d a40f          	and	a,#15
1422  007f 6b01          	ld	(OFST+0,sp),a
1423                     ; 544     if (temp < 8)
1424  0081 7b01          	ld	a,(OFST+0,sp)
1425  0083 a108          	cp	a,#8
1426  0085 2414          	jruge	L711
1427                     ; 546       flagstatus = (uint8_t)(ADC1->AWSRL & (uint8_t)((uint8_t)1 << temp));
1428  0087 7b01          	ld	a,(OFST+0,sp)
1429  0089 5f            	clrw	x
1430  008a 97            	ld	xl,a
1431  008b a601          	ld	a,#1
1432  008d 5d            	tnzw	x
1433  008e 2704          	jreq	L653
1434  0090               L063:
1435  0090 48            	sll	a
1436  0091 5a            	decw	x
1437  0092 26fc          	jrne	L063
1438  0094               L653:
1439  0094 c4540d        	and	a,21517
1440  0097 6b01          	ld	(OFST+0,sp),a
1442  0099 201d          	jra	L311
1443  009b               L711:
1444                     ; 550       flagstatus = (uint8_t)(ADC1->AWSRH & (uint8_t)((uint8_t)1 << (temp - 8)));
1445  009b 7b01          	ld	a,(OFST+0,sp)
1446  009d a008          	sub	a,#8
1447  009f 5f            	clrw	x
1448  00a0 97            	ld	xl,a
1449  00a1 a601          	ld	a,#1
1450  00a3 5d            	tnzw	x
1451  00a4 2704          	jreq	L263
1452  00a6               L463:
1453  00a6 48            	sll	a
1454  00a7 5a            	decw	x
1455  00a8 26fc          	jrne	L463
1456  00aa               L263:
1457  00aa c4540c        	and	a,21516
1458  00ad 6b01          	ld	(OFST+0,sp),a
1459  00af 2007          	jra	L311
1460  00b1               L511:
1461                     ; 555     flagstatus = (uint8_t)(ADC1->CSR & Flag);
1462  00b1 c65400        	ld	a,21504
1463  00b4 1403          	and	a,(OFST+2,sp)
1464  00b6 6b01          	ld	(OFST+0,sp),a
1465  00b8               L311:
1466                     ; 557   return ((FlagStatus)flagstatus);
1467  00b8 7b01          	ld	a,(OFST+0,sp)
1468  00ba 5f            	clrw	x
1469  00bb 97            	ld	xl,a
1471  00bc 5b03          	addw	sp,#3
1472  00be 81            	ret
1474                     ; 567 void ADC1_ClearFlag(ADC1_Flag_TypeDef Flag)
1474                     ; 568 {
1475                     .text:	section	.text,new
1476  0000               _ADC1_ClearFlag:
1477  0000 89            	pushw	x
1478  0001 88            	push	a
1479       00000001      OFST:	set	1
1481                     ; 569   uint8_t temp = 0;
1482                     ; 572   assert_param(IS_ADC1_FLAG_OK(Flag));
1483  0002 a30080        	cpw	x,#128
1484  0005 273c          	jreq	L273
1485  0007 a30041        	cpw	x,#65
1486  000a 2737          	jreq	L273
1487  000c a30040        	cpw	x,#64
1488  000f 2732          	jreq	L273
1489  0011 a30010        	cpw	x,#16
1490  0014 272d          	jreq	L273
1491  0016 a30011        	cpw	x,#17
1492  0019 2728          	jreq	L273
1493  001b a30012        	cpw	x,#18
1494  001e 2723          	jreq	L273
1495  0020 a30013        	cpw	x,#19
1496  0023 271e          	jreq	L273
1497  0025 a30014        	cpw	x,#20
1498  0028 2719          	jreq	L273
1499  002a a30015        	cpw	x,#21
1500  002d 2714          	jreq	L273
1501  002f a30016        	cpw	x,#22
1502  0032 270f          	jreq	L273
1503  0034 a30017        	cpw	x,#23
1504  0037 270a          	jreq	L273
1505  0039 a30018        	cpw	x,#24
1506  003c 2705          	jreq	L273
1507  003e a30019        	cpw	x,#25
1508  0041 2603          	jrne	L073
1509  0043               L273:
1510  0043 4f            	clr	a
1511  0044 2010          	jra	L473
1512  0046               L073:
1513  0046 ae023c        	ldw	x,#572
1514  0049 89            	pushw	x
1515  004a ae0000        	ldw	x,#0
1516  004d 89            	pushw	x
1517  004e ae0000        	ldw	x,#L3
1518  0051 cd0000        	call	_assert_failed
1520  0054 5b04          	addw	sp,#4
1521  0056               L473:
1522                     ; 574   if ((Flag & 0x0F) == 0x01)
1523  0056 7b02          	ld	a,(OFST+1,sp)
1524  0058 97            	ld	xl,a
1525  0059 7b03          	ld	a,(OFST+2,sp)
1526  005b a40f          	and	a,#15
1527  005d 5f            	clrw	x
1528  005e 02            	rlwa	x,a
1529  005f a30001        	cpw	x,#1
1530  0062 2606          	jrne	L521
1531                     ; 577     ADC1->CR3 &= (uint8_t)(~ADC1_CR3_OVR);
1532  0064 721d5403      	bres	21507,#6
1534  0068 2051          	jra	L721
1535  006a               L521:
1536                     ; 579   else if ((Flag & 0xF0) == 0x10)
1537  006a 7b02          	ld	a,(OFST+1,sp)
1538  006c 97            	ld	xl,a
1539  006d 7b03          	ld	a,(OFST+2,sp)
1540  006f a4f0          	and	a,#240
1541  0071 5f            	clrw	x
1542  0072 02            	rlwa	x,a
1543  0073 a30010        	cpw	x,#16
1544  0076 263a          	jrne	L131
1545                     ; 582     temp = (uint8_t)(Flag & (uint8_t)0x0F);
1546  0078 7b03          	ld	a,(OFST+2,sp)
1547  007a a40f          	and	a,#15
1548  007c 6b01          	ld	(OFST+0,sp),a
1549                     ; 583     if (temp < 8)
1550  007e 7b01          	ld	a,(OFST+0,sp)
1551  0080 a108          	cp	a,#8
1552  0082 2416          	jruge	L331
1553                     ; 585       ADC1->AWSRL &= (uint8_t)~(uint8_t)((uint8_t)1 << temp);
1554  0084 7b01          	ld	a,(OFST+0,sp)
1555  0086 5f            	clrw	x
1556  0087 97            	ld	xl,a
1557  0088 a601          	ld	a,#1
1558  008a 5d            	tnzw	x
1559  008b 2704          	jreq	L673
1560  008d               L004:
1561  008d 48            	sll	a
1562  008e 5a            	decw	x
1563  008f 26fc          	jrne	L004
1564  0091               L673:
1565  0091 43            	cpl	a
1566  0092 c4540d        	and	a,21517
1567  0095 c7540d        	ld	21517,a
1569  0098 2021          	jra	L721
1570  009a               L331:
1571                     ; 589       ADC1->AWSRH &= (uint8_t)~(uint8_t)((uint8_t)1 << (temp - 8));
1572  009a 7b01          	ld	a,(OFST+0,sp)
1573  009c a008          	sub	a,#8
1574  009e 5f            	clrw	x
1575  009f 97            	ld	xl,a
1576  00a0 a601          	ld	a,#1
1577  00a2 5d            	tnzw	x
1578  00a3 2704          	jreq	L204
1579  00a5               L404:
1580  00a5 48            	sll	a
1581  00a6 5a            	decw	x
1582  00a7 26fc          	jrne	L404
1583  00a9               L204:
1584  00a9 43            	cpl	a
1585  00aa c4540c        	and	a,21516
1586  00ad c7540c        	ld	21516,a
1587  00b0 2009          	jra	L721
1588  00b2               L131:
1589                     ; 594     ADC1->CSR &= (uint8_t) (~Flag);
1590  00b2 7b03          	ld	a,(OFST+2,sp)
1591  00b4 43            	cpl	a
1592  00b5 c45400        	and	a,21504
1593  00b8 c75400        	ld	21504,a
1594  00bb               L721:
1595                     ; 596 }
1596  00bb 5b03          	addw	sp,#3
1597  00bd 81            	ret
1599                     ; 616 ITStatus ADC1_GetITStatus(ADC1_IT_TypeDef ITPendingBit)
1599                     ; 617 {
1600                     .text:	section	.text,new
1601  0000               _ADC1_GetITStatus:
1602  0000 89            	pushw	x
1603  0001 5205          	subw	sp,#5
1604       00000005      OFST:	set	5
1606                     ; 618   ITStatus itstatus = RESET;
1607                     ; 619   uint8_t temp = 0;
1608                     ; 622   assert_param(IS_ADC1_ITPENDINGBIT_OK(ITPendingBit));
1609  0003 a30080        	cpw	x,#128
1610  0006 273c          	jreq	L214
1611  0008 a30140        	cpw	x,#320
1612  000b 2737          	jreq	L214
1613  000d a30110        	cpw	x,#272
1614  0010 2732          	jreq	L214
1615  0012 a30111        	cpw	x,#273
1616  0015 272d          	jreq	L214
1617  0017 a30112        	cpw	x,#274
1618  001a 2728          	jreq	L214
1619  001c a30113        	cpw	x,#275
1620  001f 2723          	jreq	L214
1621  0021 a30114        	cpw	x,#276
1622  0024 271e          	jreq	L214
1623  0026 a30115        	cpw	x,#277
1624  0029 2719          	jreq	L214
1625  002b a30116        	cpw	x,#278
1626  002e 2714          	jreq	L214
1627  0030 a30117        	cpw	x,#279
1628  0033 270f          	jreq	L214
1629  0035 a30118        	cpw	x,#280
1630  0038 270a          	jreq	L214
1631  003a a3011c        	cpw	x,#284
1632  003d 2705          	jreq	L214
1633  003f a30119        	cpw	x,#281
1634  0042 2603          	jrne	L014
1635  0044               L214:
1636  0044 4f            	clr	a
1637  0045 2010          	jra	L414
1638  0047               L014:
1639  0047 ae026e        	ldw	x,#622
1640  004a 89            	pushw	x
1641  004b ae0000        	ldw	x,#0
1642  004e 89            	pushw	x
1643  004f ae0000        	ldw	x,#L3
1644  0052 cd0000        	call	_assert_failed
1646  0055 5b04          	addw	sp,#4
1647  0057               L414:
1648                     ; 624   if (((uint16_t)ITPendingBit & 0xF0) == 0x10)
1649  0057 7b06          	ld	a,(OFST+1,sp)
1650  0059 97            	ld	xl,a
1651  005a 7b07          	ld	a,(OFST+2,sp)
1652  005c a4f0          	and	a,#240
1653  005e 5f            	clrw	x
1654  005f 02            	rlwa	x,a
1655  0060 a30010        	cpw	x,#16
1656  0063 2650          	jrne	L141
1657                     ; 627     temp = (uint8_t)((uint16_t)ITPendingBit & 0x0F);
1658  0065 7b07          	ld	a,(OFST+2,sp)
1659  0067 a40f          	and	a,#15
1660  0069 6b05          	ld	(OFST+0,sp),a
1661                     ; 628     if (temp < 8)
1662  006b 7b05          	ld	a,(OFST+0,sp)
1663  006d a108          	cp	a,#8
1664  006f 2421          	jruge	L341
1665                     ; 630       itstatus = (ITStatus)(ADC1->AWSRL & (uint8_t)((uint8_t)1 << temp));
1666  0071 c6540d        	ld	a,21517
1667  0074 5f            	clrw	x
1668  0075 97            	ld	xl,a
1669  0076 1f01          	ldw	(OFST-4,sp),x
1670  0078 7b05          	ld	a,(OFST+0,sp)
1671  007a 5f            	clrw	x
1672  007b 97            	ld	xl,a
1673  007c a601          	ld	a,#1
1674  007e 5d            	tnzw	x
1675  007f 2704          	jreq	L614
1676  0081               L024:
1677  0081 48            	sll	a
1678  0082 5a            	decw	x
1679  0083 26fc          	jrne	L024
1680  0085               L614:
1681  0085 5f            	clrw	x
1682  0086 97            	ld	xl,a
1683  0087 01            	rrwa	x,a
1684  0088 1402          	and	a,(OFST-3,sp)
1685  008a 01            	rrwa	x,a
1686  008b 1401          	and	a,(OFST-4,sp)
1687  008d 01            	rrwa	x,a
1688  008e 1f03          	ldw	(OFST-2,sp),x
1690  0090 2037          	jra	L741
1691  0092               L341:
1692                     ; 634       itstatus = (ITStatus)(ADC1->AWSRH & (uint8_t)((uint8_t)1 << (temp - 8)));
1693  0092 c6540c        	ld	a,21516
1694  0095 5f            	clrw	x
1695  0096 97            	ld	xl,a
1696  0097 1f01          	ldw	(OFST-4,sp),x
1697  0099 7b05          	ld	a,(OFST+0,sp)
1698  009b a008          	sub	a,#8
1699  009d 5f            	clrw	x
1700  009e 97            	ld	xl,a
1701  009f a601          	ld	a,#1
1702  00a1 5d            	tnzw	x
1703  00a2 2704          	jreq	L224
1704  00a4               L424:
1705  00a4 48            	sll	a
1706  00a5 5a            	decw	x
1707  00a6 26fc          	jrne	L424
1708  00a8               L224:
1709  00a8 5f            	clrw	x
1710  00a9 97            	ld	xl,a
1711  00aa 01            	rrwa	x,a
1712  00ab 1402          	and	a,(OFST-3,sp)
1713  00ad 01            	rrwa	x,a
1714  00ae 1401          	and	a,(OFST-4,sp)
1715  00b0 01            	rrwa	x,a
1716  00b1 1f03          	ldw	(OFST-2,sp),x
1717  00b3 2014          	jra	L741
1718  00b5               L141:
1719                     ; 639     itstatus = (ITStatus)(ADC1->CSR & (uint8_t)ITPendingBit);
1720  00b5 7b07          	ld	a,(OFST+2,sp)
1721  00b7 5f            	clrw	x
1722  00b8 97            	ld	xl,a
1723  00b9 1f01          	ldw	(OFST-4,sp),x
1724  00bb c65400        	ld	a,21504
1725  00be 5f            	clrw	x
1726  00bf 97            	ld	xl,a
1727  00c0 01            	rrwa	x,a
1728  00c1 1402          	and	a,(OFST-3,sp)
1729  00c3 01            	rrwa	x,a
1730  00c4 1401          	and	a,(OFST-4,sp)
1731  00c6 01            	rrwa	x,a
1732  00c7 1f03          	ldw	(OFST-2,sp),x
1733  00c9               L741:
1734                     ; 641   return ((ITStatus)itstatus);
1735  00c9 1e03          	ldw	x,(OFST-2,sp)
1737  00cb 5b07          	addw	sp,#7
1738  00cd 81            	ret
1740                     ; 662 void ADC1_ClearITPendingBit(ADC1_IT_TypeDef ITPendingBit)
1740                     ; 663 {
1741                     .text:	section	.text,new
1742  0000               _ADC1_ClearITPendingBit:
1743  0000 89            	pushw	x
1744  0001 88            	push	a
1745       00000001      OFST:	set	1
1747                     ; 664   uint8_t temp = 0;
1748                     ; 667   assert_param(IS_ADC1_ITPENDINGBIT_OK(ITPendingBit));
1749  0002 a30080        	cpw	x,#128
1750  0005 273c          	jreq	L234
1751  0007 a30140        	cpw	x,#320
1752  000a 2737          	jreq	L234
1753  000c a30110        	cpw	x,#272
1754  000f 2732          	jreq	L234
1755  0011 a30111        	cpw	x,#273
1756  0014 272d          	jreq	L234
1757  0016 a30112        	cpw	x,#274
1758  0019 2728          	jreq	L234
1759  001b a30113        	cpw	x,#275
1760  001e 2723          	jreq	L234
1761  0020 a30114        	cpw	x,#276
1762  0023 271e          	jreq	L234
1763  0025 a30115        	cpw	x,#277
1764  0028 2719          	jreq	L234
1765  002a a30116        	cpw	x,#278
1766  002d 2714          	jreq	L234
1767  002f a30117        	cpw	x,#279
1768  0032 270f          	jreq	L234
1769  0034 a30118        	cpw	x,#280
1770  0037 270a          	jreq	L234
1771  0039 a3011c        	cpw	x,#284
1772  003c 2705          	jreq	L234
1773  003e a30119        	cpw	x,#281
1774  0041 2603          	jrne	L034
1775  0043               L234:
1776  0043 4f            	clr	a
1777  0044 2010          	jra	L434
1778  0046               L034:
1779  0046 ae029b        	ldw	x,#667
1780  0049 89            	pushw	x
1781  004a ae0000        	ldw	x,#0
1782  004d 89            	pushw	x
1783  004e ae0000        	ldw	x,#L3
1784  0051 cd0000        	call	_assert_failed
1786  0054 5b04          	addw	sp,#4
1787  0056               L434:
1788                     ; 669   if (((uint16_t)ITPendingBit & 0xF0) == 0x10)
1789  0056 7b02          	ld	a,(OFST+1,sp)
1790  0058 97            	ld	xl,a
1791  0059 7b03          	ld	a,(OFST+2,sp)
1792  005b a4f0          	and	a,#240
1793  005d 5f            	clrw	x
1794  005e 02            	rlwa	x,a
1795  005f a30010        	cpw	x,#16
1796  0062 263a          	jrne	L151
1797                     ; 672     temp = (uint8_t)((uint16_t)ITPendingBit & 0x0F);
1798  0064 7b03          	ld	a,(OFST+2,sp)
1799  0066 a40f          	and	a,#15
1800  0068 6b01          	ld	(OFST+0,sp),a
1801                     ; 673     if (temp < 8)
1802  006a 7b01          	ld	a,(OFST+0,sp)
1803  006c a108          	cp	a,#8
1804  006e 2416          	jruge	L351
1805                     ; 675       ADC1->AWSRL &= (uint8_t)~(uint8_t)((uint8_t)1 << temp);
1806  0070 7b01          	ld	a,(OFST+0,sp)
1807  0072 5f            	clrw	x
1808  0073 97            	ld	xl,a
1809  0074 a601          	ld	a,#1
1810  0076 5d            	tnzw	x
1811  0077 2704          	jreq	L634
1812  0079               L044:
1813  0079 48            	sll	a
1814  007a 5a            	decw	x
1815  007b 26fc          	jrne	L044
1816  007d               L634:
1817  007d 43            	cpl	a
1818  007e c4540d        	and	a,21517
1819  0081 c7540d        	ld	21517,a
1821  0084 2021          	jra	L751
1822  0086               L351:
1823                     ; 679       ADC1->AWSRH &= (uint8_t)~(uint8_t)((uint8_t)1 << (temp - 8));
1824  0086 7b01          	ld	a,(OFST+0,sp)
1825  0088 a008          	sub	a,#8
1826  008a 5f            	clrw	x
1827  008b 97            	ld	xl,a
1828  008c a601          	ld	a,#1
1829  008e 5d            	tnzw	x
1830  008f 2704          	jreq	L244
1831  0091               L444:
1832  0091 48            	sll	a
1833  0092 5a            	decw	x
1834  0093 26fc          	jrne	L444
1835  0095               L244:
1836  0095 43            	cpl	a
1837  0096 c4540c        	and	a,21516
1838  0099 c7540c        	ld	21516,a
1839  009c 2009          	jra	L751
1840  009e               L151:
1841                     ; 684     ADC1->CSR &= (uint8_t)((uint16_t)~(uint16_t)ITPendingBit);
1842  009e 7b03          	ld	a,(OFST+2,sp)
1843  00a0 43            	cpl	a
1844  00a1 c45400        	and	a,21504
1845  00a4 c75400        	ld	21504,a
1846  00a7               L751:
1847                     ; 686 }
1848  00a7 5b03          	addw	sp,#3
1849  00a9 81            	ret
1851                     	xdef	_ADC1_ClearITPendingBit
1852                     	xdef	_ADC1_GetITStatus
1853                     	xdef	_ADC1_ClearFlag
1854                     	xdef	_ADC1_GetFlagStatus
1855                     	xdef	_ADC1_GetAWDChannelStatus
1856                     	xdef	_ADC1_GetBufferValue
1857                     	xdef	_ADC1_SetLowThreshold
1858                     	xdef	_ADC1_SetHighThreshold
1859                     	xdef	_ADC1_GetConversionValue
1860                     	xdef	_ADC1_StartConversion
1861                     	xdef	_ADC1_AWDChannelConfig
1862                     	xdef	_ADC1_ExternalTriggerConfig
1863                     	xdef	_ADC1_ConversionConfig
1864                     	xdef	_ADC1_SchmittTriggerConfig
1865                     	xdef	_ADC1_PrescalerConfig
1866                     	xdef	_ADC1_ITConfig
1867                     	xdef	_ADC1_DataBufferCmd
1868                     	xdef	_ADC1_ScanModeCmd
1869                     	xdef	_ADC1_Cmd
1870                     	xdef	_ADC1_Init
1871                     	xdef	_ADC1_DeInit
1872                     	xref	_assert_failed
1873                     .const:	section	.text
1874  0000               L3:
1875  0000 2e2e5c2e2e5c  	dc.b	"..\..\..\libraries"
1876  0012 5c73746d3873  	dc.b	"\stm8s_stdperiph_d"
1877  0024 72697665725c  	dc.b	"river\src\stm8s_ad"
1878  0036 63312e6300    	dc.b	"c1.c",0
1879                     	end

/**
  ******************************************************************************
  * @file     main.h
  * @author   MCD Application Team
  * @version  V2.2.0
  * @date     30-September-2014
  * @brief    This file contains the headers of the interrupt handlers
  ******************************************************************************
  * @attention
  *
  * <h2><center>&copy; COPYRIGHT 2014 STMicroelectronics</center></h2>
  *
  * Licensed under MCD-ST Liberty SW License Agreement V2, (the "License");
  * You may not use this file except in compliance with the License.
  * You may obtain a copy of the License at:

  ******************************************************************************
  */ 

/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef __MAIN_H
#define __MAIN_H



/* Includes ------------------------------------------------------------------*/
#define FREQUENZA_MASTER 	16000000 	// 16MHz

#define PWMfreq						50000

//FSM
#define WAIT							0
#define CNT								1
#define CHGINT						2
#define CHGCOL						3
#define CHGFUN						3

#define MEMCFG						0
#define SEL_LED_TYPE			6
#define SELCFG						1
#define SETMEMCFG1				2
#define SETMEMCFG2				3
#define SETMEMCFG3				4
#define RUN								5

//#define  SOUND_DEBUG 
#define INDIRIZZO_MEMORIA	0x4000
#define OPTION_BYTE_AFR		0x4803   // Alternate function remapping option byte
#define AFR0							0x01     //Alternate function remapping bit 0 */

#define S1_DIP 0
#define S2_DIP 1

/* Exported types ------------------------------------------------------------*/
/* Exported constants --------------------------------------------------------*/
extern bool 	flagCFG1;
extern bool 	flagCFG2;
extern bool 	flagCFG3;
extern 				uint8_t mainFsm;

extern	uint8_t S1_enable;
extern	uint8_t S2_enable;
extern 	uint8_t SndDip;
extern  uint8_t duty;

extern uint16_t RAW_Data;
/* Exported macro ------------------------------------------------------------*/
/* Exported functions ------------------------------------------------------- */


#endif /* __MAIN_H */


/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/

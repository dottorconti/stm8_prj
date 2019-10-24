/*
  ******************************************************************************
  * @file     utils.h
  ******************************************************************************
*/ 

/* Define to prevent recursive inclusion -------------------------------------*/
#pragma once
#ifndef __UTILS_H__
#define __UTILS_H__

/* Includes ------------------------------------------------------------------*/
/* Exported types ------------------------------------------------------------*/

/* Defines -------------------------------------------------------------------*/

/* Exported constants --------------------------------------------------------*/
extern bool 		timeout1ms;
extern bool 		timeout10ms;
extern bool			timeout50ms;
extern bool			timeout500ms;

extern bool 		timeout1msISR;
extern bool 		timeout10msISR;
extern bool			timeout50msISR;
extern bool			timeout500msISR;

extern uint8_t	counter10ms;


extern	bool S1_IN;
extern	bool S2_IN;
extern	bool S2_IN;

/* Exported macro ------------------------------------------------------------*/
/* Exported functions ------------------------------------------------------- */	
void inputRead(void);
void UpdateTask(void);
void init_setup(void);
uint8_t dipRead(uint8_t type);

#endif
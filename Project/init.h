/*
  ******************************************************************************
  * @file     init.h
  ******************************************************************************
*/ 

/* Define to prevent recursive inclusion -------------------------------------*/
#pragma once
#ifndef __INIT_H__
#define __INIT_H__

/* Includes ------------------------------------------------------------------*/

#include "stm8s.h"
#include "stm8s_gpio.h"
#include "stm8s_adc1.h"
#include "main.h"
#include "stm8s_it.h"
#include "init.h"
#include "utils.h"


/* Exported types ------------------------------------------------------------*/
/* Exported constants --------------------------------------------------------*/
/* Includes ------------------------------------------------------------------*/

#define OPTION_BYTE_AFR		0x4803   // Alternate function remapping option byte
#define AFR0							0x01     //Alternate function remapping bit 0 */

/* Exported macro ------------------------------------------------------------*/
/* Exported functions ------------------------------------------------------- */	

void TIM1_setup(void);
void TIM2_setup(void);
void TIM4_setup(void);
void clock_setup(void);
void GPIO_setup(void);
//void ADC_setup(void);
void init_u_Port(void);
void setAlternateBit(void);
void Read_Protect_Flash(void);
uint16_t readADC1(uint16_t channel);
void ADC_setup(uint8_t ch_sel);

#endif
/*
  ******************************************************************************
  * @file     sound.h
  ******************************************************************************
*/ 

/* Define to prevent recursive inclusion -------------------------------------*/

#pragma once
#ifndef __SOUND_H__
#define __SOUND_H__

/* Includes ------------------------------------------------------------------*/
/* Exported types ------------------------------------------------------------*/
/* Exported constants --------------------------------------------------------*/
/* Includes ------------------------------------------------------------------*/


#define ABP1 		16000000			//	16MHz 
#define PWM_CLK 3200000 			//	APB1/5

// Note musicali
#define DO4 	PWM_CLK/262 
#define DOd4 	PWM_CLK/277
#define RE4 	PWM_CLK/294 
#define REd4 	PWM_CLK/311
#define MI4 	PWM_CLK/330 
#define FA4 	PWM_CLK/349 
#define FAd4 	PWM_CLK/370
#define SOL4 	PWM_CLK/392
#define SOLd4 PWM_CLK/415
#define LA4 	PWM_CLK/440
#define LAd4 	PWM_CLK/466
#define SI4 	PWM_CLK/494
//#define SI3		PWM_CLK/247

#define END		1
#define MUTE	0


#define MINUTE 	60000
/*
#define BPM 		320
#define QQ 	((MINUTE/BPM)*4)/10
#define DQ 	((MINUTE/BPM)*2)/10
#define UQ 	((MINUTE/BPM))/10
#define UO	((MINUTE/BPM)/2)/10
*/
/*
#define BPM 		320
#define QQ 	75
#define DQ 	37.5
#define UQ 	18.75
#define UO	9.37
*/
/*
#define BPM 		120
#define QQ 	200
#define DQ 	100
#define UQ 	50
#define UO	25
*/

extern uint8_t 		duty;
extern uint16_t 	caseCnt;

/* Exported macro ------------------------------------------------------------*/
/* Exported functions ------------------------------------------------------- */	

void soundStone(uint8_t num);
void setFrequency ( uint32_t f1);
void pause(void);
void sweep500_1k2(void);
void sweep2k_2k8(void);
void sweep2k_2k8_reverse(void);
void sweep500_1k5_2k7(void);
void audio_test(void);
void sweep1k_2k(void);
void sweep2k8_2k(void);
void sweep1k2_500(void);
void song(uint16_t note[]);

void birtdaySong(void);
void hornGeneralLee(void);
void changeBPM(uint16_t bpmVar);
#endif

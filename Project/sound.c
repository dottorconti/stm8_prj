//***********************SOUND*********************/
//	File: sound.c
//	Revision: 1.0
//	Date: 24/10/19
//	Author: Contiero Enrico
//	email: enrico.store@gmail.com
//*************************************************/

#include "stm8s.h"
#include "stm8s_gpio.h"
#include "stm8s_adc1.h"
#include "main.h"
#include "stm8s_it.h"
#include "init.h"
#include "utils.h"
#include "sound.h"

uint8_t 	duty				=	40;
uint16_t 	cnt 				= 0;
uint8_t 	n 					= 0;
uint8_t 	t 					= 1;
bool 			songStep 		= 0;

//uint16_t scale_song[15] = {DO4, 100, RE4, 100, MI4, 100, FA4, 100, SOL4, 100, LA4, 100, SI4, 100, END};

uint16_t birthday_song[53] = {RE4,UQ,RE4,UQ,MI4,UQ,RE4,UQ,SOL4,UQ,FAd4,UQ,
															RE4,UQ,RE4,UQ,MI4,UQ,RE4,UQ,LA4,UQ,SOL4,UQ,	
															RE4,UQ,RE4,UQ,RE4/2,UQ,SI4,UQ,SOL4,UQ, FAd4,UQ,MI4,UQ, 
															DO4/2,UQ, DO4/2,UQ,SI4,UQ,SOL4,UQ, LA4,UQ, SOL4,UQ,MUTE,DQ,END};

uint16_t generalLee_song[27] = {SOL4,UQ,MI4,UQ,DO4,DQ,DO4,DQ,DO4,UQ,RE4,UQ,MI4,UQ,FA4,UQ,SOL4,DQ,SOL4,DQ,SOL4,DQ,MI4,DQ,MUTE,200,END};

void soundStone(uint8_t num)
{
switch (num)
	{
/************************	SOUND A	************************/		
		case 0:
			birtdaySong();
		break;
		
		case 1:
			hornGeneralLee();
		break;		

		case 2:
		
	//		song(&generalLee_song[]);
		break;
		
		case 10:
			pause();
		break;	
		
		default:
		break;
	}
}

//************Function definitions******************

void birtdaySong(void)
{
	switch (songStep)
	{
		case 0:
		if (birthday_song[n]  != MUTE)
		{
			TIM1_SetAutoreload(birthday_song[n]);
		}			
		TIM1_SetCompare4(birthday_song[n]/duty);
		cnt++;
		if (cnt >= birthday_song[t])
		{
			cnt = 0;
			n		=	n + 2;
			t		=	t + 2;
			songStep = 1;
		}
		if (birthday_song[n] == END)
		{
			n = 0;
			t = 1;
		}
		
		break;
		
		case 1:
		TIM1_SetCompare4(MUTE);
		songStep = 0;
		break;
	}
}

void hornGeneralLee(void)
{
	switch (songStep)
	{
		case 0:
		if (generalLee_song[n]  != MUTE)
		{
			TIM1_SetAutoreload(generalLee_song[n]);
		}			
		TIM1_SetCompare4(generalLee_song[n]/duty);
		cnt++;
		if (cnt >= generalLee_song[t])
		{
			cnt = 0;
			n		=	n + 2;
			t		=	t + 2;
			songStep = 1;
		}
		if (generalLee_song[n] == END)
		{
			n = 0;
			t = 1;
		}
		
		break;
		
		case 1:
		TIM1_SetCompare4(MUTE);
		songStep = 0;
		break;
	}		
}


void setFrequency(uint32_t f1)
{
	TIM1_SetAutoreload(f1);
	TIM1_SetCompare4(f1/duty);
}

void pause(void)
{
	TIM1_SetCompare4(0);
}

/***************************END OF FILE****************************/

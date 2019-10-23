
//***********************SOUND*********************/
//	File: sound.c
//  Author: Contiero Enrico
//	email: enrico.contiero29@gmail.com
//	Date: 24/10/19
//	Revision: 1.0
//*************************************************/

#include "stm8s.h"
#include "stm8s_gpio.h"
#include "stm8s_adc1.h"
#include "main.h"
#include "stm8s_it.h"
#include "init.h"
#include "utils.h"
#include "sound.h"


	
/*Valori già convertiti con Fmaster 16Mhz*/

uint8_t 	duty				=	40;

uint16_t 	cct					=	0;
uint16_t 	sweepCnt		=	0;
uint16_t 	caseCnt 		= 0;
uint16_t 	freq 				= 70;
uint16_t 	sweep 			= 45714;
uint16_t 	cnt 				= 0;
uint8_t 	n 					= 0;
uint8_t 	t 					= 1;
bool 			songStep 		= 0;
uint16_t 	BPMv 				= 0;

//uint16_t scale_song[15] = {DO4, 100, RE4, 100, MI4, 100, FA4, 100, SOL4, 100, LA4, 100, SI4, 100, END};

//uint16_t birthday_song[63] = {RE4, 50, MUTE, 1, RE4, 50, MI4, 50, RE4, 50, SOL4, 50, FAd4, 100,
//															RE4, 50, MUTE, 1, RE4, 50, MI4, 50, RE4, 50, LA4, 50, SOL4, 100,	
//															RE4, 50, MUTE, 1, RE4, 50, MUTE, 1, RE4/2, 50, SI4, 50, SOL4, 50, FAd4, 50,	MI4, 100, 
//															DO4/2, 50, MUTE, 1, DO4/2, 50, SI4, 50, SOL4, 50, LA4, 50, SOL4, 50, MUTE, 100, END};
uint16_t birthday_song[53] = {RE4,UQ,RE4,UQ,MI4,UQ,RE4,UQ,SOL4,UQ,FAd4,UQ,
															RE4,UQ,RE4,UQ,MI4,UQ,RE4,UQ,LA4,UQ,SOL4,UQ,	
															RE4,UQ,RE4,UQ,RE4/2,UQ,SI4,UQ,SOL4,UQ, FAd4,UQ,MI4,UQ, 
															DO4/2,UQ, DO4/2,UQ,SI4,UQ,SOL4,UQ, LA4,UQ, SOL4,UQ,MUTE,DQ,END};

//uint16_t generalLee_song[27] = {SI4/2,UQ,SOL4,UQ,MI4/2,UQ,MI4/2,UQ,MI4/2,UQ,FA4,UQ,SOL4,UQ,LA4/2,UQ,SI4/2,UQ,SI4/2,UQ,SI4/2,UQ,SOL4,UQ,MUTE,DQ,END};
uint16_t generalLee_song[27] = {SOL4,UQ,MI4,UQ,DO4,DQ,DO4,DQ,DO4,UQ,RE4,UQ,MI4,UQ,FA4,UQ,SOL4,DQ,SOL4,DQ,SOL4,DQ,MI4,DQ,MUTE,200,END};

void soundStone(uint8_t num)
{
switch (num)
	{
/************************	SOUND A	************************/		
		case 0:
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
		break;
		
		case 1:
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
		break;		
	
		case 2:
		break;	
	
		case 3:
		break;	

		case 4:
		break;		

		case 5:
		break;	
		
		case 6:
		break;
		
		case 7:
		break;
		
/************************	SOUND B	************************/
		case 8:  // BITONE 1000 - 2000 Hz
		break;
					
		case 9: // 01001 INTERMITTENT 490Hz 0.5s ON / 1s OFF GENERAL PURPOSE;
		break;
					
		case 10:  // SWEEP 2800 - 2000  Hz
		break;
		
		case 11:  // lineare 970 Hz	
		break;
	}
}

//------======******Function definitions******======------
void song(uint16_t note[])
{
	switch (songStep)
	{
		case 0:
		if (note[n]  != MUTE)
		{
			TIM1_SetAutoreload(note[n]);
		}			
		TIM1_SetCompare4(note[n]/duty);
		cnt++;
		if (cnt >= note[t])
		{
			cnt = 0;
			n		=	n + 2;
			t		=	t + 2;
			songStep = 1;
		}
		if (note[n] == END)
		{
			n = 0;
			t = 1;
		}
	}

}
void setFrequency( uint32_t f1)
{
	TIM1_SetAutoreload(f1);
	TIM1_SetCompare4(f1/duty);
}

void pause(void)
{
	TIM1_SetCompare4(0);
}

/***************************END OF FILE****************************/

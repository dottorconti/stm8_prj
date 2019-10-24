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
uint8_t ii=0;

uint16_t BPM = 0;
uint16_t  QQ = 0;
uint16_t  DQ = 0;
uint16_t  UQ = 0;
uint16_t  UO = 0;
uint8_t oldNum = 0;
bool firstTime = 1;

//uint16_t scale_song[15] = {DO4, 100, RE4, 100, MI4, 100, FA4, 100, SOL4, 100, LA4, 100, SI4, 100, END};

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

//BPM 120
/*
uint16_t birthday_song[53] = {RE4,UQ,RE4,UQ,MI4,UQ,RE4,UQ,SOL4,UQ,FAd4,UQ,
															RE4,UQ,RE4,UQ,MI4,UQ,RE4,UQ,LA4,UQ,SOL4,UQ,	
															RE4,UQ,RE4,UQ,RE4/2,UQ,SI4,UQ,SOL4,UQ, FAd4,UQ,MI4,UQ, 
															DO4/2,UQ, DO4/2,UQ,SI4,UQ,SOL4,UQ,LA4,UQ,SOL4,UQ,MUTE,DQ,END};
*/

//uint16_t generalLee_song[27] = {SOL4,UQ,MI4,UQ,DO4,DQ,DO4,DQ,DO4,UQ,RE4,UQ,MI4,UQ,FA4,UQ,SOL4,DQ,SOL4,DQ,SOL4,DQ,MI4,DQ,MUTE,200,END};
/*
uint16_t birthday_song[53] = {RE4,50,RE4,50,MI4,50,RE4,50,SOL4,50,FAd4,50,
															RE4,50,RE4,50,MI4,50,RE4,50,LA4,50,SOL4,50,	
															RE4,50,RE4,50,RE4/2,50,SI4,50,SOL4,50,FAd4,50,MI4,50, 
															DO4/2,50, DO4/2,50,SI4,50,SOL4,50,LA4,50,SOL4,50,MUTE,200,END};
	*/														
uint16_t generalLee_song[27] = {SOL4,19,MI4,19,DO4,38,DO4,38,DO4,19,RE4,19,MI4,19,FA4,19,SOL4,38,SOL4,38,SOL4,38,MI4,38,MUTE,200,END};

uint16_t vintage_song[23] = 
{
1929,3616,2379,3197,3016,3965,6107,4598,
2202,4348,1973,3062,2171,2610,2914,4097,
1898,2317,4227,3320,4494,2142,2390
};

void soundStone(uint8_t num)
{
	if (num != oldNum)
	{
		firstTime=1;
	}
	oldNum=num;
	
	switch (num)
	{
/*****SW1*****/	
		case 0:
			hornGeneralLee();
		break;
		
		case 1:
		break;		

		case 2:
		break;

/*****SW2*****/
		case 8:
		//	birtdaySong();
		vintageHorn();
		break;

		case 12:
		break;
		
		case 50:
			pause();
		break;
		
		default:
		break;
	}
}

//************Function definitions******************
/*
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
*/
void vintageHorn(void)
{
	TIM1_SetAutoreload(13008);
	TIM1_SetCompare4(130008/duty);

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
/*
void changeBPM(uint16_t bpmVar)
{
	BPM = bpmVar;
	QQ 	=	((MINUTE/BPM)*4)/10;
	DQ 	=	((MINUTE/BPM)*2)/10;
	UQ 	=	((MINUTE/BPM))/10;
	UO	=	((MINUTE/BPM)/2)/10;
}
*/

/***************************END OF FILE****************************/

//***********************UTILS*********************/
//	File: utils.c
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

bool 		timeout1ms=0;
bool 		timeout10ms=0;
bool		timeout50ms=0;
bool		timeout500ms=0;
bool 		timeout1msISR=0;
bool 		timeout10msISR=0;
bool		timeout50msISR=0;
bool		timeout500msISR=0;
bool 		VR = 1;
bool 		VG = 1;

uint8_t 	counter10ms=0;
uint8_t 	blink=0;
bool 	S1[3];
bool 	S2[3];
bool 	S3[3];

bool 	S1_IN=0;
bool 	S2_IN=0;
bool 	S3_IN=0;

uint8_t 	dipA[3];	// sw1
uint8_t 	dipB[3];	// sw2
uint8_t 	dipA_IN;
uint8_t		dipB_IN;
uint8_t		dip_IN;
uint16_t	j;
uint8_t i;

/************************************************/
void inputRead(void)
{
	for (i=0;i>=1;i++)
	{
		S1[i] = S1[i+1];
		S2[i] = S2[i+1];
		S3[i] = S3[i+1];
	}
	S1[2]=			((GPIO_ReadInputPin(GPIOC, GPIO_PIN_3))>>3)&0b00000001;
	S2[2]=			((GPIO_ReadInputPin(GPIOB, GPIO_PIN_4))>>4)&0b00000001;	
	S3[2]=			((GPIO_ReadInputPin(GPIOB, GPIO_PIN_5))>>5)&0b00000001;	
	if ((S1[2]==S1[1])&&(S1[1]==S1[0]))
	{
		S1_IN = S1[2];
	}
	if ((S2[2]==S2[1])&&(S2[1]==S2[0]))
	{
		S2_IN = S2[2];
	}	
	if ((S3[2]==S3[1])&&(S3[1]==S3[0]))
	{
		S3_IN = S2[2];
	}		
}

uint8_t dipRead(uint8_t type)
{
	switch (type)
	{
		case 0:
			dipA[0] = !(((GPIO_ReadInputPin(GPIOD, GPIO_PIN_6))>>6)&0b00000001);
			dipA[1] = !(((GPIO_ReadInputPin(GPIOD, GPIO_PIN_5))>>5)&0b00000001);
			dipA[2] = !(((GPIO_ReadInputPin(GPIOD, GPIO_PIN_4))>>4)&0b00000001);
			dip_IN = (dipA[0]+(dipA[1]<<1)+(dipA[2]<<2));
		break;
		
		case 1:
			dipB[0] = !(((GPIO_ReadInputPin(GPIOC, GPIO_PIN_7))>>7)&0b00000001);
			dipB[1] = !(((GPIO_ReadInputPin(GPIOC, GPIO_PIN_6))>>6)&0b00000001);
			dipB[2] = !(((GPIO_ReadInputPin(GPIOC, GPIO_PIN_5))>>5)&0b00000001);			
			dip_IN = (dipB[0]+(dipB[1]<<1)+(dipB[2]<<2));
			dip_IN = dip_IN + 8;
		break;		
	}
	return dip_IN;
}

void UpdateTask(void)
{
  if (timeout500msISR)
	{
		timeout500ms = 1;
		timeout500msISR = 0;
	}
	else timeout500ms = 0;
	
  if (timeout50msISR)
	{
		timeout50ms = 1;
		timeout50msISR = 0;
	}
	else timeout50ms = 0;
	
  if (timeout10msISR)
	{
		timeout10ms = 1;
		timeout10msISR = 0;
	}
	else timeout10ms = 0;
	
	if (timeout1msISR)
	{
		timeout1ms = 1;
		timeout1msISR = 0;
	}
	else timeout1ms = 0;
}

void init_setup(void)
{
	clock_setup();
	GPIO_setup();
//	setAlternateBit();
//	Read_Protect_Flash();
	TIM1_setup();
	TIM2_setup();
	TIM4_setup();
	enableInterrupts();
	init_u_Port();
	for(j=0;j<50000;j++)	//circuits power up
	{nop();}
}

/***************************END OF FILE*********************/
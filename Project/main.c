//***********************MAIN*********************/
//	File: main.c
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

uint8_t	mainFsm=1;

uint8_t S1_enable=0;
uint8_t S2_enable=0;

uint8_t SndDip=1;

uint16_t debugCnt=0;
uint16_t RAW_Data=0;

void main(void)
{
	init_setup();
	while(1)
	{
		if (timeout500ms)
		{
			//nothing to do
		}
		
		if (timeout50ms)
		{
			inputRead();
		}
	
		if (timeout10ms)
		{
			//RAW_data = readADC1(ADC1_CHANNEL_4);//ADC1_GetConversionValue();
			switch (mainFsm)
			{
				case SELCFG:
				if ((S1_IN==1) && (S2_IN==1))
				{
					S1_enable 	= 0;
					S2_enable 	= 0;
				}
				
				if ((S1_IN==0) && (S2_IN==1))
				{ 
					S1_enable 	= 1;
					S2_enable 	= 0;
					SndDip = dipRead(0);
				}
				
				if ((S1_IN==1) && (S2_IN==0))
				{ 
					S1_enable 	= 0;
					S2_enable 	= 1;
					SndDip = dipRead(1);
				}				
				
				mainFsm=RUN;
				break;
				
				case RUN:
				if(timeout10ms)
				{
					mainFsm=SELCFG;
				}
				break;
			}
		}
		UpdateTask();			
	}
}

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/

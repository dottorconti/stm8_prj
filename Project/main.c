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

bool 				flagCFG1=0;
bool 				flagCFG2=0;
bool 				flagCFG3=0;

uint16_t		cntCheck=0;
uint8_t			mainFsm=1;//SEL_LED_TYPE;

uint8_t S1_enable=0;
uint8_t S2_enable=0;

uint8_t SndDip=1;


uint16_t debugCnt=0;
uint16_t RAW_Data=0;
/***********************MAIN*********************/

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
		//	ADC1_StartConversion();		
		}
	
		if (timeout10ms)
		{
			//RAW_data = readADC1(ADC1_CHANNEL_4);//ADC1_GetConversionValue();
			switch (mainFsm)
			{
				case SELCFG: 			//SELEZIONA CONFIGURAZIONE
				if ((S1_IN==0) && (S2_IN==0))
				{
					S1_enable 	= 0;
					S2_enable 	= 0;
					caseCnt 		= 0;
				}
				
				if ((S1_IN==1) && (S2_IN==0))
				{ 
					duty = 50; 
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

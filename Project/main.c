/* ------------------------------------------------------------------
File:     EOS S

Elenco Funzioni: 
Seleziona il Colore con SW2 ( rosso, verde, blu, ambra, bianco, magenta, giallo, ciano) e memorizzo sul canale scelto.
Selezioni intensità del colore premendo SW2 per 1s e memorizzo sul canale scelto.
Seleziona la tipologia di lampeggio con SW1 (monolampo, triplolampo, cinque lampi, random,fisso) e memorizzo sul canale scelto.
Resetto tutte le impostazioni sui canali premendo lo SW1 per 5s

Note: 
1) 

Data:     03/08/2018
Rev:      Rev7_23
Autore:   Patrizia Perrucci
e-mail:   xxx@xxx.xxx
Tel:      (+39)011
------------------------------------------------------------------ */

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

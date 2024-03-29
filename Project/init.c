//***********************INIT*********************/
//	File: init.c
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

void clock_setup(void) 
{
	CLK_DeInit();
	CLK_HSECmd(DISABLE);
	CLK_LSICmd(DISABLE);
	CLK_HSICmd(ENABLE);
	while(CLK_GetFlagStatus(CLK_FLAG_HSIRDY) == FALSE);
	CLK_ClockSwitchCmd(ENABLE);
	CLK_HSIPrescalerConfig(CLK_PRESCALER_HSIDIV1);
	CLK_SYSCLKConfig(CLK_PRESCALER_CPUDIV1);
	CLK_ClockSwitchConfig(CLK_SWITCHMODE_AUTO, CLK_SOURCE_HSI,
	DISABLE, CLK_CURRENTCLOCKSTATE_ENABLE);
	CLK_PeripheralClockConfig(CLK_PERIPHERAL_SPI, DISABLE);
	CLK_PeripheralClockConfig(CLK_PERIPHERAL_I2C, DISABLE);
	CLK_PeripheralClockConfig(CLK_PERIPHERAL_ADC, ENABLE);
	CLK_PeripheralClockConfig(CLK_PERIPHERAL_AWU, DISABLE);
	CLK_PeripheralClockConfig(CLK_PERIPHERAL_UART1, DISABLE);
	CLK_PeripheralClockConfig(CLK_PERIPHERAL_TIMER1, ENABLE);
	CLK_PeripheralClockConfig(CLK_PERIPHERAL_TIMER2, ENABLE);
	CLK_PeripheralClockConfig(CLK_PERIPHERAL_TIMER4, ENABLE);
}

void GPIO_setup(void) 
{
	GPIO_DeInit(GPIOA);
	GPIO_DeInit(GPIOB);
	GPIO_DeInit(GPIOC);
	GPIO_DeInit(GPIOD);
	
//	EXTI_SetExtIntSensitivity(EXTI_PORT_GPIOD,EXTI_SENSITIVITY_RISE_FALL);

/****************************************************************
*	allowed confiurations:
*	GPIO_Init(GPIOx, GPIO_PIN_x,[CONFIG]);
*	Output 				==>	GPIO_MODE_OUT_PP_LOW_SLOW
*	Input No IRQ 	==>	GPIO_MODE_IN_FL_NO_IT
*	Input IRQ			==>	GPIO_MODE_IN_FL_IT
****************************************************************/


	GPIO_Init(GPIOA, GPIO_PIN_1, GPIO_MODE_IN_FL_NO_IT); 	// not used 
	GPIO_Init(GPIOA, GPIO_PIN_2, GPIO_MODE_IN_FL_NO_IT); 			// not used
	GPIO_Init(GPIOA, GPIO_PIN_3, GPIO_MODE_IN_FL_NO_IT);	// not used

	GPIO_Init(GPIOB, GPIO_PIN_4, GPIO_MODE_IN_FL_NO_IT);				// in_a
	GPIO_Init(GPIOB, GPIO_PIN_5, GPIO_MODE_IN_FL_NO_IT);				// in_b
	
	GPIO_Init(GPIOC, GPIO_PIN_3, GPIO_MODE_IN_FL_NO_IT);				// in_flash
	GPIO_Init(GPIOC, GPIO_PIN_4, GPIO_MODE_IN_FL_NO_IT);			// not used
	GPIO_Init(GPIOC, GPIO_PIN_5, GPIO_MODE_IN_FL_NO_IT);		// sw2_3
	GPIO_Init(GPIOC, GPIO_PIN_6, GPIO_MODE_IN_FL_NO_IT);		// sw2_2
	GPIO_Init(GPIOC, GPIO_PIN_7, GPIO_MODE_IN_FL_NO_IT);				// sw2_1
	GPIO_Init(GPIOC, GPIO_PIN_4, GPIO_MODE_OUT_PP_LOW_SLOW);// pwm sound out (TIM1_CH4)

	GPIO_Init(GPIOD, GPIO_PIN_1, GPIO_MODE_IN_FL_NO_IT);		// not used
	GPIO_Init(GPIOD, GPIO_PIN_2, GPIO_MODE_IN_FL_NO_IT);		// not used
	GPIO_Init(GPIOD, GPIO_PIN_3, GPIO_MODE_IN_FL_NO_IT);    // out flash
	GPIO_Init(GPIOD, GPIO_PIN_4, GPIO_MODE_IN_FL_NO_IT);  	// sw1_3
	GPIO_Init(GPIOD, GPIO_PIN_5, GPIO_MODE_IN_FL_NO_IT); 		// sw1_2
	GPIO_Init(GPIOD, GPIO_PIN_6, GPIO_MODE_IN_FL_NO_IT);		// sw1_1
}

void TIM1_setup(void)
{
	TIM1_DeInit();
	TIM1_TimeBaseInit(TIM1_ICPSC_DIV2,TIM1_COUNTERMODE_UP,8000,0);
/*	
	TIM1_SelectOCxM(TIM1_CHANNEL_1, TIM1_OCMODE_PWM2); // OUT3
	TIM1_OC1Init(TIM1_OCMODE_PWM2, TIM1_OUTPUTSTATE_ENABLE, TIM1_OUTPUTNSTATE_DISABLE, 0, TIM1_OCPOLARITY_LOW, TIM1_OCNPOLARITY_LOW, TIM1_OCIDLESTATE_SET,TIM1_OCNIDLESTATE_RESET);
	TIM1_OC1PreloadConfig(ENABLE);
	
	TIM1_SelectOCxM(TIM1_CHANNEL_2, TIM1_OCMODE_PWM2); // OUT4
	TIM1_OC2Init(TIM1_OCMODE_PWM2, TIM1_OUTPUTSTATE_ENABLE, TIM1_OUTPUTNSTATE_DISABLE, 0, TIM1_OCPOLARITY_LOW, TIM1_OCNPOLARITY_LOW, TIM1_OCIDLESTATE_SET,TIM1_OCNIDLESTATE_RESET);
	TIM1_OC2PreloadConfig(ENABLE);

	TIM1_SelectOCxM(TIM1_CHANNEL_3, TIM1_OCMODE_PWM2); // OUT1
	TIM1_OC3Init(TIM1_OCMODE_PWM2, TIM1_OUTPUTSTATE_ENABLE, TIM1_OUTPUTNSTATE_DISABLE,0, TIM1_OCPOLARITY_LOW, TIM1_OCNPOLARITY_LOW, TIM1_OCIDLESTATE_SET,TIM1_OCNIDLESTATE_RESET);
	TIM1_OC3PreloadConfig(ENABLE);
*/	
	TIM1_SelectOCxM(TIM1_CHANNEL_4, TIM1_OCMODE_PWM2); // OUT2
	TIM1_OC4Init(TIM1_OCMODE_PWM2, TIM1_OUTPUTSTATE_ENABLE,0, TIM1_OCPOLARITY_LOW, TIM1_OCIDLESTATE_SET);
	TIM1_OC4PreloadConfig(ENABLE);


	TIM1_ARRPreloadConfig(ENABLE);
	TIM1_Cmd(ENABLE);
	TIM1_CtrlPWMOutputs(ENABLE);
}

void TIM2_setup(void)
{
	TIM2_DeInit();
	TIM2_SetCounter(0x00);
	TIM2_TimeBaseInit(TIM2_PRESCALER_256, 625);	// 10ms
	TIM2_ITConfig(TIM2_IT_UPDATE,ENABLE);
	TIM2_Cmd(ENABLE);
}

void TIM4_setup(void)
{
	TIM4_DeInit();
	TIM4_SetCounter(0x00);
	TIM4_ClearFlag(TIM4_IT_UPDATE);
	TIM4_ClearITPendingBit(TIM4_IT_UPDATE);
	TIM4_PrescalerConfig(TIM4_PRESCALER_128, TIM4_PSCRELOADMODE_UPDATE);
	TIM4_TimeBaseInit(TIM4_PRESCALER_128, 125);
	TIM4_ITConfig(TIM4_IT_UPDATE, ENABLE);
	TIM4_Cmd(ENABLE);
}

void init_u_Port(void)
{
	GPIO_WriteLow(GPIOA, GPIO_PIN_3);	
}

void setAlternateBit(void)
{
		uint16_t stored_data = FLASH_ReadOptionByte(OPTION_BYTE_AFR);

		if( ( FLASH_OPTIONBYTE_ERROR == stored_data ) ||
			( AFR0 != (uint8_t)( stored_data>>8 ) ) )
			{
				FLASH_Unlock(FLASH_MEMTYPE_DATA);
				FLASH_EraseOptionByte(OPTION_BYTE_AFR);
				FLASH_ProgramOptionByte(OPTION_BYTE_AFR, AFR0);
				FLASH_Lock(FLASH_MEMTYPE_DATA);
			
				/* Use the watchdog to reset the device to enable the feature */
				IWDG->KR = IWDG_KEY_ENABLE;
				while(1);
			}
}

void ADC_setup(uint8_t ch_sel)
{
	ADC1_DeInit();	

	ADC1_Init(ADC1_CONVERSIONMODE_SINGLE,
						ch_sel,
						ADC1_PRESSEL_FCPU_D4,
						ADC1_EXTTRIG_GPIO,
						DISABLE,
						ADC1_ALIGN_RIGHT,
						ch_sel,
						DISABLE);
						
	ADC1_ITConfig(ADC1_IT_EOCIE, ENABLE);
}

void Read_Protect_Flash(void)
{
    FLASH_SetProgrammingTime(FLASH_PROGRAMTIME_STANDARD);
    while(FLASH_ReadOptionByte(0x4800) != 0xAA)
    {
        FLASH_Unlock(FLASH_MEMTYPE_DATA);

        FLASH_EraseOptionByte(0x4800);
        FLASH_ProgramOptionByte(0x4800, 0xAA);

        FLASH_Lock(FLASH_MEMTYPE_DATA);
    }
}

#ifdef USE_FULL_ASSERT

/**
  * @brief  Reports the name of the source file and the source line number
  *   where the assert_param error has occurred.
  * @param file: pointer to the source file name
  * @param line: assert_param error line source number
  * @retval None
  */
void assert_failed(uint8_t* file, uint32_t line)
{ 
  /* User can add his own implementation to report the file name and line number,
     ex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */

  /* Infinite loop */
  while (1)
  {
  }
}
#endif


/***************************END OF FILE****************************/
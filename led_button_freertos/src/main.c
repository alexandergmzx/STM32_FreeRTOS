/**
  ******************************************************************************
  * @file    main.c
  * @author  Alexandergmzx
  * @version V1.0
  * @date    11-October-2020
  * @brief   Default main function.
  ******************************************************************************
*/

#include "stm32f4xx_it.h"

#include "FreeRTOS.h"
#include "task.h"

#include <stdio.h>
#include <string.h>
			
volatile uint8_t UART_ACCESS_KEY = 1;

#define AVAILABLE 1
#define NOT_AVAILABLE 0
#define PRESSED 1
#define NOT_PRESSED 0

void LED_task_handler(void *params);
void button_task_handler(void *params);

void RCC_DeInit(void);

static void prvSetupUART(void);
static void prvSetupBoardLED(void);
static void prvSetupButton(void);
static void prvSetupHardware(void);

void printmsg(char *msg);

char mensaje[100] = "Hola mundo a todos \r\n";

char usr_msg[250];

volatile uint8_t button_status = NOT_PRESSED;

int main(void)
{
  DWT->CTRL |= (1 << 0);// Enable CYCCNT in DWT_CTRL for SEGGER
  //printf("\r\nThis is hello world \n\r");
  // To use the bare HSI clock, for this exercise, the PLL will be turned off
  RCC_DeInit();
  // Then update the SystemCoreClock variable
  SystemCoreClockUpdate();
  //Set the hardware peripherals
  prvSetupHardware();

  sprintf(usr_msg,"\r\nThis is a test for the board button and leds \r\n");
  printmsg(usr_msg);;

  // Start Recording
  SEGGER_SYSVIEW_Conf();
  SEGGER_SYSVIEW_Start();

  // Create the tasks
  xTaskCreate(LED_task_handler,
							"LED-tasko",
							configMINIMAL_STACK_SIZE,
							NULL,
							1,
							NULL);
  // Create the tasks

  xTaskCreate(button_task_handler,
							"button-tasko",
							configMINIMAL_STACK_SIZE,
							( void * ) NULL,
							1,
							NULL);

  //Start the sheduler
  vTaskStartScheduler();
	//for(;;);
}

void LED_task_handler(void *params)
{
  while(1){
	  GPIO_WriteBit(GPIOB, GPIO_Pin_7, button_status);
	  GPIO_WriteBit(GPIOB, GPIO_Pin_0, !button_status);
	  GPIO_WriteBit(GPIOB,GPIO_Pin_14, !button_status);
  }

}

void button_task_handler(void *params)
{
  while(1){
	  button_status = GPIO_ReadInputDataBit(GPIOC, GPIO_Pin_13);
  }

}

static void prvSetupUART(void){

	GPIO_InitTypeDef gpio_uart_pins;

	// Enable the clock for the USART3 and the GPIOD
	RCC_APB1PeriphClockCmd(RCC_APB1Periph_USART3, ENABLE);
	RCC_AHB1PeriphClockCmd(RCC_AHB1Periph_GPIOD, ENABLE);
	//PD8 is TX, PD9 is RX
	gpio_uart_pins.GPIO_Pin = GPIO_Pin_8 | GPIO_Pin_9;
	gpio_uart_pins.GPIO_Mode = GPIO_Mode_AF;
	gpio_uart_pins.GPIO_PuPd = GPIO_PuPd_UP;
	GPIO_Init(GPIOD, &gpio_uart_pins);

	// AF Mode settings
	GPIO_PinAFConfig(GPIOD, GPIO_PinSource8, GPIO_AF_USART3);// PD8
	GPIO_PinAFConfig(GPIOD, GPIO_PinSource9, GPIO_AF_USART3);// PD9

	// Initialize the USART3
	USART_InitTypeDef uart3_init;
	uart3_init.USART_BaudRate = 115200;
	uart3_init.USART_HardwareFlowControl = USART_HardwareFlowControl_None;
	uart3_init.USART_Mode = USART_Mode_Rx | USART_Mode_Tx;
	uart3_init.USART_Parity = USART_Parity_No;
	uart3_init.USART_StopBits = USART_StopBits_1;
	uart3_init.USART_WordLength = USART_WordLength_8b;

	USART_Init(USART3, &uart3_init);

	USART_Cmd(USART3, ENABLE);
}

static void prvSetupButton(void){

	GPIO_InitTypeDef gpio_button_pins;
	// button pin is PC13
	RCC_AHB1PeriphClockCmd(RCC_AHB1Periph_GPIOC, ENABLE);
	gpio_button_pins.GPIO_Pin = GPIO_Pin_13;
	gpio_button_pins.GPIO_Mode = GPIO_Mode_IN;
	gpio_button_pins.GPIO_PuPd = GPIO_PuPd_DOWN;
	GPIO_Init(GPIOC, &gpio_button_pins);
}

static void prvSetupBoardLED(void){

	GPIO_InitTypeDef gpio_LED_pins;
	// leds pins are PB00, PB07 & PB14
	RCC_AHB1PeriphClockCmd(RCC_AHB1Periph_GPIOB, ENABLE);
	gpio_LED_pins.GPIO_Pin = GPIO_Pin_0 | GPIO_Pin_7 | GPIO_Pin_14;
	gpio_LED_pins.GPIO_Mode = GPIO_Mode_OUT;
	gpio_LED_pins.GPIO_PuPd = GPIO_PuPd_NOPULL;
	GPIO_Init(GPIOB, &gpio_LED_pins);
}

static void prvSetupHardware(void){
	RCC_APB2PeriphClockCmd(RCC_APB2Periph_SYSCFG, ENABLE);
	prvSetupUART();
	prvSetupButton();
	prvSetupBoardLED();
}


void printmsg(char *msg){
	for (uint32_t i = 0; i < strlen(msg); ++i) {
		while( USART_GetFlagStatus( USART3, USART_FLAG_TXE ) != SET);
		USART_SendData(USART3, msg[i]);
	}
}

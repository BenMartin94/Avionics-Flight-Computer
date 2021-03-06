#ifndef FIXED_TIMER_H
#define FIXED_TIMER_H
//-------------------------------------------------------------------------------------------------------------------------------------------------------------
// UMSATS 2018-2020
//
// Repository:
//  UMSATS Google Drive: UMSATS/Guides and HowTos.../Command and Data Handling (CDH)/Coding Standards
//
// File Description:
//  Template header file for C / C++ projects. Unused sections can be deleted.
//
// History
// 2019-03-13 by Benjamin Zacharias
// - Created.
//-------------------------------------------------------------------------------------------------------------------------------------------------------------

//-------------------------------------------------------------------------------------------------------------------------------------------------------------
// INCLUDES
//-------------------------------------------------------------------------------------------------------------------------------------------------------------
#include <stm32f4xx_hal_uart_io.h> // this was in the xtract includes. Not sure if necessary
#include "recovery.h"
#include "configuration.h"
//-------------------------------------------------------------------------------------------------------------------------------------------------------------
// DEFINITIONS AND MACROS
//-------------------------------------------------------------------------------------------------------------------------------------------------------------

//-------------------------------------------------------------------------------------------------------------------------------------------------------------
// ENUMS AND ENUM TYPEDEFS
//-------------------------------------------------------------------------------------------------------------------------------------------------------------

//-------------------------------------------------------------------------------------------------------------------------------------------------------------
// STRUCTS AND STRUCT TYPEDEFS
//-------------------------------------------------------------------------------------------------------------------------------------------------------------

//-------------------------------------------------------------------------------------------------------------------------------------------------------------
// TYPEDEFS
//-------------------------------------------------------------------------------------------------------------------------------------------------------------

//-------------------------------------------------------------------------------------------------------------------------------------------------------------
// CONSTANTS
//-------------------------------------------------------------------------------------------------------------------------------------------------------------
#define TIME_INTERVAL1 30000 // drogue 30 seconds.
#define TIME_INTERVAL2 155000	//150 seconds
#define TIME_INTERVAL3 3000 //3s
#define TIME_INTERVAL4 200	//200ms
//input for timer: default user button
//TODO use official pin variables from a file
#define INPUT_PIN GPIO_PIN_13
#define INPUT_PORT GPIOC
//output1 for timer: default on board LD2
#define OUTPUT1_PIN GPIO_PIN_5
#define OUTPUT1_PORT GPIOA
//output2 for timer: right now is the same as output 1
#define OUTPUT2_PIN GPIO_PIN_5
#define OUTPUT2_PORT GPIOA
//-------------------------------------------------------------------------------------------------------------------------------------------------------------
// FUNCTION PROTOTYPES
//-------------------------------------------------------------------------------------------------------------------------------------------------------------
//-------------------------------------------------------------------------------------------------------------------------------------------------------------
// Description:
//  Enter description for public function here.
//
// Returns:
//  Enter description of return values (if any).
//-------------------------------------------------------------------------------------------------------------------------------------------------------------
void Timer_GPIO_Init(void);
void vTask_timer(void *param);

#endif // TIMER_H

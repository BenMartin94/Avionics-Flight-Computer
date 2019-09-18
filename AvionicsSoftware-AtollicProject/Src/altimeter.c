//-------------------------------------------------------------------------------------------------------------------------------------------------------------
// UMSATS 2018-2020
//
// Repository:
//  UMSATS > Avionics 2019
//
// File Description:
//  Altimeter readings interface
//
// History
// 2019-04-01 by Eric Kapilik
// - Created.
//-------------------------------------------------------------------------------------------------------------------------------------------------------------

//-------------------------------------------------------------------------------------------------------------------------------------------------------------
// INCLUDES
//-------------------------------------------------------------------------------------------------------------------------------------------------------------
#include "altimeter.h"
#include <math.h>

//-------------------------------------------------------------------------------------------------------------------------------------------------------------
// DEFINITIONS AND MACROS
//-------------------------------------------------------------------------------------------------------------------------------------------------------------
//static char buf[128];
//static UART_HandleTypeDef* uart;
//-------------------------------------------------------------------------------------------------------------------------------------------------------------
// ENUMS AND ENUM TYPEDEFS
//-------------------------------------------------------------------------------------------------------------------------------------------------------------

//-------------------------------------------------------------------------------------------------------------------------------------------------------------
// CONSTANTS
//-------------------------------------------------------------------------------------------------------------------------------------------------------------

//-------------------------------------------------------------------------------------------------------------------------------------------------------------
// STRUCTS AND STRUCT TYPEDEFS
//-------------------------------------------------------------------------------------------------------------------------------------------------------------

//-------------------------------------------------------------------------------------------------------------------------------------------------------------
// TYPEDEFS
//-------------------------------------------------------------------------------------------------------------------------------------------------------------

//-------------------------------------------------------------------------------------------------------------------------------------------------------------
// FUNCTION PROTOTYPES
//-------------------------------------------------------------------------------------------------------------------------------------------------------------

//-------------------------------------------------------------------------------------------------------------------------------------------------------------
// FUNCTIONS
//-------------------------------------------------------------------------------------------------------------------------------------------------------------

alt_value altitude_approx(float pressure, float temperature,configData_t * config){
//	double const_exp_term = exp(- (UNIVERSAL_GAS_CONST * lapse_rate_static) / (GRAVITATIONAL_CONST * MOLAR_MASS_AIR));
//	double temp_term = temperature / lapse_rate_static;
//	double press_term = (pressure / reference_pressure) * const_exp_term - 1;
//	return (temp_term * press_term) + reference_altitude;
	float p_term = pow((config->values.ref_pres/(pressure/100)),(1/5.257F))-1;
	float t_term = (temperature/100)+273.15F;
	alt_value result;
	result.float_val =(p_term*t_term)/0.0065F+config->values.ref_alt;
	return result;

}

//void vTask_altimeter(void *pvParameters){
//	int rslt;
//
//    uart = (UART_HandleTypeDef*) pvParameters; //Get uart for printing to console
//
//	bmp280_sensor* bmp280 = malloc(sizeof(bmp280_sensor));
//	rslt = init_bmp280_sensor(bmp280);
//
//    uint32_t temp32;
//    uint32_t pres32;
//    float altitude;
//
//    while(1){
//    	pres32 = bmp280_get_press(bmp280);
//    	temp32 = bmp280_get_temp(bmp280);
//    	altitude = altitude_approx((float) pres32, (float) temp32);
//
//    	sprintf(buf, "Pressure: %ld [Pa]\tTemperature: %ld [0.01 C]\tAltitude: %f [m]", pres32, temp32, altitude);
//    	transmit_line(uart, buf);
//    	vTaskDelay((TickType_t) 1000);
//    }
//}

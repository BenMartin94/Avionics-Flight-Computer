#ifndef SENSOR_AG_H
#define SENSOR_AG_H
//-------------------------------------------------------------------------------------------------------------------------------------------------------------
// UMSATS 2018-2020
//
// Repository:
//  ?Not this:UMSATS Google Drive: UMSATS/Guides and HowTos.Command and Data Handling (CDH)/Coding Standards
//
// File Description:
//  Reads sensor data for accelerometer and gyroscope from the BMI088
//
// History
// 2019-03-29 by Benjamin Zacharias
// - Created.
//-------------------------------------------------------------------------------------------------------------------------------------------------------------
#include <inttypes.h>
#include <stdbool.h>
#include "configuration.h"
#include "protocols/UART.h"

#define ACC_LENGTH  6 // Length of a accelerometer measurement in bytes.
#define GYRO_LENGTH 6 // Length of a gyroscope measurement in bytes.
#define ICM_ADDRESS 0x68//TODO lol this is prob wrong

//Groups both sensor readings and a time stamp.
uint16_t accel_data[3];
uint16_t gyro_data[3];
int16_t mag_data[3];
typedef struct imu_sensor_data
{
    int16_t    acc_x;
    int16_t    acc_y;
    int16_t    acc_z;
    
    int16_t    gyro_x;
    int16_t    gyro_y;
    int16_t    gyro_z;

    int16_t    mag_x;
    int16_t    mag_y;
    int16_t    mag_z;
    
    uint32_t   time_ticks; // time of sensor reading in ticks.
}imu_sensor_data;

//-------------------------------------------------------------------------------------------------------------------------------------------------------------
// Description:
//  Enter description for public function here.
//
// Returns:
//  Enter description of return values (if any).
//-------------------------------------------------------------------------------------------------------------------------------------------------------------

#define USER_BANK_SEL	(0x7F)
#define USER_BANK_0		(0x00)
#define USER_BANK_1		(0x10)
#define USER_BANK_2		(0x20)
#define USER_BANK_3		(0x30)

#define PWR_MGMT_1 		(0x06)
#define PWR_MGMT_2		(0x07)
#define GYRO_CONFIG_1	(0x01)


#define CLK_BEST_AVAIL	(0x01)
#define GYRO_RATE_250	(0x00)
#define GYRO_LPF_17HZ 	(0x29)



int imu_sensor_test            ();
int imu_sensor_init            (configuration_data_t * parameters);
void imu_thread_start           (void const *param);
bool imu_read                   (imu_sensor_data * buffer, uint8_t data_rate);
void imu_sensor_data_to_bytes   (imu_sensor_data reading, uint8_t* bytes, uint32_t timestamp);

bool imu_add_measurement        (imu_sensor_data *_data);
void ICM_PowerOn();
uint8_t ICM_WHOAMI(void);
void ICM_SelectBank(uint8_t bank);
void ICM_ReadAccelGyro(void);
void ICM_ReadMag(int16_t magn[3]);
uint16_t ICM_Initialize(void);
void ICM_SelectBank(uint8_t bank);
void ICM_Disable_I2C(void);
void ICM_CSHigh(void);
void ICM_CSLow(void);
void ICM_SetClock(uint8_t clk);
void ICM_AccelGyroOff(void);
void ICM_AccelGyroOn(void);
void ICM_SetGyroRateLPF(uint8_t rate, uint8_t lpf);
void ICM_SetGyroLPF(uint8_t lpf);

#endif // SENSOR_AG_H

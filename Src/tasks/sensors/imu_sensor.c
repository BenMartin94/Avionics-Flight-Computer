//-------------------------------------------------------------------------------------------------------------------------------------------------------------
// UMSATS 2018-2020
//
// Repository:
//  UMSATS Google Drive: UMSATS/Guides and HowTos.../Command and Data Handling (CDH)/Coding Standards
//
// File Description:
//  Reads sensor data for accelerometer and gyroscope from the BMI088
//  On prototype flight computer:
//            +Z is out of the board (perpendicular to board surface when on a table).
//            +X is towards the recovery circuit (away from where the battery connects).
//            +Y is towards the crystal (away from the programming header).
// History
// 2019-03-29 by Benjamin Zacharias
// - Created.
//-------------------------------------------------------------------------------------------------------------------------------------------------------------

//-------------------------------------------------------------------------------------------------------------------------------------------------------------
// INCLUDES
//-------------------------------------------------------------------------------------------------------------------------------------------------------------
#include "imu_sensor.h"
#include "protocols/SPI.h"
#include "configuration.h"
#include "cmsis_os.h"
#include "utilities/common.h"

#define INTERNAL_ERROR -127
#define ACC_TYPE             0x800000
#define GYRO_TYPE            0x400000

#define ACC_BANDWIDTH                   BMI08X_ACCEL_BW_NORMAL
#define ACC_ODR                         BMI08X_ACCEL_ODR_100_HZ
#define ACC_RANGE                       BMI088_ACCEL_RANGE_12G
#define ACC_PWR                         BMI08X_ACCEL_PM_ACTIVE

#define GYRO_BANDWIDTH                  BMI08X_GYRO_BW_23_ODR_200_HZ
#define GYRO_ODR                        BMI08X_GYRO_BW_23_ODR_200_HZ
#define GYRO_RANGE                      BMI08X_GYRO_RANGE_1000_DPS
#define GYRO_PWR                        BMI08X_GYRO_PM_NORMAL


static QueueHandle_t s_queue;

//Wrapper functions for read and write
int8_t user_spi_read (uint8_t dev_addr, uint8_t reg_addr, uint8_t *data, uint16_t len);
int8_t user_spi_write(uint8_t dev_addr, uint8_t reg_addr, uint8_t *data, uint16_t len);

void delay_ms(uint32_t period);

//configuration functions for accelerometer and gyroscope
int8_t accel_config(configuration_data_t * configParams);
int8_t gyro_config (configuration_data_t * configParams);

//TODO probably deprecate



//TODO ABSOLUTELY deprecated
int imu_sensor_init(configuration_data_t * parameters){

    int status = spi3_init();
    if(status != 0)
    {
        return status;
    }

    s_queue = xQueueCreate(10, sizeof(imu_sensor_data));
    if (s_queue == NULL) {
        return 2;
    }

    vQueueAddToRegistry(s_queue, "bmi088_queue");



    return 1;
}


//TODO internals probably need to change
void imu_thread_start(void const *param)
{
    //Get the parameters.
	configuration_data_t * configParams = (configuration_data_t *)param;
    TickType_t prevTime;
    imu_sensor_data dataStruct;

    //main loop: continuously read sensor data
    //vTaskDelay(pdMS_TO_TICKS(100));//Wait so to make sure the other tasks have started.

    prevTime=xTaskGetTickCount();
    
    int8_t result_flag;

    while(1){
        
        ICM_ReadAccelGyro();

        dataStruct.acc_x = accel_data[0],
        dataStruct.acc_y = accel_data[1],
        dataStruct.acc_z = accel_data[2];


        
        dataStruct.gyro_x = gyro_data[0],
        dataStruct.gyro_y = gyro_data[1],
        dataStruct.gyro_z = gyro_data[2];
        
        //I did not double check these indicies, if it looks like the driver is rotated check the datasheet!!!
        
        dataStruct.time_ticks = xTaskGetTickCount();

        imu_add_measurement(&dataStruct);
        vTaskDelayUntil(&prevTime,configParams->values.data_rate);
    }
}
//TODO may not need to change
bool imu_read(imu_sensor_data * buffer, uint8_t data_rate)
{
    return pdPASS == xQueueReceive(s_queue, buffer, data_rate);
}
//TODO probably deprecated...
void imu_sensor_data_to_bytes(imu_sensor_data reading, uint8_t* buffer, uint32_t timestamp)
{
    // Make sure time doesn't overwrite type and event bits.
    uint32_t header = (ACC_TYPE | GYRO_TYPE) + (timestamp & 0x0FFF);
    write_24(header, &buffer[0]);
    write_16(reading.acc_x, &buffer[3]);
    write_16(reading.acc_y, &buffer[5]);
    write_16(reading.acc_z, &buffer[7]);
    write_16(reading.gyro_x, &buffer[9]);
    write_16(reading.gyro_y, &buffer[11]);
    write_16(reading.gyro_z, &buffer[13]);
}

//set the accelerometer starting configurations


//set the accelerometer starting configurations

int8_t user_spi_read(uint8_t dev_addr, uint8_t reg_addr, uint8_t *data, uint16_t len)
{
    int status;
    //debug removeHAL_GPIO_WritePin(USR_LED_PORT,USR_LED_PIN, GPIO_PIN_SET);
    if(dev_addr == 0x00|| dev_addr == 0x1E){
        //Accelerometer.
        if((status = spi3_receive(&reg_addr,1, data, len, 10)) != 0) // The register address will always be 1.
        {
            return status;
        }
    }
    else if(dev_addr == 0x01|| dev_addr == 0x0F){
//        //Gyroscope.
        if((status = spi3_receive(&reg_addr,1, data, len, 11)) != 0) // The register address will always be 1.
        {
            return status;
        }
    }
    else if(dev_addr = ICM_ADDRESS){
        if((status = spi3_receive(&reg_addr,1, data, len, 11)) != 0)
        {
            return status;
        }
    }

    //delay_ms(500);
    //HAL_GPIO_WritePin(USR_LED_PORT,USR_LED_PIN, GPIO_PIN_RESET);
    //delay_ms(500);
    return 1;
}
int8_t user_spi_write(uint8_t dev_addr, uint8_t reg_addr, uint8_t *data, uint16_t len){

    if(dev_addr == 0x00 || dev_addr == 0x1E){
    spi3_send(&reg_addr,1, data, len, 10);
    }
    else if(dev_addr == 0x01 || dev_addr == 0x0F){
        spi3_send(&reg_addr,1, data, len, 11);
    }
    else if(dev_addr = ICM_ADDRESS){
        spi3_send(&reg_addr,1, data, sizeof(data), 11);

    }
    return 1;
}

void delay_ms(uint32_t period)
{
    vTaskDelay(pdMS_TO_TICKS(period)); // wait for the given amount of milliseconds
}

int imu_sensor_test()
{
//    int8_t result;
//    result = bmi08a_perform_selftest(s_bmp3_sensor->bmi088_ptr);
//    if(result != BMI08X_OK)
//        return false;
//
//    result = bmi08g_perform_selftest(s_bmp3_sensor->bmi088_ptr);
//    if(result != BMI08X_OK)
//        return false;
    
    uint8_t res = 0;
    uint8_t id = 0xEA;
    res = ICM_WHOAMI();
    if(res == id)
        return 1;
    /* OLD STUFF
    uint8_t command[] = {0x80};
    uint8_t id_read[] = {0x00,0x00,0x00,0x00};
    uint8_t id_dummy[] = {0x00,0x00};
    read
    
    spi3_receive(command,1,id_dummy,2,10);
    spi3_receive(command,1,id_read,2,10);
    
    if(id_read[1] == id)
    {
        res += 1;
    }
    
    spi3_receive(command,1,id_read,2,11);
    
    if(id_read[0] == 0x0F)
    {
        res += 1;
    }
    
    if(res == 2)
    {
        return 1;
    }*/
    
    return 0;
}
bool imu_add_measurement (imu_sensor_data * _data)
{
    return pdTRUE == xQueueSend(s_queue, _data,1);
}

//start of new stuff
//___________________________________________________________________________________________________
void ICM_readBytes(uint8_t reg, uint8_t *pData, uint16_t Size) // ***
{
    reg = reg | 0x80;
    user_spi_read(ICM_ADDRESS, &reg, pData, Size);
}
void ICM_WriteBytes(uint8_t reg, uint8_t *pData, uint16_t Size) // ***
{
    reg = reg & 0x7F;
    user_spi_write(ICM_ADDRESS, &reg, pData, Size);

}
void ICM_ReadOneByte(uint8_t reg, uint8_t* pData) // ***
{
    reg = reg | 0x80;
    ICM_readBytes(reg, pData, 1);
}
void ICM_WriteOneByte(uint8_t reg, uint8_t Data) // ***
{
    reg = reg & 0x7F;
    ICM_WriteBytes(reg, &Data, 1);
}
/*
 *
 * AUX I2C abstraction for magnetometer
 *
 */
void i2c_Mag_write(uint8_t reg,uint8_t value)
{
    ICM_WriteOneByte(0x7F, 0x30);

    HAL_Delay(1);
    ICM_WriteOneByte(0x03 ,0x0C);//mode: write

    HAL_Delay(1);
    ICM_WriteOneByte(0x04 ,reg);//set reg addr

    HAL_Delay(1);
    ICM_WriteOneByte(0x06 ,value);//send value

    HAL_Delay(1);
}

static uint8_t ICM_Mag_Read(uint8_t reg)
{
    uint8_t  Data;
    ICM_WriteOneByte(0x7F, 0x30);
    HAL_Delay(1);
    ICM_WriteOneByte(0x03 ,0x0C|0x80);
    HAL_Delay(1);
    ICM_WriteOneByte(0x04 ,reg);// set reg addr
    HAL_Delay(1);
    ICM_WriteOneByte(0x06 ,0xff);//read
    HAL_Delay(1);
    ICM_WriteOneByte(0x7F, 0x00);
    ICM_ReadOneByte(0x3B,&Data);
    HAL_Delay(1);
    return Data;
}

void ICM20948_READ_MAG(int16_t magn[3])
{
    uint8_t mag_buffer[10];

    mag_buffer[0] =ICM_Mag_Read(0x01);

    mag_buffer[1] =ICM_Mag_Read(0x11);
    mag_buffer[2] =ICM_Mag_Read(0x12);
    magn[0]=mag_buffer[1]|mag_buffer[2]<<8;
    mag_buffer[3] =ICM_Mag_Read(0x13);
    mag_buffer[4] =ICM_Mag_Read(0x14);
    magn[1]=mag_buffer[3]|mag_buffer[4]<<8;
    mag_buffer[5] =ICM_Mag_Read(0x15);
    mag_buffer[6] =ICM_Mag_Read(0x16);
    magn[2]=mag_buffer[5]|mag_buffer[6]<<8;

    i2c_Mag_write(0x31,0x01);
}

/*
 *
 * Read magnetometer
 *
 */
void ICM_ReadMag(int16_t magn[3]) {
    uint8_t mag_buffer[10];

    mag_buffer[0] =ICM_Mag_Read(0x01);

    mag_buffer[1] =ICM_Mag_Read(0x11);
    mag_buffer[2] =ICM_Mag_Read(0x12);
    magn[0]=mag_buffer[1]|mag_buffer[2]<<8;
    mag_buffer[3] =ICM_Mag_Read(0x13);
    mag_buffer[4] =ICM_Mag_Read(0x14);
    magn[1]=mag_buffer[3]|mag_buffer[4]<<8;
    mag_buffer[5] =ICM_Mag_Read(0x15);
    mag_buffer[6] =ICM_Mag_Read(0x16);
    magn[2]=mag_buffer[5]|mag_buffer[6]<<8;

    i2c_Mag_write(0x31,0x01);
}
/*
 *
 * Sequence to setup ICM290948 as early as possible after power on
 *
 */
void ICM_PowerOn(void) {
    char uart_buffer[200];
    uint8_t whoami = 0xEA;
    uint8_t test = ICM_WHOAMI();
    //if (test == whoami) {
    ICM_CSHigh();
    HAL_Delay(10);
    ICM_SelectBank(USER_BANK_0);
    HAL_Delay(10);
    ICM_Disable_I2C();
    HAL_Delay(10);
    ICM_SetClock((uint8_t)CLK_BEST_AVAIL);
    HAL_Delay(10);
    ICM_AccelGyroOff();
    HAL_Delay(20);
    ICM_AccelGyroOn();
    HAL_Delay(10);
    ICM_Initialize();
    //} else {
    //sprintf(uart_buffer, "Failed WHO_AM_I.  %i is not 0xEA\r\n", test);
    //HAL_UART_Transmit_DMA(UART_BUS, (uint8_t*) uart_buffer, strlen(uart_buffer));
    //HAL_Delay(100);
    //}
}
uint16_t ICM_Initialize(void) {
    ICM_SelectBank(USER_BANK_2);
    HAL_Delay(20);
    ICM_SetGyroRateLPF(GYRO_RATE_250, GYRO_LPF_17HZ);
    HAL_Delay(10);

    // Set gyroscope sample rate to 100hz (0x0A) in GYRO_SMPLRT_DIV register (0x00)
    ICM_WriteOneByte(0x00, 0x0A);
    HAL_Delay(10);

    // Set accelerometer low pass filter to 136hz (0x11) and the rate to 8G (0x04) in register ACCEL_CONFIG (0x14)
    ICM_WriteOneByte(0x14, (0x04 | 0x11));

    // Set accelerometer sample rate to 225hz (0x00) in ACCEL_SMPLRT_DIV_1 register (0x10)
    ICM_WriteOneByte(0x10, 0x00);
    HAL_Delay(10);

    // Set accelerometer sample rate to 100 hz (0x0A) in ACCEL_SMPLRT_DIV_2 register (0x11)
    ICM_WriteOneByte(0x11, 0x0A);
    HAL_Delay(10);

    ICM_SelectBank(USER_BANK_2);
    HAL_Delay(20);

    // Configure AUX_I2C Magnetometer (onboard ICM-20948)
    ICM_WriteOneByte(0x7F, 0x00); // Select user bank 0
    ICM_WriteOneByte(0x0F, 0x30); // INT Pin / Bypass Enable Configuration
    ICM_WriteOneByte(0x03, 0x20); // I2C_MST_EN
    ICM_WriteOneByte(0x7F, 0x30); // Select user bank 3
    ICM_WriteOneByte(0x01, 0x4D); // I2C Master mode and Speed 400 kHz
    ICM_WriteOneByte(0x02, 0x01); // I2C_SLV0 _DLY_ enable
    ICM_WriteOneByte(0x05, 0x81); // enable IIC	and EXT_SENS_DATA==1 Byte

    // Initialize magnetometer
    i2c_Mag_write(0x32, 0x01); // Reset AK8963
    HAL_Delay(1000);
    i2c_Mag_write(0x31, 0x02); // use i2c to set AK8963 working on Continuous measurement mode1 & 16-bit output
    return 1337;

}

void ICM_ReadAccelGyro(void) {
    uint8_t raw_data[12];
    ICM_readBytes(0x2D, raw_data, 12);

    accel_data[0] = (raw_data[0] << 8) | raw_data[1];
    accel_data[1] = (raw_data[2] << 8) | raw_data[3];
    accel_data[2] = (raw_data[4] << 8) | raw_data[5];

    gyro_data[0] = (raw_data[6] << 8) | raw_data[7];
    gyro_data[1] = (raw_data[8] << 8) | raw_data[9];
    gyro_data[2] = (raw_data[10] << 8) | raw_data[11];

    accel_data[0] = accel_data[0] / 8;
    accel_data[1] = accel_data[1] / 8;
    accel_data[2] = accel_data[2] / 8;

    gyro_data[0] = gyro_data[0] / 250;
    gyro_data[1] = gyro_data[1] / 250;
    gyro_data[2] = gyro_data[2] / 250;
}
void ICM_SelectBank(uint8_t bank) {
    ICM_WriteOneByte(USER_BANK_SEL, bank);
}
void ICM_Disable_I2C(void) {
    ICM_WriteOneByte(0x03, 0x78);
}
void ICM_CSHigh(void) {
    //HAL_GPIO_WritePin(ICM_CS_GPIO_Port, ICM_CS_Pin, SET);
}
void ICM_CSLow(void) {
    //HAL_GPIO_WritePin(ICM_CS_GPIO_Port, ICM_CS_Pin, RESET);
}
void ICM_SetClock(uint8_t clk) {
    ICM_WriteOneByte(PWR_MGMT_1, clk);
}
void ICM_AccelGyroOff(void) {
    ICM_WriteOneByte(PWR_MGMT_2, (0x38 | 0x07));
}
void ICM_AccelGyroOn(void) {
    ICM_WriteOneByte(0x07, (0x00 | 0x00));
}
uint8_t ICM_WHOAMI(void) {
    uint8_t spiData = 0x01;
    ICM_ReadOneByte(0x00, &spiData);
    return spiData;
}
void ICM_SetGyroRateLPF(uint8_t rate, uint8_t lpf) {
    ICM_WriteOneByte(GYRO_CONFIG_1, (rate|lpf));
}
/*
 *
 * Read Accelerometer and Gyro data
 *
 */

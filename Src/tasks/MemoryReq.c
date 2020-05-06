//
// Created by Benjo on 2020-04-12.
//

#include <stdint.h>
#include "MemroyReq.h"

uint32_t memoryRequired(){
   uint32_t memoryUsed = 0; //bits
    //prelaunch
    memoryUsed += PRELAUNCH*((GYRO_RATE_PRELAUNCH*GYRO_SIZE) +
            (ACCEL_RATE_PRELAUNCH*ACCEL_SIZE)+
            (MAG_RATE_PRELAUNCH*MAG_SIZE)+
            (PRES_RATE_PRELAUNCH*PRES_SIZE)+
            (TEMP_RATE_PRELAUNCH*TEMP_SIZE)+
            (CONT_RATE_PRELAUNCH*CONT_SIZE)+
            (STATE_RATE_PRELAUNCH*STATE_SIZE));
    //launchtoapo
    memoryUsed += LAUNCHTOAPO*((GYRO_RATE_LAUNCHTOAPO*GYRO_SIZE) +
            (ACCEL_RATE_LAUNCHTOAPO*ACCEL_SIZE)+
            (MAG_RATE_LAUNCHTOAPO*MAG_SIZE)+
            (PRES_RATE_LAUNCHTOAPO*PRES_SIZE)+
            (TEMP_RATE_LAUNCHTOAPO*TEMP_SIZE)+
            (CONT_RATE_LAUNCHTOAPO*CONT_SIZE)+
            (STATE_RATE_LAUNCHTOAPO*STATE_SIZE));
    //apotomain
    memoryUsed += APOTOMAIN*((GYRO_RATE_APOTOMAIN*GYRO_SIZE) +
            (ACCEL_RATE_APOTOMAIN*ACCEL_SIZE)+
            (MAG_RATE_APOTOMAIN*MAG_SIZE)+
            (PRES_RATE_APOTOMAIN*PRES_SIZE)+
            (TEMP_RATE_APOTOMAIN*TEMP_SIZE)+
            (CONT_RATE_APOTOMAIN*CONT_SIZE)+
            (STATE_RATE_APOTOMAIN*STATE_SIZE));
    //maintoground
    memoryUsed += MAINTOGROUND*((GYRO_RATE_MAINTOGROUND*GYRO_SIZE) +
            (ACCEL_RATE_MAINTOGROUND*ACCEL_SIZE)+
            (MAG_RATE_MAINTOGROUND*MAG_SIZE)+
            (PRES_RATE_MAINTOGROUND*PRES_SIZE)+
            (TEMP_RATE_MAINTOGROUND*TEMP_SIZE)+
            (CONT_RATE_MAINTOGROUND*CONT_SIZE)+
            (STATE_RATE_MAINTOGROUND*STATE_SIZE));
    //landed
    memoryUsed += LANDED*((GYRO_RATE_LANDED*GYRO_SIZE) +
            (ACCEL_RATE_LANDED*ACCEL_SIZE)+
            (MAG_RATE_LANDED*MAG_SIZE)+
            (PRES_RATE_LANDED*PRES_SIZE)+
            (TEMP_RATE_LANDED*TEMP_SIZE)+
            (CONT_RATE_LANDED*CONT_SIZE)+
            (STATE_RATE_LANDED*STATE_SIZE));
    return memoryUsed;

}

void partitions(uint32_t addresses[14]){
    uint32_t gyroReq = (PRELAUNCH*(GYRO_RATE_PRELAUNCH*GYRO_SIZE)+LAUNCHTOAPO*(GYRO_RATE_LAUNCHTOAPO*GYRO_SIZE)+
            APOTOMAIN*(GYRO_RATE_APOTOMAIN*GYRO_SIZE)+MAINTOGROUND*(GYRO_RATE_MAINTOGROUND*GYRO_SIZE)+
            LANDED*(GYRO_RATE_LANDED*GYRO_SIZE))/8;
    uint32_t accelReq = (PRELAUNCH*(ACCEL_RATE_PRELAUNCH*ACCEL_SIZE)+LAUNCHTOAPO*(ACCEL_RATE_LAUNCHTOAPO*ACCEL_SIZE)+
                        APOTOMAIN*(ACCEL_RATE_APOTOMAIN*ACCEL_SIZE)+MAINTOGROUND*(ACCEL_RATE_MAINTOGROUND*ACCEL_SIZE)+
                        LANDED*(ACCEL_RATE_LANDED*ACCEL_SIZE))/8;
    uint32_t magReq = (PRELAUNCH*(MAG_RATE_PRELAUNCH*MAG_SIZE)+LAUNCHTOAPO*(MAG_RATE_LAUNCHTOAPO*MAG_SIZE)+
                      APOTOMAIN*(MAG_RATE_APOTOMAIN*MAG_SIZE)+MAINTOGROUND*(MAG_RATE_MAINTOGROUND*MAG_SIZE)+
                      LANDED*(MAG_RATE_LANDED*MAG_SIZE))/8;
    uint32_t presReq = (PRELAUNCH*(PRES_RATE_PRELAUNCH*PRES_SIZE)+LAUNCHTOAPO*(PRES_RATE_LAUNCHTOAPO*PRES_SIZE)+
                       APOTOMAIN*(PRES_RATE_APOTOMAIN*PRES_SIZE)+MAINTOGROUND*(PRES_RATE_MAINTOGROUND*PRES_SIZE)+
                       LANDED*(PRES_RATE_LANDED*PRES_SIZE))/8;
    uint32_t tempReq = (PRELAUNCH*(TEMP_RATE_PRELAUNCH*TEMP_SIZE)+LAUNCHTOAPO*(TEMP_RATE_LAUNCHTOAPO*TEMP_SIZE)+
                       APOTOMAIN*(TEMP_RATE_APOTOMAIN*TEMP_SIZE)+MAINTOGROUND*(TEMP_RATE_MAINTOGROUND*TEMP_SIZE)+
                       LANDED*(TEMP_RATE_LANDED*TEMP_SIZE))/8;
    uint32_t contReq = (PRELAUNCH*(CONT_RATE_PRELAUNCH*CONT_SIZE)+LAUNCHTOAPO*(CONT_RATE_LAUNCHTOAPO*CONT_SIZE)+
                       APOTOMAIN*(CONT_RATE_APOTOMAIN*CONT_SIZE)+MAINTOGROUND*(CONT_RATE_MAINTOGROUND*CONT_SIZE)+
                       LANDED*(CONT_RATE_LANDED*CONT_SIZE))/8;
    uint32_t stateReq = (PRELAUNCH*(STATE_RATE_PRELAUNCH*STATE_SIZE)+LAUNCHTOAPO*(STATE_RATE_LAUNCHTOAPO*STATE_SIZE)+
                        APOTOMAIN*(STATE_RATE_APOTOMAIN*STATE_SIZE)+MAINTOGROUND*(STATE_RATE_MAINTOGROUND*STATE_SIZE)+
                        LANDED*(STATE_RATE_LANDED*STATE_SIZE))/8;

    addresses[0] = 0;//gyro start
    addresses[1] = gyroReq;//gryo end
    addresses[2] = addresses[1]+MEM_BUFFER;//accel start
    addresses[3] = addresses[2]+accelReq;//accel end
    addresses[4] = addresses[3]+MEM_BUFFER;//mag start
    addresses[5] = addresses[4]+magReq;//mag end
    addresses[6] = addresses[5]+MEM_BUFFER;//pres start
    addresses[7] = addresses[6]+presReq;//pres end
    addresses[8] = addresses[7]+MEM_BUFFER;//temp start
    addresses[9] = addresses[8]+tempReq;//temp end
    addresses[10] = addresses[9]+MEM_BUFFER;//cont start
    addresses[11] = addresses[10]+contReq;//cont end
    addresses[12] = addresses[11]+MEM_BUFFER;//state start
    addresses[13] = addresses[12]+stateReq;//state end

}

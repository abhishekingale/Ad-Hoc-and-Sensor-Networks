/*
 * Copyright (c) 2016-2020, Texas Instruments Incorporated
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 *
 * *  Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 *
 * *  Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 *
 * *  Neither the name of Texas Instruments Incorporated nor the names of
 *    its contributors may be used to endorse or promote products derived
 *    from this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
 * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO,
 * THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
 * PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR
 * CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
 * EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
 * PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS;
 * OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
 * WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR
 * OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE,
 * EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */

/*
 *    ======== i2cbmi160.c ========
 *    week 7 final
 */
#include <stdint.h>
#include <stddef.h>
#include <unistd.h>
#include <math.h>

/* Driver Header files */
#include <ti/drivers/GPIO.h>
#include <ti/drivers/I2C.h>

#include <ti/display/Display.h>

/* Module Header */
#include <C:/ti/sail_1_50_00_00/source/ti/sail/bme280/bme280.h>

#include <C:/ti/sail_1_50_00_00/source/ti/sail/bmi160/bmi160.h>

/* Example Header file */
#include "bmi160_support.h"

/* Driver configuration */
#include "ti_drivers_config.h"

/* BME280 */
s32    g_s32ActualTemp   = 0;
u32    g_u32ActualPress  = 0;
u32    g_u32ActualHumity = 0;

I2C_Handle      i2c;
I2C_Params      i2cParams;

Display_Handle display;

extern s32 bme280_data_readout_template(I2C_Handle i2cHndl);

#define acc_magn_size 5
#define not_care_time 15 //16 loops of not caring  @ 300ms delay = about 5 secs
s16 acc_magn[acc_magn_size];
int index = 0;
int count = 0;
bool is_falling = false;

/*
 *  ======== mainThread ========
 */
void *mainThread(void *arg0)
{

    /* Call driver init functions */
    GPIO_init();
    I2C_init();

    /* Open the HOST display for output */
    display = Display_open(Display_Type_UART, NULL);
    if (display == NULL) {
        while (1);
    }
    Display_print0(display, 0, 0, "Starting the i2cbmi160 sensor example...\n\n");

    I2C_Params_init(&i2cParams);
    i2cParams.bitRate = I2C_400kHz;
    i2cParams.transferMode = I2C_MODE_BLOCKING;
    i2cParams.transferCallbackFxn = NULL;
    i2c = I2C_open(CONFIG_I2C_BMI, &i2cParams);
    if (i2c == NULL) {
        Display_print0(display, 0, 0, "Error Initializing I2C\n");
    }
    else {
        Display_print0(display, 0, 0, "I2C Initialized!\n");
    }

    bmi160_initialize_sensor(i2c);

    /* Initialize the BME Sensor */
    if(BME280_INIT_VALUE != bme280_data_readout_template(i2c))
    {
        Display_print0(display, 0, 0, "Error Initializing bme280\n");
    }
    bme280_set_power_mode(BME280_NORMAL_MODE);

    while(1)
    {
        if(BME280_INIT_VALUE ==
                bme280_read_pressure_temperature_humidity(&g_u32ActualPress,
                    &g_s32ActualTemp, &g_u32ActualHumity))
        {
//            Display_print3(display, 0, 0, "%u KPa(Pressure), %u DegC(Temp), %u %%RH(Humidity)\n",
//                        g_u32ActualPress, g_s32ActualTemp/100,
//                        g_u32ActualHumity/1000);
        }
        else
        {
            Display_print0(display, 0, 0, "Error reading from the bme280 sensor\n");
        }

        // Should be made a lot better, start a new thread and use exported semaphore maybe
//
//        Display_print3(display, 0, 0, "accelo: x = %d, y = %d,z = %d\n",
//                                accelxyz.x, accelxyz.y, accelxyz.z);

        s16 abs_acc = sqrt((accelxyz.x * accelxyz.x) + (accelxyz.y * accelxyz.y) + (accelxyz.z * accelxyz.z));
        Display_print1(display, 0, 0, "The absolute acc value is: %d \n", abs_acc);



        acc_magn[index] = abs_acc;
//        Display_print1(display, 0, 0, "The index is: %d \n", index);

        if(index < acc_magn_size - 1){
            index = index + 1;

        } else{
            index = 0;
        }

//        Display_print3(display, 0, 0, "Content of list: x = %d, y = %d, z = %d\n",
//                       acc_magn[0], acc_magn[1], acc_magn[4]);

        int i = 0;
        int avg = 0;
        for(i = 0; i < acc_magn_size; i ++){
            avg = avg + acc_magn[i];
        }
        avg = avg / acc_magn_size;

        int spread = 0;
        for(i = 0; i < acc_magn_size; i ++){
            spread = spread + (acc_magn[i] - avg)*(acc_magn[i] - avg);
        }
        spread = spread / acc_magn_size;

//        Display_print3(display, 0, 0, "Average: x = %d, y = %d, z = %d\n",
//                       avg, avg, avg);
//
//        Display_print3(display, 0, 0, "spread: x = %d, y = %d, z = %d\n",
//                       spread, spread, spread);



        if(spread > 5000000){
            is_falling = true;
        }

        if(is_falling){
            if(count == 0){
                Display_print0(display, 0, 0, "We are falling! \n");
            }

            count ++;
            if(count >= not_care_time){
                is_falling = false;
                count = 0;
            }
        }

        usleep(300000);
    }

    return (0);
}

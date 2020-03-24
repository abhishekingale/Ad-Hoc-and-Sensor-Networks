/*
 *  ======== ti_radio_config.h ========
 *  Configured RadioConfig module definitions
 *
 *  DO NOT EDIT - This file is generated for the CC1352R1F3RGZ
 *  by the SysConfig tool.
 *  
 *  Radio Config module version : 1.4
 *  SmartRF Studio data version : 2.16.0
 */
#ifndef _TI_RADIO_CONFIG_H_
#define _TI_RADIO_CONFIG_H_

#include <ti/devices/DeviceFamily.h>
#include DeviceFamily_constructPath(driverlib/rf_mailbox.h)
#include DeviceFamily_constructPath(driverlib/rf_common_cmd.h)
#include DeviceFamily_constructPath(driverlib/rf_ble_cmd.h)
#include <ti/drivers/rf/RF.h>


//*********************************************************************************
//  RF Setting:   Bluetooth 5, LE 1M PHY (1 Msym/s GFSK, 1 Mbps data rate) -- Packet Tx with AUX_ADV_IND PDU
//
//  PHY:          bt5le1m     
//  Setting file: setting_bt5_le_1m.json
//*********************************************************************************

// TX Power table size definition
#define RF_BLE_TX_POWER_TABLE_SIZE 16

// TX Power Table Object
extern RF_TxPowerTable_Entry RF_BLE_txPowerTable[];

// TI-RTOS RF Mode Object
extern RF_Mode RF_modeBle;

// RF Core API commands

// RF Core API Overrides
extern uint32_t pOverrides_bleCommon[];
extern uint32_t pOverrides_ble1Mbps[];
extern uint32_t pOverrides_ble2Mbps[];
extern uint32_t pOverrides_bleCoded[];

#endif // _TI_RADIO_CONFIG_H_

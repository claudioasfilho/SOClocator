/***************************************************************************//**
 * @file
 * @brief Application interface provided to main().
 *******************************************************************************
 * # License
 * <b>Copyright 2020 Silicon Laboratories Inc. www.silabs.com</b>
 *******************************************************************************
 *
 * The licensor of this software is Silicon Laboratories Inc. Your use of this
 * software is governed by the terms of Silicon Labs Master Software License
 * Agreement (MSLA) available at
 * www.silabs.com/about-us/legal/master-software-license-agreement. This
 * software is distributed to you in Source Code format and is governed by the
 * sections of the MSLA applicable to Source Code.
 *
 ******************************************************************************/

#ifndef APP_H
#define APP_H
#include "aoa.h"
#include "conn.h"

#define NUM_ANTENNAS       16
#define SERVICE_UUID_LEN 16
#define CHAR_UUID_LEN 16
#define AD_FIELD_I 0x06
#define AD_FIELD_C 0x07
#define SWITCHING_PATTERN  { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15 }

#define SYNC_SKIP                     1    //one packet can be skipped
#define SYNC_TIMEOUT                  100  //1000ms

#define CTE_SLOT_DURATION             1    //1us
#define CTE_COUNT                     1    //1 per advertisement interval

#define SCAN_INTERVAL                 16   //10ms
#define SCAN_WINDOW                   16   //10ms
#define SCAN_PASSIVE                  0
#define SCAN_ACTIVE                   1

#define AOA_NUM_SNAPSHOTS       (4)
#define AOA_NUM_ARRAY_ELEMENTS  (4 * 4)
#define AOA_REF_PERIOD_SAMPLES  (7)

void app_iq_samples_ready(conn_properties_t *tag, uint8_t* iq_samples, uint8_t slen, int8_t rssi, uint8_t channel, uint16_t event_counter);

/**************************************************************************//**
 * Application Init.
 *****************************************************************************/
void app_init(void);

/**************************************************************************//**
 * Application Process Action.
 *****************************************************************************/
void app_process_action(void);

#endif // APP_H

/***********************************************************************************************//**
 * @file
 * @brief  AoA header file
 ***************************************************************************************************
 * # License
 * <b>Copyright 2020 Silicon Laboratories Inc. www.silabs.com</b>
 ***************************************************************************************************
 * The licensor of this software is Silicon Laboratories Inc. Your use of this software is governed
 * by the terms of Silicon Labs Master Software License Agreement (MSLA) available at
 * www.silabs.com/about-us/legal/master-software-license-agreement. This software is distributed to
 * you in Source Code format and is governed by the sections of the MSLA applicable to Source Code.
 **************************************************************************************************/

#ifndef AOA_H
#define AOA_H

#ifdef __cplusplus
extern "C" {
#endif

#include "aoa_types.h"
#include "sl_bt_api.h"
#include "sl_rtl_clib_api.h"

/***********************************************************************************************//**
 * \defgroup app Application Code
 * \brief Sample Application Implementation
 **************************************************************************************************/

/***********************************************************************************************//**
 * @addtogroup Application
 * @{
 **************************************************************************************************/

/***********************************************************************************************//**
 * @addtogroup app
 * @{
 **************************************************************************************************/

#define ARRAY_TYPE_4x4_URA (0)
#define ARRAY_TYPE_3x3_URA (1)
#define ARRAY_TYPE_1x4_ULA (2)
#define ARRAY_TYPE         ARRAY_TYPE_4x4_URA

#define AOX_MODE           SL_RTL_AOX_MODE_REAL_TIME_BASIC

#if (ARRAY_TYPE == ARRAY_TYPE_4x4_URA)
#define AOX_ARRAY_TYPE     SL_RTL_AOX_ARRAY_TYPE_4x4_URA
#define AOA_NUM_SNAPSHOTS       (4)
#define AOA_NUM_ARRAY_ELEMENTS   (4 * 4)
#define AOA_REF_PERIOD_SAMPLES (7)
#elif (ARRAY_TYPE == ARRAY_TYPE_3x3_URA)
#define AOX_ARRAY_TYPE     SL_RTL_AOX_ARRAY_TYPE_3x3_URA
#define AOA_NUM_SNAPSHOTS       (4)
#define AOA_NUM_ARRAY_ELEMENTS   (3 * 3)
#define AOA_REF_PERIOD_SAMPLES (7)
#elif (ARRAY_TYPE == ARRAY_TYPE_1x4_ULA)
#define AOX_ARRAY_TYPE     SL_RTL_AOX_ARRAY_TYPE_1x4_ULA
#define AOA_NUM_SNAPSHOTS       (18)
#define AOA_NUM_ARRAY_ELEMENTS   (1 * 4)
#define AOA_REF_PERIOD_SAMPLES (7)
#endif

#if (ARRAY_TYPE == ARRAY_TYPE_4x4_URA)
#define NUM_ANTENNAS       16
#define SWITCHING_PATTERN  { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15 }
#elif (ARRAY_TYPE == ARRAY_TYPE_3x3_URA)
#define NUM_ANTENNAS       9
#define SWITCHING_PATTERN  { 1, 2, 3, 5, 6, 7, 9, 10, 11 }
#elif (ARRAY_TYPE == ARRAY_TYPE_1x4_ULA)
#define NUM_ANTENNAS       4
#define SWITCHING_PATTERN  { 0, 1, 2, 3 }
#endif

// Silabs mode constats
#define AOA_SLOT_DURATION 1
#define AOA_CTE_COUNT 1

// Connection oriented mode constants
#define AOA_CTE_SAMPLING_INTERVAL 1
#define AOA_CTE_MIN_LENGTH 20
#define AOA_CTE_TYPE 0
#define AOA_CTE_SLOT_DURATION 1

#define TAG_TX_POWER       (-45.0)        //-45dBm at 1m distance

#define AOA_MAX_TAGS 8

/***************************************************************************************************
 * Type Definitions
 **************************************************************************************************/

typedef struct iq_samples {
  float** ref_i_samples;
  float** ref_q_samples;
  float** i_samples;
  float** q_samples;
  bd_addr address;
  uint8_t address_type;
  uint8_t channel;
  int16_t rssi;
  uint16_t event_counter;
} iq_samples_t;

typedef struct aoa_libitems {
  sl_rtl_aox_libitem libitem;
  sl_rtl_util_libitem util_libitem;
  sl_rtl_loc_libitem plibitem;
  struct sl_rtl_loc_locator_item locator_item;
  uint32_t locator_id;
} aoa_libitems_t;

// Connection state, used only in connection oriented mode
typedef enum {
  scanning,
  opening,
  discover_services,
  discover_characteristics,
  enable_notifications,
  enable_cte,
  running
} connection_state_t;

/***************************************************************************************************
 * Public variables
 **************************************************************************************************/

/***************************************************************************************************
 * Function Declarations
 **************************************************************************************************/

void aoa_init(aoa_libitems_t *aoa_state);
sl_status_t aoa_calculate(aoa_libitems_t *aoa_state, iq_samples_t *iq_samples, aoa_angle_t *angle);
sl_status_t aoa_deinit(aoa_libitems_t *aoa_state);

/** @} (end addtogroup app) */
/** @} (end addtogroup Application) */

#ifdef __cplusplus
};
#endif

#endif /* AOA_H */

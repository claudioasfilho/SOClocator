/***********************************************************************************************//**
 * @file
 * @brief  Connection handler header file
 ***************************************************************************************************
 * # License
 * <b>Copyright 2019 Silicon Laboratories Inc. www.silabs.com</b>
 ***************************************************************************************************
 * The licensor of this software is Silicon Laboratories Inc. Your use of this software is governed
 * by the terms of Silicon Labs Master Software License Agreement (MSLA) available at
 * www.silabs.com/about-us/legal/master-software-license-agreement. This software is distributed to
 * you in Source Code format and is governed by the sections of the MSLA applicable to Source Code.
 **************************************************************************************************/

#ifndef CONN_H
#define CONN_H

#include "sl_bt_api.h"
#include "stdint.h"
#include "aoa.h"

#ifdef __cplusplus
extern "C" {
#endif

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

#define RSSI_INVALID                  (int8_t)127
#define CONNECTION_HANDLE_INVALID     (uint16_t)0xFFFFu
#define SERVICE_HANDLE_INVALID        (uint32_t)0xFFFFFFFFu
#define CHARACTERISTIC_HANDLE_INVALID (uint16_t)0xFFFFu
#define TABLE_INDEX_INVALID           (uint8_t)0xFFu

/***************************************************************************************************
 * Type Definitions
 **************************************************************************************************/

typedef struct {
  uint16_t connection_handle;   //This is used for connection handle for connection oriented, and for sync handle for connection less mode
  int8_t rssi;
  bd_addr address;
  uint8_t address_type;
  uint32_t cte_service_handle;
  uint16_t cte_enable_char_handle;
  uint8_t connection_state;
  aoa_libitems_t aoa_states;
  uint8_t seq_num_dummy;
} conn_properties_t;

/***************************************************************************************************
 * Function Declarations
 **************************************************************************************************/

void init_connection(void);

conn_properties_t* add_connection(uint16_t connection, bd_addr *address, uint8_t address_type, uint8_t connection_state);

uint8_t remove_connection(uint16_t connection);

uint8_t is_connection_list_full(void);

conn_properties_t* get_connection_by_handle(uint16_t connection_handle);
conn_properties_t* get_connection_by_address(bd_addr* address);

void set_connections_parameters(unsigned int value);

/** @} (end addtogroup app) */
/** @} (end addtogroup Application) */

#ifdef __cplusplus
};
#endif

#endif /* CONN_H */

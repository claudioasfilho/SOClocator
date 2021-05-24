/***********************************************************************************************//**
 * @file
 * @brief  Connection handler module, responsible for storing states of open connections
 ***************************************************************************************************
 * # License
 * <b>Copyright 2019 Silicon Laboratories Inc. www.silabs.com</b>
 ***************************************************************************************************
 * The licensor of this software is Silicon Laboratories Inc. Your use of this software is governed
 * by the terms of Silicon Labs Master Software License Agreement (MSLA) available at
 * www.silabs.com/about-us/legal/master-software-license-agreement. This software is distributed to
 * you in Source Code format and is governed by the sections of the MSLA applicable to Source Code.
 **************************************************************************************************/

#include "sl_bt_api.h"
#include "conn.h"
#include "stdint.h"
#include <stdio.h>
#include "aoa.h"
#include "conn.h"

/***************************************************************************************************
 * Static Variable Declarations
 **************************************************************************************************/


// Array for holding properties of multiple (parallel) connections
static conn_properties_t conn_properties[AOA_MAX_TAGS];

// Counter of active connections
static uint8_t active_connections_num;

/***************************************************************************************************
 * Public Function Definitions
 **************************************************************************************************/
void init_connection(void)
{
  uint8_t i;
  active_connections_num = 0;

  // Initialize connection state variables
  for (i = 0; i < AOA_MAX_TAGS; i++) {
    conn_properties[i].connection_handle = CONNECTION_HANDLE_INVALID;
    conn_properties[i].rssi = RSSI_INVALID;
    conn_properties[i].cte_service_handle = SERVICE_HANDLE_INVALID;
    conn_properties[i].cte_enable_char_handle = CHARACTERISTIC_HANDLE_INVALID;
  }
}

conn_properties_t* add_connection(uint16_t connection, bd_addr *address, uint8_t address_type, uint8_t connection_state)
{
  conn_properties_t* ret = NULL;

  // If there is place to store new connection
  if (active_connections_num < AOA_MAX_TAGS) {
    // Store the connection handle, and the server address
    conn_properties[active_connections_num].connection_handle = connection;
    conn_properties[active_connections_num].address = *address;
    conn_properties[active_connections_num].address_type = address_type;
    conn_properties[active_connections_num].connection_state = connection_state;
    aoa_init(&conn_properties[active_connections_num].aoa_states);

    // Dummy sequence number running from 9->0
    conn_properties[active_connections_num].seq_num_dummy = 9;
    // Entry is now valid
    ret = &conn_properties[active_connections_num];
    active_connections_num++;
  }
  return ret;
}

uint8_t remove_connection(uint16_t connection)
{
  uint8_t i;
  uint8_t table_index = TABLE_INDEX_INVALID;

  // If there are no open connections, return error
  if (active_connections_num == 0) {
    return 1;
  }

  // Find the table index of the connection to be removed
  for (uint8_t i = 0; i < active_connections_num; i++) {
    if (conn_properties[i].connection_handle == connection) {
      table_index = i;
      break;
    }
  }

  // If connection not found, return error
  if (table_index == TABLE_INDEX_INVALID) {
    return 1;
  }

  aoa_deinit(&conn_properties[table_index].aoa_states);

  // Decrease number of active connections
  active_connections_num--;

  // Shift entries after the removed connection toward 0 index
  for (i = table_index; i < active_connections_num; i++) {
    conn_properties[i] = conn_properties[i + 1];
  }

  // Clear the slots we've just removed so no junk values appear
  for (i = active_connections_num; i < AOA_MAX_TAGS; i++) {
    conn_properties[i].connection_handle = CONNECTION_HANDLE_INVALID;
    conn_properties[i].rssi = RSSI_INVALID;
    conn_properties[i].cte_service_handle = SERVICE_HANDLE_INVALID;
    conn_properties[i].cte_enable_char_handle = CHARACTERISTIC_HANDLE_INVALID;
  }

  return 0;
}

uint8_t is_connection_list_full(void)
{
  // Return if connection state table is full
  return (active_connections_num >= AOA_MAX_TAGS);
}

conn_properties_t* get_connection_by_handle(uint16_t connection_handle)
{
  conn_properties_t* ret = NULL;
  // Find the connection state entry in the table corresponding to the connection handle
  for (uint8_t i = 0; i < active_connections_num; i++) {
    if (conn_properties[i].connection_handle == connection_handle) {
      // Return a pointer to the connection state entry
      ret = &conn_properties[i];
      break;
    }
  }
  // Return error if connection not found
  return ret;
}

conn_properties_t* get_connection_by_address(bd_addr* address)
{
  conn_properties_t* ret = NULL;
  // Find the connection state entry in the table corresponding to the connection address
  for (uint8_t i = 0; i < active_connections_num; i++) {
    if (0 == memcmp(address, &(conn_properties[i].address), sizeof(bd_addr))) {
      // Return a pointer to the connection state entry
      ret = &conn_properties[i];
      break;
    }
  }
  // Return error if connection not found
  return ret;
}

void set_connections_parameters(unsigned int interval)
{
  uint8_t i;

  // Set connection interval for all active connections
  for (i = 0; i < active_connections_num; i++) {
    sl_bt_connection_set_parameters(conn_properties[i].connection_handle,
                                    interval,
                                    interval,
                                    0x0000,
                                    100,                    /* 1 second timeout */
                                    0x0000,
                                    0xFFFF);
  }
}

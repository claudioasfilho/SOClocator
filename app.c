/***************************************************************************//**
 * @file
 * @brief Core application logic.
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
#include "em_common.h"
#include "sl_app_assert.h"
#include "sl_bluetooth.h"
#include "gatt_db.h"
#include "app.h"
#include "conn.h"
#include <stdio.h>
#include <string.h>
#include "sl_iostream.h"
#include "sl_iostream_init_instances.h"
#include "sl_iostream_handles.h"
#include "sl_sleeptimer.h"

#define sl_app_log(...)

// Static variables
static bd_addr self_address;
static uint8_t address_type = 0;

// UUIDs defined by Bluetooth SIG
static const uint8_t cte_service[SERVICE_UUID_LEN] = { 0x50, 0x69, 0x96, 0x81, 0xb7, 0xa8, 0xad, 0x07, 0x96, 0xf2, 0x3f, 0x07, 0x64, 0x36, 0xd0, 0x0e };

// Antenna switching pattern
static const uint8_t antenna_array[NUM_ANTENNAS] = SWITCHING_PATTERN;

uint8_t find_service_in_advertisement(uint8_t *advdata, uint8_t advlen, uint8_t *service_uuid)
{
  uint8_t ad_field_length;
  uint8_t ad_field_type;
  uint8_t *ad_uuid_field;
  uint32_t i = 0;
  uint32_t next_ad_structure;
  uint8_t ret = 0;

  // Parse advertisement packet
  while (i < advlen) {
    ad_field_length = advdata[i];
    ad_field_type = advdata[i + 1];
    next_ad_structure = i + ad_field_length + 1;
    // incomplete or complete UUIDs
    if (ad_field_type == AD_FIELD_I || ad_field_type == AD_FIELD_C) {
      // compare UUID to the service UUID to be found
      for (ad_uuid_field = advdata + i + 2; ad_uuid_field < advdata + next_ad_structure; ad_uuid_field += SERVICE_UUID_LEN) {
        if (memcmp(ad_uuid_field, service_uuid, SERVICE_UUID_LEN) == 0) {
          ret = 1;
          break;
        }
      }
      if (ret == 1) {
        break;
      }
    }
    // advance to the next AD struct
    i = next_ad_structure;
  }
  return ret;
}

void app_iq_samples_ready(conn_properties_t *tag, uint8_t* iq_samples, uint8_t slen, int8_t rssi, uint8_t channel, uint16_t event_counter)
{
  char str[200];
  uint32_t ms = sl_sleeptimer_tick_to_ms(sl_sleeptimer_get_tick_count());

  // Convert Bluetooth addresses to decimal representation
  uint64_t locator_id = ((uint64_t)self_address.addr[0]) | ((uint64_t)self_address.addr[1] << 8) | ((uint64_t)self_address.addr[2] << 16)
      | ((uint64_t)self_address.addr[3] << 24) | ((uint64_t)self_address.addr[4] << 32) | ((uint64_t)self_address.addr[5] << 40);
  uint64_t tag_id = ((uint64_t)tag->address.addr[0]) | ((uint64_t)tag->address.addr[1] << 8) | ((uint64_t)tag->address.addr[2] << 16)
      | ((uint64_t)tag->address.addr[3] << 24) | ((uint64_t)tag->address.addr[4] << 32) | ((uint64_t)tag->address.addr[5] << 40);

  // Send data in ASCII format, as
  // $IQ,<cte rx dev-id>,<cte tx dev-id>,<timestamp_ms>,<seq_num>,<ble_chan>,<rssi>,
  sprintf(str, "$IQ,%llu,%llu,%lu,%u,%d,%d,", locator_id, tag_id, ms, event_counter, channel, rssi);
  sl_iostream_write(SL_IOSTREAM_STDOUT, str, strlen(str));

  // <i>,<q>,...,<i>,<q>\n
  for (int16_t i = 0; i < slen - 1; i += 2) {
    sprintf(str, "%d,%d", (int8_t)iq_samples[i], (int8_t)iq_samples[i + 1]);
    sl_iostream_write(SL_IOSTREAM_STDOUT, str, strlen(str));

    if (i == slen - 2) {
      sprintf(str, "\n");
    } else {
      sprintf(str, ",");
    }

    sl_iostream_write(SL_IOSTREAM_STDOUT, str, strlen(str));
  }
}

/**************************************************************************//**
 * Application Init.
 *****************************************************************************/
SL_WEAK void app_init(void)
{
  /* Prevent buffering of output/input.*/
#if !defined(__CROSSWORKS_ARM) && defined(__GNUC__)
  setvbuf(stdout, NULL, _IONBF, 0);   /*Set unbuffered mode for stdout (newlib)*/
  setvbuf(stdin, NULL, _IONBF, 0);   /*Set unbuffered mode for stdin (newlib)*/
#endif
}

/**************************************************************************//**
 * Application Process Action.
 *****************************************************************************/
SL_WEAK void app_process_action(void)
{
  /////////////////////////////////////////////////////////////////////////////
  // Put your additional application code here!                              //
  // This is called infinitely.                                              //
  // Do not call blocking functions from here!                               //
  /////////////////////////////////////////////////////////////////////////////
}

/**************************************************************************//**
 * Bluetooth stack event handler.
 * This overrides the dummy weak implementation.
 *
 * @param[in] evt Event coming from the Bluetooth stack.
 *****************************************************************************/
void sl_bt_on_event(sl_bt_msg_t *evt)
{
  sl_status_t sc;
  char str[200];

  switch (SL_BT_MSG_ID(evt->header)) {
    // -------------------------------
    // This event indicates the device has started and the radio is ready.
    // Do not call any stack command before receiving this boot event!
    case sl_bt_evt_system_boot_id:
    {

      sprintf(str,"BOOT\r\n");
      sl_iostream_write(SL_IOSTREAM_STDOUT, str, strlen(str));

      sc = sl_bt_system_get_identity_address(&self_address, &address_type);
      sl_app_assert(sc == SL_STATUS_OK,
                 "[E: 0x%04x] Failed to get bt address\n",
                 (int)sc);

      sc = sl_bt_scanner_set_mode(gap_1m_phy, SCAN_PASSIVE);
      sl_app_assert(sc == SL_STATUS_OK,
                 "[E: 0x%04x] Failed to set scanner mode\n",
                 (int)sc);

      // Set scan interval and scan window
      sc = sl_bt_scanner_set_timing(gap_1m_phy, SCAN_INTERVAL, SCAN_WINDOW);
      sl_app_assert(sc == SL_STATUS_OK,
                 "[E: 0x%04x] Failed to set scanner timing\n",
                 (int)sc);

      // Start scanning - looking for tags
      sc = sl_bt_scanner_start(gap_1m_phy, scanner_discover_observation);
      sl_app_assert(sc == SL_STATUS_OK,
                 "[E: 0x%04x] Failed to start scanner\n",
                 (int)sc);
    } break;


    case sl_bt_evt_scanner_scan_report_id:
    {
      // Parse extended advertisement packets
      if (evt->data.evt_scanner_scan_report.packet_type & 0x80) {
        // If a CTE service is found...



        uint16_t sync_handle;
        conn_properties_t *tag;
        if (find_service_in_advertisement(&(evt->data.evt_scanner_scan_report.data.data[0]),
                                          evt->data.evt_scanner_scan_report.data.len,
                                          (uint8_t *) cte_service) != 0) {


            sprintf(str,"CTE service is found...\n\r");
            sl_iostream_write(SL_IOSTREAM_STDOUT, str, strlen(str));


          // ...then sync on the periodic advertisement
          sc = sl_bt_sync_open(evt->data.evt_scanner_scan_report.address,
                               evt->data.evt_scanner_scan_report.address_type,
                               evt->data.evt_scanner_scan_report.adv_sid,
                               &sync_handle);
          sl_app_assert(sc == SL_STATUS_OK,
                     "[E: 0x%04x] Failed to synchronize to tag\n",
                     (int)sc);

          sprintf(str,"[E: 0x%04x] Failed to synchronize to tag\n",
                  (int)sc);
          sl_iostream_write(SL_IOSTREAM_STDOUT, str, strlen(str));
          tag = get_connection_by_handle(sync_handle);
          if (tag == NULL) {
            add_connection(sync_handle, &evt->data.evt_scanner_scan_report.address, evt->data.evt_scanner_scan_report.address_type, 0);
          }
        }
      }
    } break;

    case sl_bt_evt_sync_opened_id:
    {
      // Stop scanning
      sc = sl_bt_scanner_stop();
      sl_app_assert(sc == SL_STATUS_OK || sc == SL_STATUS_INVALID_STATE,
                 "[E: 0x%04x] Failed to stop scanning\n",
                 (int)sc);

      // Start listening CTE on extended advertisements

      sc = sl_bt_cte_receiver_enable_connectionless_cte(evt->data.evt_sync_opened.sync,
                                                        CTE_SLOT_DURATION,
                                                        CTE_COUNT,
                                                        AOA_NUM_ARRAY_ELEMENTS,
                                                        antenna_array);

      sl_app_assert(sc == SL_STATUS_OK,
                 "[E: 0x%04x] Failed to enable CTE\n",
                 (int)sc);
      // Start scanning again for new devices
      sc = sl_bt_scanner_start(gap_1m_phy, scanner_discover_generic);
      sl_app_assert(sc == SL_STATUS_OK || sc == SL_STATUS_INVALID_STATE,
                 "[E: 0x%04x] Failed to start scanning\n",
                 (int)sc);
     } break;

    case sl_bt_evt_sync_closed_id:
    {
      remove_connection(evt->data.evt_cte_receiver_connectionless_iq_report.sync);
      // start scanning again to find new devices
      sc = sl_bt_scanner_start(gap_1m_phy, scanner_discover_generic);
      sl_app_assert(sc == SL_STATUS_OK || sc == SL_STATUS_INVALID_STATE,
                 "[E: 0x%04x] Failed to start scanning\n",
                 (int)sc);
    } break;

    case sl_bt_evt_cte_receiver_connectionless_iq_report_id:
    {
      conn_properties_t *tag;
      sl_app_log("Connectionless IQ samples received.\n");

      // Look for this tag
      tag = get_connection_by_handle(evt->data.evt_cte_receiver_connectionless_iq_report.sync);
      if (tag == NULL) {
        break;
      }

      uint32_t slen = evt->data.evt_cte_receiver_connectionless_iq_report.samples.len;
      int8_t rssi = evt->data.evt_cte_receiver_connectionless_iq_report.rssi;
      uint8_t channel = evt->data.evt_cte_receiver_connectionless_iq_report.channel;

      app_iq_samples_ready(tag, evt->data.evt_cte_receiver_connectionless_iq_report.samples.data, slen, rssi, channel, tag->seq_num_dummy);

      // Dummy counter running from 9 to 0 and wrapping
      if (tag->seq_num_dummy == 0) {
        tag->seq_num_dummy = 9;
      } else {
        tag->seq_num_dummy--;
      }
    } break;

    ///////////////////////////////////////////////////////////////////////////
    // Add additional event handlers here as your application requires!      //
    ///////////////////////////////////////////////////////////////////////////

    // -------------------------------
    // Default event handler.
    default:
      break;
  }
}

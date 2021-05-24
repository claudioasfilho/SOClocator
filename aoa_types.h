/***************************************************************************//**
 * @file
 * @brief AoA type definitions.
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

#ifndef AOA_TYPES_H
#define AOA_TYPES_H

#include <stdint.h>

#define AOA_ID_MAX_SIZE    64

typedef char aoa_id_t[AOA_ID_MAX_SIZE];

typedef struct aoa_angle_s {
  float azimuth;
  float elevation;
  float distance;
  int16_t rssi;
  uint16_t channel;
  int32_t sequence;
} aoa_angle_t;

typedef struct aoa_position_s {
  float x;
  float y;
  float z;
} aoa_position_t;

#endif // AOA_TYPES_H

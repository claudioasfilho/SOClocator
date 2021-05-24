/***********************************************************************************************//**
 * @file
 * @brief  Module responsible for processing IQ samples and calculate angle estimation from them
 *         using the AoX library
 ***************************************************************************************************
 * # License
 * <b>Copyright 2019 Silicon Laboratories Inc. www.silabs.com</b>
 ***************************************************************************************************
 * The licensor of this software is Silicon Laboratories Inc. Your use of this software is governed
 * by the terms of Silicon Labs Master Software License Agreement (MSLA) available at
 * www.silabs.com/about-us/legal/master-software-license-agreement. This software is distributed to
 * you in Source Code format and is governed by the sections of the MSLA applicable to Source Code.
 **************************************************************************************************/

// standard library headers
#include <stdint.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include <unistd.h>
#include <stdlib.h>
#include <math.h>

#include "aoa.h"

/***************************************************************************************************
 * Static Variable Declarations
 **************************************************************************************************/

/***************************************************************************************************
 * Static Function Declarations
 **************************************************************************************************/

static enum sl_rtl_error_code aox_process_samples(aoa_libitems_t *aoa_state, iq_samples_t *samples, float *azimuth, float *elevation, uint32_t *qa_result);
static float calc_frequency_from_channel(uint8_t channel);

/***************************************************************************************************
 * Public Function Definitions
 **************************************************************************************************/
void aoa_init(aoa_libitems_t *aoa_state)
{
}

sl_status_t aoa_calculate(aoa_libitems_t *aoa_state, iq_samples_t *iq_samples, aoa_angle_t *angle)
{
  return SL_STATUS_OK;
}

static enum sl_rtl_error_code aox_process_samples(aoa_libitems_t *aoa_state, iq_samples_t *samples, float *azimuth, float *elevation, uint32_t *qa_result)
{
   return SL_RTL_ERROR_SUCCESS;
}

static float calc_frequency_from_channel(uint8_t channel)
{
  static const uint8_t logical_to_physical_channel[40] = { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11,
                                                           13, 14, 15, 16, 17, 18, 19, 20, 21,
                                                           22, 23, 24, 25, 26, 27, 28, 29, 30,
                                                           31, 32, 33, 34, 35, 36, 37, 38,
                                                           0, 12, 39 };

  // return the center frequency of the given channel
  return 2402000000 + 2000000 * logical_to_physical_channel[channel];
}

sl_status_t aoa_deinit(aoa_libitems_t *aoa_state)
{
  return SL_RTL_ERROR_SUCCESS;
}

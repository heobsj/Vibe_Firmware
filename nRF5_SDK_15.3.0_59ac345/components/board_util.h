/**
  * Copyright (c) 2020, CEEDUP Inc.
  * All rights reserved.
  *
  * Name: board_util.h
  * Author: GwangRok Baek
  * Purpose: Implementing the functions needed by target board.
  */

#ifndef COMPONENTS_BOARD_UTIL_H_
#define COMPONENTS_BOARD_UTIL_H_

#include <stdbool.h>
#include <stdio.h>
#include <stdint.h>
#include <string.h>
#include "app_error.h"
#include "app_timer.h"
#include "app_uart.h"
#include "app_util_platform.h"
#include "app_util.h"
#include "ble_advdata.h"
#include "ble_advertising.h"
#include "ble_conn_params.h"
#include "ble_hci.h"
#include "ble_nus.h"
#include "boards.h"
#include "bsp_btn_ble.h"
#include "compiler_abstraction.h"
#include "iis2dlpc.h"
#include "nordic_common.h"
#include "nrf.h"
#include "nrf_ble_gatt.h"
#include "nrf_ble_qwr.h"
#include "nrf_calendar.h"
#include "nrf_delay.h"
#include "nrf_drv_ppi.h"
#include "nrf_drv_saadc.h"
#include "nrf_drv_timer.h"
#include "nrf_drv_twi.h"
#include "nrf_log.h"
#include "nrf_log_ctrl.h"
#include "nrf_log_default_backends.h"
#include "nrf_pwr_mgmt.h"
#include "nrf_sdh.h"
#include "nrf_sdh_soc.h"
#include "nrf_sdh_ble.h"
#include "nrf_twi.h"
#include "nrf_twi_mngr.h"
#include "nrf_twi_sensor.h"
#if defined (UART_PRESENT)
#include "nrf_uart.h"
#endif
#if defined (UARTE_PRESENT)
#include "nrf_uarte.h"
#endif

/*lint -save -e689 */ /* Apparent end of comment ignored */
#include "arm_const_structs.h"
/*lint -restore */

#define APP_BLE_CONN_CFG_TAG            1                                           /**< A tag identifying the SoftDevice BLE configuration. */
#define DEVICE_NAME                     "Nordic_Blinky"                             /**< Name of device. Will be included in the advertising data. */
#define NUS_SERVICE_UUID_TYPE           BLE_UUID_TYPE_VENDOR_BEGIN                  /**< UUID type for the Nordic UART Service (vendor specific). */
#define APP_BLE_OBSERVER_PRIO           3                                           /**< Application's BLE observer priority. You shouldn't need to modify this value. */
#define APP_ADV_INTERVAL                64                                          /**< The advertising interval (in units of 0.625 ms. This value corresponds to 40 ms). */
#define APP_ADV_DURATION                BLE_GAP_ADV_TIMEOUT_GENERAL_UNLIMITED       /**< The advertising duration (180 seconds) in units of 10 milliseconds. */

#define MIN_CONN_INTERVAL               MSEC_TO_UNITS(100, UNIT_1_25_MS)            /**< Minimum acceptable connection interval (20 ms), Connection interval uses 1.25 ms units. */
#define MAX_CONN_INTERVAL               MSEC_TO_UNITS(200, UNIT_1_25_MS)            /**< Maximum acceptable connection interval (75 ms), Connection interval uses 1.25 ms units. */
#define SLAVE_LATENCY                   0                                           /**< Slave latency. */
#define CONN_SUP_TIMEOUT                MSEC_TO_UNITS(4000, UNIT_10_MS)             /**< Connection supervisory timeout (4 seconds), Supervision Timeout uses 10 ms units. */
#define FIRST_CONN_PARAMS_UPDATE_DELAY  APP_TIMER_TICKS(20000)                      /**< Time from initiating event (connect or start of notification) to first time sd_ble_gap_conn_param_update is called (5 seconds). */
#define NEXT_CONN_PARAMS_UPDATE_DELAY   APP_TIMER_TICKS(5000)                       /**< Time between each call to sd_ble_gap_conn_param_update after the first call (30 seconds). */
#define MAX_CONN_PARAMS_UPDATE_COUNT    3                                           /**< Number of attempts before giving up the connection parameter negotiation. */

#define DEAD_BEEF                       0xDEADBEEF                                  /**< Value used as error code on stack dump, can be used to identify stack location on stack unwind. */

#define UART_TX_BUF_SIZE                256                                         /**< UART TX buffer size. */
#define UART_RX_BUF_SIZE                256                                         /**< UART RX buffer size. */

#define II_ADDR (0x33U >>1)                                                         /**< IIS2DLPC Sensor Adress. */
#define MAX_PENDING_TRANSACTIONS    4                                               /**< Maximum numbers of pending transactions. */

#define FLAME_PIN NRF_SAADC_INPUT_AIN1                                              /**< The hadware pin for flame detect sensor */
#define BAT_PIN NRF_SAADC_INPUT_AIN0                                                 /**< The hadware pin for battery(vdd)*/
#define SAMPLES_IN_BUFFER 2                                                         /**< The number of analog sensors */
#define ADC_REF_VOLTAGE_IN_MILLIVOLTS   600                                         /**< Reference voltage (in milli volts) used by ADC while doing conversion. */
#define ADC_PRE_SCALING_COMPENSATION    6                                           /**< The ADC is configured to use VDD with 1/3 prescaling as input. And hence the result of conversion is to be multiplied by 3 to get the actual value of the battery voltage.*/
#define DIODE_FWD_VOLT_DROP_MILLIVOLTS  270                                         /**< Typical forward voltage drop of the diode . */
#define ADC_RES_12BIT                   4096                                        /**< Maximum digital value for 10-bit ADC conversion. */
#define ADC_RESULT_IN_MILLI_VOLTS(ADC_VALUE)\
        ((((ADC_VALUE) * ADC_REF_VOLTAGE_IN_MILLIVOLTS) / ADC_RES_12BIT) * ADC_PRE_SCALING_COMPENSATION)   /**<  The mathematical expression for converting the value of saadc(vdd) as milli volts unit. */

#define TRIGGER_DIG 50
#define TRIGGER_FLA 4000
#define TRIGGER_TIL 30
#define TRIGGER_BAT 65

#define NRF_POWER_EN 12
#define LED_PIN 32

#define SLAVE_NUM 0

#define SIZE 1024

typedef enum _BLE_EVT {
  CRIME = 0,
  LEANED,
  BROKEN,
  FLAME,
  POWER_DOWN,
  POWER_UP,
  BLE_EVT_COUNT
} BLE_EVT;

typedef enum _SAADC_CHANNEL {
  BAT_CHANNEL = 0,
  FLAME_CHANNEL
} SAADC_CHANNEL;

extern uint8_t BLE_EVT_MAP[BLE_EVT_COUNT];

uint8_t checkMap(uint8_t* map, int event);
void setMap(uint8_t* map, int event);
void clearMap(uint8_t* map, int event);

#endif // COMPONENTS_BOARD_UTIL_H_

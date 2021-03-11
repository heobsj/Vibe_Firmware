/**
  * Copyright (c) 2020, CEEDUP Inc.
  * All rights reserved.
  *
  * Name: master_util.h
  * Author: GwangRok Baek
  * Purpose: Implementing the functions needed by target board (Master).
  */

#ifndef COMPONENTS_MASTER_UTIL_H_
#define COMPONENTS_MASTER_UTIL_H_

#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>
#include "app_error.h"
#include "app_timer.h"
#include "app_uart.h"
#include "app_util.h"
#include "ble.h"
#include "ble_advertising.h"
#include "ble_conn_params.h"
#include "ble_conn_state.h"
#include "ble_db_discovery.h"
#include "ble_hci.h"
#include "ble_nus_c.h"
#include "boards.h"
#include "bsp_btn_ble.h"
#include "compiler_abstraction.h"
#include "iis2dlpc.h"
#include "nordic_common.h"
#include "nrf.h"
#include "nrf_ble_gatt.h"
#include "nrf_ble_scan.h"
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
#include "ArducamMini2MP.h"
#include "base64.h"

#define APP_BLE_CONN_CFG_TAG      1                                             /**< Tag that refers to the BLE stack configuration that is set with @ref sd_ble_cfg_set. The default tag is @ref APP_BLE_CONN_CFG_TAG. */
#define APP_BLE_OBSERVER_PRIO     3                                             /**< BLE observer priority of the application. There is no need to modify this value. */

#define UART_TX_BUF_SIZE        1024                                             /**< UART TX buffer size. */
#define UART_RX_BUF_SIZE        256                                             /**< UART RX buffer size. */

#define II_ADDR (0x33U >>1)                                                         /**< IIS2DLPC Sensor Adress. */
#define MAX_PENDING_TRANSACTIONS    4                                               /**< Maximum numbers of pending transactions. */

#define CENTRAL_SCANNING_LED      BSP_BOARD_LED_0
#define CENTRAL_CONNECTED_LED     BSP_BOARD_LED_1
#define LEDBUTTON_LED             BSP_BOARD_LED_2                               /**< LED to indicate a change of state of the Button characteristic on the peer. */
#define LEDBUTTON_BUTTON          BSP_BUTTON_0                                  /**< Button that writes to the LED characteristic of the peer. */
#define BUTTON_DETECTION_DELAY    APP_TIMER_TICKS(50)                           /**< Delay from a GPIOTE event until a button is reported as pushed (in number of timer ticks). */

#define NUS_SERVICE_UUID_TYPE   BLE_UUID_TYPE_VENDOR_BEGIN                      /**< UUID type for the Nordic UART Service (vendor specific). */
#define ECHOBACK_BLE_UART_DATA  0                                               /**< The flag whether central sends peripheral the received message again */  

#define SAMPLES_IN_BUFFER 2                                                     /**< The number of analog sensors */
#define SAADC_SAMPLE_RATE 250                                                   /**< The sampling rate of saadc */

#define BAT_PIN NRF_SAADC_INPUT_AIN0                                             /**< The hadware pin for battery(vdd) */
#define FLAME_PIN NRF_SAADC_INPUT_AIN1                                           /**< The hadware pin for flame detect sensor */


//#define BAT_CHANNEL 0                                                           /**< The saadc module channel of battery(vdd) */

typedef enum _SAADC_CHANNEL {
  BAT_CHANNEL = 0,
  FLAME_CHANNEL,  
} SAADC_CHANNEL;

#define ADC_REF_VOLTAGE_IN_MILLIVOLTS   600                                     /**< Reference voltage (in milli volts) used by ADC while doing conversion. */
#define ADC_PRE_SCALING_COMPENSATION    6                                       /**< The ADC is configured to use VDD with 1/3 prescaling as input. And hence the result of conversion is to be multiplied by 3 to get the actual value of the battery voltage.*/
#define DIODE_FWD_VOLT_DROP_MILLIVOLTS  270                                     /**< Typical forward voltage drop of the diode . */
#define ADC_RES_10BIT                   1024                                    /**< Maximum digital value for 10-bit ADC conversion. */
#define ADC_RESULT_IN_MILLI_VOLTS(ADC_VALUE)\
        ((((ADC_VALUE) * ADC_REF_VOLTAGE_IN_MILLIVOLTS) / ADC_RES_10BIT) * ADC_PRE_SCALING_COMPENSATION)    /**<  The mathematical expression for converting the value of saadc(vdd) as milli volts unit. */

#define TRIGGER_DIG 5
#define TRIGGER_TIL 30
#define TRIGGER_BAT 35
#define TRIGGER_FLA 4000

#define NRF_POWER_EN 12
#define CAMERA_CTRL 11
#define LM5_ONOFF_RESET

#define PCA10056_USE_FRONT_HEADER       1                                       /**< Use the front header (P24) for the camera module. Requires SB10-15 and SB20-25 to be soldered/cut, as described in the readme. */

#define TIMECHECK

#define MASTER_NUM "M001"

#ifdef TIMECHECK
static uint32_t start;                                                          /**< The time recorded when program starts. */
static uint32_t stop;                                                           /**< The time recorded when program terminates. */
static uint32_t elapsed;                                                        /**< The execution time. */
#endif

#define CRIME '0'
#define LEANED '1'
#define BROKEN '2'
#define FLAME '3'
#define POWER_DOWN '4'
#define POWER_UP '5'
#define FLASH '6'
#define FLASHOFF '7'
#define BLE_EVT_COUNT 6 // CRIME, LEANED, BROKEN, FLAME, POWER_DOWN, POWER_UP

#define STATUS_REPT '8'

#define TURN_ON '1'
#define TURN_OFF '2'
#define ONEMORE '4'
#define test '5'

#define SIZE 1024

enum {APP_CMD_NOCOMMAND = 0, APP_CMD_SINGLE_CAPTURE, APP_CMD_CHANGE_RESOLUTION};

typedef enum
{
    AT_OK = 0,
    AWS_OPEN,
    AWS_CONN,
    SRV_RDY
} lte_response_mode;

extern uint8_t SLAVE_STATUS_MAP[NRF_SDH_BLE_CENTRAL_LINK_COUNT + 1][BLE_EVT_COUNT];

int checkMap(uint8_t (*map)[BLE_EVT_COUNT], int number, int event);
void setMap(uint8_t (*map)[BLE_EVT_COUNT], int number, int event);
void clearMap(uint8_t (*map)[BLE_EVT_COUNT], int number, int event);
void resetZeroMap(uint8_t (*map)[BLE_EVT_COUNT]);
#endif // COMPONENTS_MASTER_UTIL_H_
/**
 * Copyright (c) 2014 - 2019, Nordic Semiconductor ASA
 *
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without modification,
 * are permitted provided that the following conditions are met:
 *
 * 1. Redistributions of source code must retain the above copyright notice, this
 *    list of conditions and the following disclaimer.
 *
 * 2. Redistributions in binary form, except as embedded into a Nordic
 *    Semiconductor ASA integrated circuit in a product or a software update for
 *    such product, must reproduce the above copyright notice, this list of
 *    conditions and the following disclaimer in the documentation and/or other
 *    materials provided with the distribution.
 *
 * 3. Neither the name of Nordic Semiconductor ASA nor the names of its
 *    contributors may be used to endorse or promote products derived from this
 *    software without specific prior written permission.
 *
 * 4. This software, with or without modification, must only be used with a
 *    Nordic Semiconductor ASA integrated circuit.
 *
 * 5. Any software provided in binary form under this license must not be reverse
 *    engineered, decompiled, modified and/or disassembled.
 *
 * THIS SOFTWARE IS PROVIDED BY NORDIC SEMICONDUCTOR ASA "AS IS" AND ANY EXPRESS
 * OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES
 * OF MERCHANTABILITY, NONINFRINGEMENT, AND FITNESS FOR A PARTICULAR PURPOSE ARE
 * DISCLAIMED. IN NO EVENT SHALL NORDIC SEMICONDUCTOR ASA OR CONTRIBUTORS BE
 * LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
 * CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE
 * GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
 * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
 * LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT
 * OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 *
 */
/** @file
 *
 * @defgroup ble_sdk_uart_over_ble_main main.c
 * @{
 * @ingroup  ble_sdk_app_nus_eval
 * @brief    UART over BLE application main file.
 *
 * This file contains the source code for a sample application that uses the Nordic UART service.
 * This application uses the @ref srvlib_conn_params module.
 */

#include "board_util.h"

static nrf_saadc_channel_config_t ch_config_flame = NRF_DRV_SAADC_DEFAULT_CHANNEL_CONFIG_SE(FLAME_PIN);    /**< The saadc cnannel configuration of flame detect sensor. */
static nrf_saadc_channel_config_t ch_config_bat = NRF_DRV_SAADC_DEFAULT_CHANNEL_CONFIG_SE(BAT_PIN);        /**< The saadc cnannel configuration of battery(vdd). */
static const nrf_drv_timer_t m_timer = NRF_DRV_TIMER_INSTANCE(3);                   /**< The channel of used timer triver. */
static nrf_saadc_value_t m_buffer_pool[2][SAMPLES_IN_BUFFER];                                          /**< The storage of 4 values which are results of saadc. */
static nrf_ppi_channel_t     m_ppi_channel;                                         /**< The ppi instance for interconnecting timer and saadc. */

static axis3bit16_t          data_raw_acceleration;                                 /**< Load raw data from iis2dlpc sensor into this variable. */ 
static iis2dlpc_ctx_t        dev_ctx;                                               /**< Handle iis2dlpc sensor's read/write instance with this variable. */
static uint8_t               whoamI, rst;                                           /**< Validate iis2dlpc sensor address and status to use. */ 
static float acceleration_mg[3];                                                    /**< Convert raw data to float(usable) data into this variable by using iis2dlpc sdk. */
static float previous_value[3] = {0};                                                 /**< Previous data to use dto62 private function. */

static int count = 0;
static int data[5][SIZE] = {0.0, }; // x, y, z, a, b
static float cal_data[3][5] = {0.0, }; //cal_data[0] = average, cal_data[1] = standard deviation, cal_data[2] = Count
static float similarity[2] = {0.0, }; // similarity[0] = flag, similarity[1] = highest similarity value 

static const float S[15] = {0.01, 0.01, 0.01, 0.01, 0.01, 0.01, 0.01, 0.01, 0.01, 0.01, 10.0, 10.0, 10.0, 10.0, 10.0}; // contributing constants
static const float w[15] = {1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0}; // correction factor
static const float Am[15] = {6.1, 6.1, 121.7, 2.9, 2.7, 0.21, 0.6, 0.6, 0.11, 0.6, 20.1, 20.1, 20.1, 10.1, 10.1}; //x,y,z,a,b data of avrg, stdev and count following exp 1 data
static const float Alpha = 1.00; // 2nd standard value
static const float Beta = 0.50; // 1st standard value



BLE_NUS_DEF(m_nus, NRF_SDH_BLE_TOTAL_LINK_COUNT);                                   /**< BLE NUS service instance. */
NRF_BLE_GATT_DEF(m_gatt);                                                           /**< GATT module instance. */
NRF_BLE_QWR_DEF(m_qwr);                                                             /**< Context for the Queued Write module.*/
BLE_ADVERTISING_DEF(m_advertising);                                                 /**< Advertising module instance. */
NRF_TWI_MNGR_DEF(m_nrf_twi_mngr, MAX_PENDING_TRANSACTIONS, 1);                          /**< TWI transaction manager instance. */
NRF_TWI_SENSOR_DEF(m_nrf_twi_sensor, &m_nrf_twi_mngr, NRF_TWI_SENSOR_SEND_BUF_SIZE);    /**< TWI sensor instance. */
APP_TIMER_DEF(m_repeated_timer_id);
APP_TIMER_DEF(m_psm_timer_id);

static uint16_t   m_conn_handle          = BLE_CONN_HANDLE_INVALID;                 /**< Handle of the current connection. */
static uint16_t   m_ble_nus_max_data_len = BLE_GATT_ATT_MTU_DEFAULT - 3;            /**< Maximum length of data (in bytes) that can be transmitted to the peer by the Nordic UART service module. */

static uint8_t   saadc_counter = 0;

static bool      low_power		 = false;
static bool	 run_time_updates	 = false;
static bool	 day_time		 = false;

static ble_uuid_t m_adv_uuids[] =                                                   /**< Universally unique service identifiers. */
{
    {BLE_UUID_DEVICE_INFORMATION_SERVICE, BLE_UUID_TYPE_BLE}
};

/** @brief Function for setting pin status. */
void board_init(void)
{ 
    nrf_gpio_cfg_output(NRF_POWER_EN);
    nrf_delay_us(1000);
    nrf_gpio_pin_set(NRF_POWER_EN);
    nrf_delay_us(1000);
    nrf_gpio_cfg_output(LED_PIN);
    nrf_delay_us(1000);
    nrf_gpio_pin_clear(LED_PIN);
    nrf_delay_us(1000);
}

/**@brief Function for checking day or night time */
bool check_time(struct tm* time_buf) {
  if (time_buf->tm_hour < 11 /* 20 */) {
    return day_time = true;
  }
  else return day_time = false;
}

/**@brief Function for setting standard time of this device.
 * @details it gets actual time from master device over BLE.
 */
void set_initial_time(uint8_t const * date) {
  struct tm initial_time;
  uint16_t i = 0;
  int ptr_date[7] = {0,};

  char *ptr = strtok(date, " ");

  while (ptr != NULL) {
    ptr_date[i] = atoi(ptr);
    ptr = strtok(NULL, " ");
    i++;
  }

  initial_time.tm_year = ptr_date[1];
  initial_time.tm_mon = ptr_date[2];
  initial_time.tm_mday = ptr_date[3];
  initial_time.tm_hour = ptr_date[4];
  initial_time.tm_min = ptr_date[5];
  initial_time.tm_sec = ptr_date[6];

  nrf_cal_set_time(1900 + initial_time.tm_year, initial_time.tm_mon, initial_time.tm_mday, initial_time.tm_hour, initial_time.tm_min, initial_time.tm_sec);
  printf("Time set : %s\n", nrf_cal_get_time_string(false));
}

/**@brief Function for checking time and conducting time_check() function. */
void print_current_time() {
    struct tm* time_value;
    time_value = nrf_cal_get_time_calibrated();
    check_time(time_value);
}

/**@brief Function for calibrating new actual time on calendar. */
void calendar_updated() {
    if(run_time_updates)
    {
        print_current_time();
    }
}

/**@brief Function for assert macro callback.
 *
 * @details This function will be called in case of an assert in the SoftDevice.
 *
 * @warning This handler is an example only and does not fit a final product. You need to analyse
 *          how your product is supposed to react in case of Assert.
 * @warning On assert from the SoftDevice, the system can only recover on reset.
 *
 * @param[in] line_num    Line number of the failing ASSERT call.
 * @param[in] p_file_name File name of the failing ASSERT call.
 */
void assert_nrf_callback(uint16_t line_num, const uint8_t * p_file_name)
{
    app_error_handler(DEAD_BEEF, line_num, p_file_name);
}

/**@brief Function for initializing the timer module.
 */
static void timers_init(void)
{
    ret_code_t err_code = app_timer_init();
    APP_ERROR_CHECK(err_code);
}

/**@brief Function for the GAP initialization.
 *
 * @details This function will set up all the necessary GAP (Generic Access Profile) parameters of
 *          the device. It also sets the permissions and appearance.
 */
static void gap_params_init(void)
{
    uint32_t                err_code;
    ble_gap_conn_params_t   gap_conn_params;
    ble_gap_conn_sec_mode_t sec_mode;

    BLE_GAP_CONN_SEC_MODE_SET_OPEN(&sec_mode);

    err_code = sd_ble_gap_device_name_set(&sec_mode,
                                          (const uint8_t *) DEVICE_NAME,
                                          strlen(DEVICE_NAME));
    APP_ERROR_CHECK(err_code);

    memset(&gap_conn_params, 0, sizeof(gap_conn_params));

    gap_conn_params.min_conn_interval = MIN_CONN_INTERVAL;
    gap_conn_params.max_conn_interval = MAX_CONN_INTERVAL;
    gap_conn_params.slave_latency     = SLAVE_LATENCY;
    gap_conn_params.conn_sup_timeout  = CONN_SUP_TIMEOUT;

    err_code = sd_ble_gap_ppcp_set(&gap_conn_params);
    APP_ERROR_CHECK(err_code);
}

void ctrlLed(bool order) {
    nrf_gpio_pin_write(LED_PIN, order);
    nrf_delay_ms(1000);
}


/**@brief Function for handling Queued Write Module errors.
 *
 * @details A pointer to this function will be passed to each service which may need to inform the
 *          application about an error.
 *
 * @param[in]   nrf_error   Error code containing information about what went wrong.
 */
static void nrf_qwr_error_handler(uint32_t nrf_error)
{
    APP_ERROR_HANDLER(nrf_error);
}

/**@brief Function for controlling current event. 
 * @param[in]   control_evt   current event.
 */
static void sendBle(int control_evt)
{
  char msg[5];
  uint8_t control_msg[5];

  if (checkMap(BLE_EVT_MAP, control_evt)) {
    return;
  }
  setMap(BLE_EVT_MAP, control_evt);

  switch (control_evt)
  {
    case CRIME:
      sprintf(msg, "%d %d", SLAVE_NUM, CRIME);
    break;
    case LEANED:
      if (low_power) return;
      sprintf(msg, "%d %d", SLAVE_NUM, LEANED);
    break;
    case BROKEN:
      sprintf(msg, "%d %d", SLAVE_NUM, BROKEN);
    break;
    case FLAME:
      if (low_power) return;
      sprintf(msg, "%d %d", SLAVE_NUM, FLAME);
    break;
    case POWER_DOWN:
      sprintf(msg, "%d %d", SLAVE_NUM, POWER_DOWN);
    break;
    case POWER_UP:
      sprintf(msg, "%d %d", SLAVE_NUM, POWER_UP);
    break;
    default:
    break;
  }

  memcpy(control_msg, msg, sizeof(msg));
  uint16_t length = sizeof(control_msg);
  ble_nus_data_send(&m_nus, control_msg, &length, m_conn_handle);
  printf("message = %s\n", control_msg);
  memset(control_msg, 0, sizeof(msg));
}

/**@brief Function for handling the data from the Nordic UART Service.
 *
 * @details This function will process the data received from the Nordic UART BLE Service and send
 *          it to the UART module.
 *
 * @param[in] p_evt       Nordic UART Service event.
 */
/**@snippet [Handling the data received over BLE] */
static void nus_data_handler(ble_nus_evt_t * p_evt)
{
    uint8_t * ble_nus_temp[10];
    if (p_evt->type == BLE_NUS_EVT_RX_DATA)
    {
        uint32_t err_code;

        NRF_LOG_DEBUG("Received data from BLE NUS. Writing data on UART.");
        NRF_LOG_HEXDUMP_DEBUG(p_evt->params.rx_data.p_data, p_evt->params.rx_data.length);

        if (p_evt->params.rx_data.p_data[0] == '1') {
	    printf("%s\n", "flash on\n\r");

            if (low_power) return;

	    ctrlLed(true);
	}
        else if (p_evt->params.rx_data.p_data[0] == '2') {
	    printf("%s\n", "flash off\n\r");
	    ctrlLed(false);
	}

	else if (p_evt->params.rx_data.p_data[0] == '3') {
	    set_initial_time(p_evt->params.rx_data.p_data);
	}

        if (p_evt->params.rx_data.p_data[p_evt->params.rx_data.length - 1] == '\r')
        {
            while (app_uart_put('\n') == NRF_ERROR_BUSY);
        }
    }
}
/**@snippet [Handling the data received over BLE] */


/**@brief Function for initializing services that will be used by the application.
 */
static void services_init(void)
{
    uint32_t           err_code;
    ble_nus_init_t     nus_init;
    nrf_ble_qwr_init_t qwr_init = {0};

    // Initialize Queued Write Module.
    qwr_init.error_handler = nrf_qwr_error_handler;

    err_code = nrf_ble_qwr_init(&m_qwr, &qwr_init);
    APP_ERROR_CHECK(err_code);

    // Initialize NUS.
    memset(&nus_init, 0, sizeof(nus_init));

    nus_init.data_handler = nus_data_handler;

    err_code = ble_nus_init(&m_nus, &nus_init);
    APP_ERROR_CHECK(err_code);
}

/**@brief Function for handling an event from the Connection Parameters Module.
 *
 * @details This function will be called for all events in the Connection Parameters Module
 *          which are passed to the application.
 *
 * @note All this function does is to disconnect. This could have been done by simply setting
 *       the disconnect_on_fail config parameter, but instead we use the event handler
 *       mechanism to demonstrate its use.
 *
 * @param[in] p_evt  Event received from the Connection Parameters Module.
 */
static void on_conn_params_evt(ble_conn_params_evt_t * p_evt)
{
    uint32_t err_code;

    if (p_evt->evt_type == BLE_CONN_PARAMS_EVT_FAILED)
    {
        err_code = sd_ble_gap_disconnect(m_conn_handle, BLE_HCI_CONN_INTERVAL_UNACCEPTABLE);
        APP_ERROR_CHECK(err_code);
    }
}


/**@brief Function for handling errors from the Connection Parameters module.
 *
 * @param[in] nrf_error  Error code containing information about what went wrong.
 */
static void conn_params_error_handler(uint32_t nrf_error)
{
    APP_ERROR_HANDLER(nrf_error);
}


/**@brief Function for initializing the Connection Parameters module.
 */
static void conn_params_init(void)
{
    uint32_t               err_code;
    ble_conn_params_init_t cp_init;

    memset(&cp_init, 0, sizeof(cp_init));

    cp_init.p_conn_params                  = NULL;
    cp_init.first_conn_params_update_delay = FIRST_CONN_PARAMS_UPDATE_DELAY;
    cp_init.next_conn_params_update_delay  = NEXT_CONN_PARAMS_UPDATE_DELAY;
    cp_init.max_conn_params_update_count   = MAX_CONN_PARAMS_UPDATE_COUNT;
    cp_init.start_on_notify_cccd_handle    = BLE_GATT_HANDLE_INVALID;
    cp_init.disconnect_on_fail             = false;
    cp_init.evt_handler                    = on_conn_params_evt;
    cp_init.error_handler                  = conn_params_error_handler;

    err_code = ble_conn_params_init(&cp_init);
    APP_ERROR_CHECK(err_code);
}


/**@brief Function for putting the chip into sleep mode.
 *
 * @note This function will not return.
 */
static void sleep_mode_enter(void)
{
    uint32_t err_code = bsp_indication_set(BSP_INDICATE_IDLE);
    APP_ERROR_CHECK(err_code);

    // Prepare wakeup buttons.
    err_code = bsp_btn_ble_sleep_mode_prepare();
    APP_ERROR_CHECK(err_code);

    // Go to system-off mode (this function will not return; wakeup will cause a reset).
    err_code = sd_power_system_off();
    APP_ERROR_CHECK(err_code);
}


/**@brief Function for handling advertising events.
 *
 * @details This function will be called for advertising events which are passed to the application.
 *
 * @param[in] ble_adv_evt  Advertising event.
 */
static void on_adv_evt(ble_adv_evt_t ble_adv_evt)
{
    uint32_t err_code;

    switch (ble_adv_evt)
    {
        case BLE_ADV_EVT_FAST:
            err_code = bsp_indication_set(BSP_INDICATE_ADVERTISING);
            APP_ERROR_CHECK(err_code);
            break;
        case BLE_ADV_EVT_IDLE:
            sleep_mode_enter();
            break;
        default:
            break;
    }
}

/**@brief Function for starting advertising.
 */
static void advertising_start(void)
{
    uint32_t err_code = ble_advertising_start(&m_advertising, BLE_ADV_MODE_FAST);
    APP_ERROR_CHECK(err_code);
}

/**@brief Function for handling BLE events.
 *
 * @param[in]   p_ble_evt   Bluetooth stack event.
 * @param[in]   p_context   Unused.
 */
static void ble_evt_handler(ble_evt_t const * p_ble_evt, void * p_context)
{
    uint32_t err_code;

    switch (p_ble_evt->header.evt_id)
    {
        case BLE_GAP_EVT_CONNECTED:
            NRF_LOG_INFO("Connected");
            err_code = bsp_indication_set(BSP_INDICATE_CONNECTED);
            APP_ERROR_CHECK(err_code);
            m_conn_handle = p_ble_evt->evt.gap_evt.conn_handle;
            err_code = nrf_ble_qwr_conn_handle_assign(&m_qwr, m_conn_handle);
            APP_ERROR_CHECK(err_code);
            sd_ble_gap_adv_stop(m_advertising.adv_handle);
            bsp_board_led_off(BSP_BOARD_LED_0);
            bsp_board_led_on(BSP_BOARD_LED_1);
            break;

        case BLE_GAP_EVT_DISCONNECTED:
            NRF_LOG_INFO("Disconnected");
            err_code = bsp_indication_set(BSP_INDICATE_ADVERTISING);
            APP_ERROR_CHECK(err_code);
            // LED indication will be changed when advertising starts.
            m_conn_handle = BLE_CONN_HANDLE_INVALID;
            bsp_board_led_off(BSP_BOARD_LED_1);
            bsp_board_led_on(BSP_BOARD_LED_0);
            break;

        case BLE_GAP_EVT_PHY_UPDATE_REQUEST:
        {
            NRF_LOG_DEBUG("PHY update request.");
            ble_gap_phys_t const phys =
            {
                .rx_phys = BLE_GAP_PHY_AUTO,
                .tx_phys = BLE_GAP_PHY_AUTO,
            };
            err_code = sd_ble_gap_phy_update(p_ble_evt->evt.gap_evt.conn_handle, &phys);
            APP_ERROR_CHECK(err_code);
        } break;

        case BLE_GAP_EVT_SEC_PARAMS_REQUEST:
            // Pairing not supported
            err_code = sd_ble_gap_sec_params_reply(m_conn_handle, BLE_GAP_SEC_STATUS_PAIRING_NOT_SUPP, NULL, NULL);
            APP_ERROR_CHECK(err_code);
            break;

        case BLE_GATTS_EVT_SYS_ATTR_MISSING:
            // No system attributes have been stored.
            err_code = sd_ble_gatts_sys_attr_set(m_conn_handle, NULL, 0, 0);
            APP_ERROR_CHECK(err_code);
            break;

        case BLE_GATTC_EVT_TIMEOUT:
            // Disconnect on GATT Client timeout event.
            err_code = sd_ble_gap_disconnect(p_ble_evt->evt.gattc_evt.conn_handle,
                                             BLE_HCI_REMOTE_USER_TERMINATED_CONNECTION);
            APP_ERROR_CHECK(err_code);
            break;

        case BLE_GATTS_EVT_TIMEOUT:
            // Disconnect on GATT Server timeout event.
            err_code = sd_ble_gap_disconnect(p_ble_evt->evt.gatts_evt.conn_handle,
                                             BLE_HCI_REMOTE_USER_TERMINATED_CONNECTION);
            APP_ERROR_CHECK(err_code);
            break;

        default:
            // No implementation needed.
            break;
    }
}


/**@brief Function for the SoftDevice initialization.
 *
 * @details This function initializes the SoftDevice and the BLE event interrupt.
 */
static void ble_stack_init(void)
{
    ret_code_t err_code;

    err_code = nrf_sdh_enable_request();
    APP_ERROR_CHECK(err_code);

    // Configure the BLE stack using the default settings.
    // Fetch the start address of the application RAM.
    uint32_t ram_start = 0;
    err_code = nrf_sdh_ble_default_cfg_set(APP_BLE_CONN_CFG_TAG, &ram_start);
    APP_ERROR_CHECK(err_code);

    // Enable BLE stack.
    err_code = nrf_sdh_ble_enable(&ram_start);
    APP_ERROR_CHECK(err_code);

    // Register a handler for BLE events.
    NRF_SDH_BLE_OBSERVER(m_ble_observer, APP_BLE_OBSERVER_PRIO, ble_evt_handler, NULL);
}


/**@brief Function for handling events from the GATT library. */
void gatt_evt_handler(nrf_ble_gatt_t * p_gatt, nrf_ble_gatt_evt_t const * p_evt)
{
    if ((m_conn_handle == p_evt->conn_handle) && (p_evt->evt_id == NRF_BLE_GATT_EVT_ATT_MTU_UPDATED))
    {
        m_ble_nus_max_data_len = p_evt->params.att_mtu_effective - OPCODE_LENGTH - HANDLE_LENGTH;
        NRF_LOG_INFO("Data len is set to 0x%X(%d)", m_ble_nus_max_data_len, m_ble_nus_max_data_len);
    }
    NRF_LOG_DEBUG("ATT MTU exchange completed. central 0x%x peripheral 0x%x",
                  p_gatt->att_mtu_desired_central,
                  p_gatt->att_mtu_desired_periph);
}


/**@brief Function for initializing the GATT library. */
void gatt_init(void)
{
    ret_code_t err_code;

    err_code = nrf_ble_gatt_init(&m_gatt, gatt_evt_handler);
    APP_ERROR_CHECK(err_code);

    err_code = nrf_ble_gatt_att_mtu_periph_set(&m_gatt, NRF_SDH_BLE_GATT_MAX_MTU_SIZE);
    APP_ERROR_CHECK(err_code);
}


/**@brief Function for handling events from the BSP module.
 *
 * @param[in]   event   Event generated by button press.
 */
void bsp_event_handler(bsp_event_t event)
{
    uint32_t err_code;
    switch (event)
    {
        case BSP_EVENT_SLEEP:
            sleep_mode_enter();
            break;

        case BSP_EVENT_DISCONNECT:
            err_code = sd_ble_gap_disconnect(m_conn_handle, BLE_HCI_REMOTE_USER_TERMINATED_CONNECTION);
            if (err_code != NRF_ERROR_INVALID_STATE)
            {
                APP_ERROR_CHECK(err_code);
            }
            break;

        case BSP_EVENT_WHITELIST_OFF:
            if (m_conn_handle == BLE_CONN_HANDLE_INVALID)
            {
                err_code = ble_advertising_restart_without_whitelist(&m_advertising);
                if (err_code != NRF_ERROR_INVALID_STATE)
                {
                    APP_ERROR_CHECK(err_code);
                }
            }
            break;

        default:
            break;
    }
}


/**@brief   Function for handling app_uart events.
 *
 * @details This function will receive a single character from the app_uart module and append it to
 *          a string. The string will be be sent over BLE when the last character received was a
 *          'new line' '\n' (hex 0x0A) or if the string has reached the maximum data length.
 */
/**@snippet [Handling the data received over UART] */
void uart_event_handle(app_uart_evt_t * p_event)
{
}

/**@snippet [Handling the data received over UART] */

/**@brief  Function for initializing the UART module.
 */
/**@snippet [UART Initialization] */
static void uart_init(void)
{
    uint32_t                     err_code;
    app_uart_comm_params_t const comm_params =
    {
        .rx_pin_no    = RX_PIN_NUMBER,
        .tx_pin_no    = TX_PIN_NUMBER,
        .rts_pin_no   = RTS_PIN_NUMBER,
        .cts_pin_no   = CTS_PIN_NUMBER,
        .flow_control = APP_UART_FLOW_CONTROL_DISABLED,
        .use_parity   = false,
#if defined (UART_PRESENT)
        .baud_rate    = NRF_UART_BAUDRATE_115200
#else
        .baud_rate    = NRF_UARTE_BAUDRATE_115200
#endif
    };

    APP_UART_FIFO_INIT(&comm_params,
                       UART_RX_BUF_SIZE,
                       UART_TX_BUF_SIZE,
                       uart_event_handle,
                       APP_IRQ_PRIORITY_LOWEST,
                       err_code);
    APP_ERROR_CHECK(err_code);
}
/**@snippet [UART Initialization] */


/**@brief Function for initializing the Advertising functionality.
 */
static void advertising_init(void)
{
    ret_code_t  err_code;
    ble_advertising_init_t init;
    memset(&init, 0, sizeof(init));

    init.advdata.name_type          = BLE_ADVDATA_SHORT_NAME;
    init.advdata.short_name_len     = true;
    init.advdata.include_appearance = false;
    init.advdata.flags              = BLE_GAP_ADV_FLAGS_LE_ONLY_GENERAL_DISC_MODE;
    init.srdata.uuids_complete.uuid_cnt = sizeof(m_adv_uuids) / sizeof(m_adv_uuids[0]);
    init.srdata.uuids_complete.p_uuids  = m_adv_uuids;
    int8_t tx_power_level = -40;
    init.advdata.p_tx_power_level = &tx_power_level;

    init.config.ble_adv_fast_enabled  = true;
    init.config.ble_adv_fast_interval = APP_ADV_INTERVAL;
    init.config.ble_adv_fast_timeout  = APP_ADV_DURATION;

    init.evt_handler = on_adv_evt;

    err_code = ble_advertising_init(&m_advertising, &init);
    APP_ERROR_CHECK(err_code);

    ble_advertising_conn_cfg_tag_set(&m_advertising, APP_BLE_CONN_CFG_TAG);
}


/**@brief Function for initializing buttons and leds.
 *
 * @param[out] p_erase_bonds  Will be true if the clear bonding button was pressed to wake the application up.
 */
static void buttons_leds_init(bool * p_erase_bonds)
{
    bsp_event_t startup_event;

    uint32_t err_code = bsp_init(BSP_INIT_LEDS | BSP_INIT_BUTTONS, bsp_event_handler);
    APP_ERROR_CHECK(err_code);

    err_code = bsp_btn_ble_init(NULL, &startup_event);
    APP_ERROR_CHECK(err_code);

    *p_erase_bonds = (startup_event == BSP_EVENT_CLEAR_BONDING_DATA);
}


/**@brief Function for initializing the nrf log module.
 */
static void log_init(void)
{
    ret_code_t err_code = NRF_LOG_INIT(NULL);
    APP_ERROR_CHECK(err_code);

    NRF_LOG_DEFAULT_BACKENDS_INIT();
}


/**@brief Function for initializing power management.
 */
static void power_management_init(void)
{
    ret_code_t err_code;
    err_code = nrf_pwr_mgmt_init();
    APP_ERROR_CHECK(err_code);
}



/**@brief Application main function.
 */
void timer_handler(nrf_timer_event_t event_type, void * p_context)
{

}

/**@brief Function for initializing the sampling event of saadc(Successive approximation analog-to-digital converter)
 */
void saadc_sampling_event_init(void)
{
    ret_code_t err_code;

    err_code = nrf_drv_ppi_init();
    APP_ERROR_CHECK(err_code);

    nrf_drv_timer_config_t timer_cfg = NRF_DRV_TIMER_DEFAULT_CONFIG;
    timer_cfg.frequency = NRF_TIMER_FREQ_31250Hz;
    err_code = nrf_drv_timer_init(&m_timer, &timer_cfg, timer_handler);
    APP_ERROR_CHECK(err_code);

    /* setup m_timer for compare event every 250ms */
    uint32_t ticks = nrf_drv_timer_ms_to_ticks(&m_timer, 1000);
    /* NRF_TIMER_CC_CHANNEL0 is used by Softdevice so, we should use other channel instead of channel 0 */
    nrf_drv_timer_extended_compare(&m_timer,
                                   NRF_TIMER_CC_CHANNEL0,
                                   ticks,
                                   NRF_TIMER_SHORT_COMPARE0_CLEAR_MASK,
                                   false);
    nrf_drv_timer_enable(&m_timer);

    uint32_t timer_compare_event_addr = nrf_drv_timer_compare_event_address_get(&m_timer,
                                                                                NRF_TIMER_CC_CHANNEL0);
    uint32_t saadc_sample_task_addr   = nrf_drv_saadc_sample_task_get();

    /* setup ppi channel so that timer compare event is triggering sample task in SAADC */
    err_code = nrf_drv_ppi_channel_alloc(&m_ppi_channel);
    APP_ERROR_CHECK(err_code);

    err_code = nrf_drv_ppi_channel_assign(m_ppi_channel,
                                          timer_compare_event_addr,
                                          saadc_sample_task_addr);
    APP_ERROR_CHECK(err_code);
}

/**@brief Function for enabling sampling event of saadc
 */
void saadc_sampling_event_enable(void)
{
    ret_code_t err_code = nrf_drv_ppi_channel_enable(m_ppi_channel);

    APP_ERROR_CHECK(err_code);
}

bool isFlame(nrf_saadc_value_t* flame_value) {
  if ((flame_value[FLAME_CHANNEL] <= TRIGGER_FLA) && (!day_time)) {
    return true;
  }
  else return false;
}

/**@brief Function for handling the event of saadc sampling result
 *          It can judge situations of DISASTERS, BATTERY LEVEL and CHIP TEMPERATURE.
 *
 * @param[in]   event   Event generated by analog-to-digital convert.
 */
void saadc_callback(nrf_drv_saadc_evt_t const * p_event)
{
    if (p_event->type == NRF_DRV_SAADC_EVT_DONE)
    {
        ret_code_t err_code;
        nrf_saadc_value_t bat_result;
        uint16_t          batt_lvl_in_milli_volts;
        uint8_t           percentage_batt_lvl;
        uint8_t saadc_temp[30];

        saadc_counter++;

        err_code = nrf_drv_saadc_buffer_convert(p_event->data.done.p_buffer, SAMPLES_IN_BUFFER);
        APP_ERROR_CHECK(err_code);

        bat_result = p_event->data.done.p_buffer[BAT_CHANNEL];

        batt_lvl_in_milli_volts = ADC_RESULT_IN_MILLI_VOLTS(bat_result) +
                                  DIODE_FWD_VOLT_DROP_MILLIVOLTS;
	// printf("%d\n%d\n", bat_result, batt_lvl_in_milli_volts);
        percentage_batt_lvl = battery_level_in_percent(batt_lvl_in_milli_volts);

        ctrlPower(percentage_batt_lvl);

        sprintf(saadc_temp, "%d %d\n\r", p_event->data.done.p_buffer[FLAME_CHANNEL], percentage_batt_lvl);
//        printf(saadc_temp);

        if (isFlame(p_event->data.done.p_buffer)) {
          sendBle(FLAME);
        }

        if(saadc_counter == 10)
        {
            NRF_LOG_INFO("saadc stopped\n");
            nrf_drv_ppi_channel_disable(m_ppi_channel);
            nrf_drv_timer_disable(&m_timer);
            nrf_saadc_task_trigger(NRF_SAADC_TASK_STOP);
            nrf_saadc_event_clear(NRF_SAADC_EVENT_STARTED);
            nrf_saadc_event_clear(NRF_SAADC_EVENT_END);
            nrf_saadc_disable();
            nrf_gpio_pin_clear(NRF_POWER_EN);
            saadc_counter = 0;            
        }
    }
}

/**@brief Function for initializing the saadc
 */
void saadc_init(void)
{
    ret_code_t err_code;
    
    nrf_drv_saadc_config_t saadc_config = NRF_DRV_SAADC_DEFAULT_CONFIG;
    saadc_config.resolution = NRF_SAADC_RESOLUTION_12BIT;

    ch_config_flame.gain = NRF_SAADC_GAIN1_4;
    ch_config_flame.reference = NRF_SAADC_REFERENCE_INTERNAL;
    ch_config_bat.gain = NRF_SAADC_GAIN1_6;
    ch_config_bat.reference = NRF_SAADC_REFERENCE_INTERNAL;

    err_code = nrf_drv_saadc_init(&saadc_config, saadc_callback);
    APP_ERROR_CHECK(err_code);

    err_code = nrf_drv_saadc_channel_init(FLAME_CHANNEL, &ch_config_flame);
    APP_ERROR_CHECK(err_code);

    err_code = nrf_drv_saadc_channel_init(BAT_CHANNEL, &ch_config_bat);
    APP_ERROR_CHECK(err_code);

    err_code = nrf_drv_saadc_buffer_convert(m_buffer_pool[0], SAMPLES_IN_BUFFER);
    APP_ERROR_CHECK(err_code);

    err_code = nrf_drv_saadc_buffer_convert(m_buffer_pool[1], SAMPLES_IN_BUFFER);
    APP_ERROR_CHECK(err_code);
}


/**@brief Function for TWI (with transaction manager and twi_sensor) initialization.
 */
static void twi_init(void)
{
    uint32_t err_code;
    
    const nrf_drv_twi_config_t ii_config = {
       .scl                = ARDUINO_SCL_PIN,
       .sda                = ARDUINO_SDA_PIN,
       .frequency          = NRF_DRV_TWI_FREQ_100K,
       .interrupt_priority = APP_IRQ_PRIORITY_HIGHEST,
       .clear_bus_init     = false
    };

    err_code = nrf_twi_mngr_init(&m_nrf_twi_mngr, &ii_config);
    APP_ERROR_CHECK(err_code);

    err_code = nrf_twi_sensor_init(&m_nrf_twi_sensor);
    APP_ERROR_CHECK(err_code);
}

/**@brief Function for TWI Reset (with transaction manager and twi_sensor) reset.
 */
static void twi_reset(void)
{
    uint32_t err_code;
    
    const nrf_drv_twi_config_t ii_config = {
       .scl                = ARDUINO_SCL_PIN,
       .sda                = ARDUINO_SDA_PIN,
       .frequency          = NRF_DRV_TWI_FREQ_100K,
       .interrupt_priority = APP_IRQ_PRIORITY_HIGHEST,
       .clear_bus_init     = true
    };

    nrf_twi_mngr_uninit(&m_nrf_twi_mngr);
    
    err_code = nrf_twi_mngr_init(&m_nrf_twi_mngr, &ii_config);
    APP_ERROR_CHECK(err_code);

    err_code = nrf_twi_sensor_init(&m_nrf_twi_sensor);
    APP_ERROR_CHECK(err_code);  
}

/**@brief Function for connection with the iis2dlpc_read_reg function and nrf52840 SDK.
 * @param[out] return Should be 0.
 */
int32_t platform_read(void *handle, uint8_t reg, uint8_t *bufp, uint16_t len)
{
 nrf_twi_sensor_reg_read(&m_nrf_twi_sensor, II_ADDR, reg, NULL, bufp, len);
 nrf_delay_us(1000);
 NRF_LOG_FLUSH();
 return 0;
}

/**@brief Function for connection with the iis2dlpc_write_reg function and nrf52840 SDK.
 * @param[out] return Should be 0.
 */
int32_t platform_write(void *handle, uint8_t reg, uint8_t *bufp, uint16_t len)
{
 nrf_twi_sensor_reg_write(&m_nrf_twi_sensor, II_ADDR, reg, bufp, len);  
 nrf_delay_us(1000);
 NRF_LOG_FLUSH();
 return 0;
}

/**@brief Function for initializing iis2dlpc sensor.
 * @details This function sets states of the iis2dlpc sensor and can affect
 *          the sensitivity of the sensor.
 *          If you failed to get device ID, you can push reset button to solve the issue easily
 */
 void platform_init(void)
{
  twi_init();
  dev_ctx.write_reg = platform_write;
  dev_ctx.read_reg = platform_read;
  dev_ctx.handle = NULL;
  iis2dlpc_device_id_get(&dev_ctx, &whoamI);
  while(whoamI != IIS2DLPC_ID)
  {
      printf("\n\rdevice_id_get failed\n\r");
      twi_reset();
      iis2dlpc_device_id_get(&dev_ctx, &whoamI);
  }
  iis2dlpc_reset_set(&dev_ctx, PROPERTY_ENABLE);
  do {
    iis2dlpc_reset_get(&dev_ctx, &rst);
  } while (rst);
  iis2dlpc_block_data_update_set(&dev_ctx, PROPERTY_ENABLE);
  iis2dlpc_full_scale_set(&dev_ctx, IIS2DLPC_16g);
  iis2dlpc_filter_path_set(&dev_ctx, IIS2DLPC_LPF_ON_OUT);
  iis2dlpc_filter_bandwidth_set(&dev_ctx, IIS2DLPC_ODR_DIV_20);
  iis2dlpc_power_mode_set(&dev_ctx, IIS2DLPC_HIGH_PERFORMANCE_LOW_NOISE);
  iis2dlpc_data_rate_set(&dev_ctx, IIS2DLPC_XL_ODR_1k6Hz);
  printf("\n\rall settings are completed\n\r");
}


// TODO(100): Inner code should be changed with the code which performs analysis by AI. (~Sprint 14 maybe)
bool isCrime(float evt) {
  
  if(evt<Beta && similarity[0]<1){
    similarity[0] = 1;
    similarity[1] = evt;
  }
  if(evt>Beta && similarity[0]<2){
    similarity[0] = 2;
    similarity[1] = evt;
  } 
  if(evt>Alpha && similarity[0]<3){
    similarity[0] = 3;
    similarity[1] = evt;
  }
  if(similarity[0]>1) return true;
  else return false;
}

bool isWander(float evt) {
  if(evt<Beta && similarity[2]<1){
    similarity[2] = 1;
    similarity[3] = evt;
  }
  if(evt>Beta && similarity[2]<2){
    similarity[2] = 2;
    similarity[3] = evt;
  } 
  if(evt>Alpha && similarity[2]<3){
    similarity[2] = 3;
    similarity[3] = evt;
  }
  if(similarity[2]>1) return true;
  else return false;
}

// TODO(100): Should be coded more precisely. It's not solid yet. (~Sprint 12 maybe)
bool isBroken(float* difference) {
  for (int i = 0; i < 3; i++) {
    acceleration_mg[i] = iis2dlpc_from_fs2_to_mg(data_raw_acceleration.i16bit[i]);
    difference[i] = acceleration_mg[i] - previous_value[i];

    if (fabs(difference[i]) >= TRIGGER_DIG) {
      return true;
    }
  }
  return false;
}

/**@brief Function for checking whether device is tilted or not. */
bool checkEnv(float* angle) {
  for (int i = 0; i < 2; i++) {
    angle[i] = round(atan2(acceleration_mg[i],acceleration_mg[2])*(180/M_PI));
    if (fabs(angle[i]) >= TRIGGER_TIL) {
      return true;
    }
  }
  return false;
}

/**@brief Function for removing duplicated number counts while data calculation */
int rmdup(int *arr, int len, int num) 
{
  int prev = 0;
  int curr = 1;
  int last = len - 1;
  
  while (curr <= last) {
    for (prev = 0; prev < curr && arr[curr] != arr[prev]; ++prev);
    if (prev == curr) {
      ++curr;
    } else {
      arr[curr] = arr[last];
      --last;
    }
  }
  return curr;
}

/**@brief Function for calculating average, standard deviation, count */
void data_calculation(void) { 
  float devi[5] = {0, };

  for(int i = 0; i < 5; i++){
      for(int j = 0; j < SIZE; j++){
        cal_data[0][i] += (float)data[i][j]/count;
      }
  }
  for(int i = 0; i < 5; i++){
      for(int j = 0; j < SIZE; j++){
        devi[i] += pow(data[i][j]-cal_data[0][i],2)/count;
      }
      cal_data[1][i]= sqrt(devi[i]);
    }
  for(int i = 0; i < 5; i++){
    cal_data[2][i] = rmdup(data[i],count, i);
  }

//  printf("x = %d\ty = %d\tz = %d\ta = %d\tb = %d\n",data[0][count-1],data[1][count-1],data[2][count-1],data[3][count-1],data[4][count-1]);
//  printf("Avr x = %3.3f\tAvr y = %3.3f\tAvr z = %3.3f\tAvr a = %3.3f\tAvr b = %3.3f\n",cal_data[0][0], cal_data[0][1], cal_data[0][2], cal_data[0][3], cal_data[0][4]);
//  printf("Std x = %3.3f\tStd y = %3.3f\tStd z = %3.3f\tStd a = %3.3f\tStd b = %3.3f\n",cal_data[1][0], cal_data[1][1], cal_data[1][2], cal_data[1][3], cal_data[1][4]);
//  printf("Cnt x = %d\tCnt y = %d\tCnt z = %d\tCnt a = %d\tCnt b = %d\n",(int)cal_data[2][0],(int)cal_data[2][1],(int)cal_data[2][2],(int)cal_data[2][3],(int)cal_data[2][4]);

  memset(data,0x00,sizeof(float)*5*SIZE);
}

/**@brief Function for checking silmilarities. */
void data_comparison(void){ 
  float Evt_match = 0;

  for (int i = 0; i < 5; i++) {
    Evt_match += fabs(S[i]/(w[i]*Am[i]-cal_data[0][i]))/15;
  }
  for (int i = 0; i < 5; i++) {
    Evt_match += fabs(S[i+5]/(w[i+5]*Am[i+5]-cal_data[1][i]))/15;
  }
  for (int i = 0; i < 5; i++) {
    Evt_match += fabs(S[i+10]/(w[i+10]*Am[i+10]-cal_data[2][i]))/15;
  }
  
  if(isCrime(Evt_match)) {
    sendBle(CRIME);
  }

//  printf("Lv %d situation, similarity = %3.3f\n",(int)similarity[0], similarity[1]);

  memset(cal_data, 0x00, sizeof(float)*5*3);
  memset(similarity,0x00,sizeof(float)*2);
} 

/**@brief Function for activating main function of iis2dlpc sensor.
 * @details This function takes raw data from the sensor register and transmits it to the MCU,
 *          converts the data into readable and outputs it.
 *          If the state of the sensor is not ready to get new raw data, initialize all the 
 *          variables' value in this function every time. (except with current/previous_value)
 *          It can judge situations of CRIME and TILT as well.
 * @param[out] return can be anything.
 */
void readAcc(void) {  
  uint8_t reg;
  float difference[3]= {0, };

  iis2dlpc_flag_data_ready_get(&dev_ctx, &reg);
  if(reg) {    
    memset(data_raw_acceleration.u8bit, 0x00, 3 * sizeof(int16_t));

    iis2dlpc_acceleration_raw_get(&dev_ctx, data_raw_acceleration.u8bit);

    for(int i=0; i <3; i++){
      data[i][count] = round(iis2dlpc_from_fs2_to_mg(data_raw_acceleration.i16bit[i]));
    }
    for (int i = 3; i < 5; i++) {
      data[i][count] = round(atan2(data[i-3][count],data[2][count])*(180/M_PI));
    }
    count++;

//    if (isBroken(difference)) {
//      sendBle(BROKEN);
//    }

//    if (checkEnv(angle)) {
//      sendBle(LEANED);
//    }
    
    //printf("current: %f  %f  %f\n\r", acceleration_mg[0], acceleration_mg[1], acceleration_mg[2]);
//    printf("difference: %f  %f  %f\n\r", difference[0], difference[1], difference[2]);
//    printf("angle: %f %f\n\r", angle[0], angle[1]);
  }
  else {
    memset(data_raw_acceleration.u8bit, 0x00, 3 * sizeof(int16_t));
  }
  if(count == SIZE) {
    data_calculation();
    data_comparison();
    count = 0;
  }
  memcpy(previous_value, acceleration_mg, sizeof(acceleration_mg));
}

/**@brief Function for handling the idle state (main loop).
 *
 * @details If there is no pending log operation, then sleep until next the next event occurs.
 */
void idle_state_handle(void)
{
    if (NRF_LOG_PROCESS() == false)
    {
        nrf_pwr_mgmt_run();
    }
}

/**@snippet [UART Initialization] */
/**@brief Function for initializing and handling timer modules.
 */
static void repeated_timer_handler(void * p_context)
{
    NRF_LOG_INFO("saadc(normal) started\n");
    for (int event = 0; event < 6; event++) {
      clearMap(BLE_EVT_MAP, event);
    }
    nrf_gpio_pin_set(NRF_POWER_EN);
    nrf_saadc_enable();
    nrf_saadc_task_trigger(NRF_SAADC_TASK_START);
    nrf_drv_timer_enable(&m_timer);
    nrf_drv_ppi_channel_enable(m_ppi_channel);
}

static void psm_timer_handler(void * p_context)
{
    NRF_LOG_INFO("saadc(psm) started\n");
    for (int event = 0; event < 6; event++) {
      clearMap(BLE_EVT_MAP, event);
    }
    nrf_gpio_pin_set(NRF_POWER_EN);
    nrf_saadc_enable();
    nrf_saadc_task_trigger(NRF_SAADC_TASK_START);
    nrf_drv_timer_enable(&m_timer);
    nrf_drv_ppi_channel_enable(m_ppi_channel);    
}

static void create_timers()
{
    ret_code_t err_code;
    err_code = app_timer_create(&m_repeated_timer_id,
                                APP_TIMER_MODE_REPEATED,
                                repeated_timer_handler);
    APP_ERROR_CHECK(err_code);

    err_code = app_timer_create(&m_psm_timer_id,
                                APP_TIMER_MODE_REPEATED,
                                psm_timer_handler);
    APP_ERROR_CHECK(err_code);
}

static void start_repeated_timer()
{
    ret_code_t err_code;
    err_code = app_timer_start(m_repeated_timer_id, APP_TIMER_TICKS(20000), NULL); //1020000(17min)
    APP_ERROR_CHECK(err_code);
}

static void start_psm_timer()
{
    ret_code_t err_code;
    err_code = app_timer_start(m_psm_timer_id, APP_TIMER_TICKS(20000), NULL); //3600000
    APP_ERROR_CHECK(err_code);
}
/**@snippet [UART Initialization] */

//needs an optimization.
/** @brief Function for controlling power mode.
 */
void ctrlPower(int16_t bat_level)
{
    if(!low_power)
    {
        if(bat_level < TRIGGER_BAT)
        {
            low_power = true;
            app_timer_stop(m_repeated_timer_id);
	    start_psm_timer();
            // setMap(BLE_EVT_MAP, POWER_DOWN);
	    sendBle(POWER_DOWN);
            NRF_LOG_INFO("pwr_saving mode and %d\n", nrf_gpio_pin_out_read(NRF_POWER_EN));    
        }
    }
    else
    {
        if(bat_level >= TRIGGER_BAT +5UL)
        {
            low_power = false;
	    app_timer_stop(m_psm_timer_id);
            start_repeated_timer();
            // setMap(BLE_EVT_MAP, POWER_UP);
            sendBle(POWER_UP);
            NRF_LOG_INFO("not pwr_saving mode and %d\n", nrf_gpio_pin_out_read(NRF_POWER_EN));
        }
    }
}

int main(void) {
    bool erase_bonds;

     NRF_CLOCK->EVENTS_HFCLKSTARTED = 0;
    NRF_CLOCK->TASKS_HFCLKSTART = 1;
    while(NRF_CLOCK->EVENTS_HFCLKSTARTED == 0);

    board_init();
    log_init();
    timers_init();

    nrf_cal_init();
    nrf_cal_set_callback(calendar_updated, 4);

    uart_init();
    buttons_leds_init(&erase_bonds);
    power_management_init();
    ble_stack_init();
    sd_power_dcdc_mode_set(NRF_POWER_DCDC_ENABLE);
    gap_params_init();
    gatt_init();
    platform_init();
    services_init();
    advertising_init();
    conn_params_init();
    saadc_init();
    saadc_sampling_event_init();
    
    create_timers();
    start_repeated_timer();

    saadc_sampling_event_enable();    
   
    advertising_start();

    nrf_delay_ms(5000);

    for (;;) {
      print_current_time();
      readAcc();
      nrf_delay_us(1000);
    }
}
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
/**
 * @brief BLE LED Button Service central and client application main file.
 *
 * This example can be a central for up to 8 peripherals.
 * The peripheral is called ble_app_blinky and can be found in the ble_peripheral
 * folder.
 */

#include "master_util.h"

// TODO(100): Declare & define the code related with accelerometer. (~Sprint 12) to Sam
static axis3bit16_t          data_raw_acceleration;                                 /**< Load raw data from iis2dlpc sensor into this variable. */ 
static iis2dlpc_ctx_t        dev_ctx;                                               /**< Handle iis2dlpc sensor's read/write instance with this variable. */
static uint8_t               whoamI, rst;                                           /**< Validate iis2dlpc sensor address and status to use. */ 
static float acceleration_mg[3];                                                    /**< Convert raw data to float(usable) data into this variable by using iis2dlpc sdk. */
static float previous_value[3] = {0};                                                 /**< Previous data to use dto62 private function. */

NRF_BLE_GATT_DEF(m_gatt);                                                       /**< GATT module instance. */
BLE_NUS_C_ARRAY_DEF(m_ble_nus_c, NRF_SDH_BLE_TOTAL_LINK_COUNT);
BLE_DB_DISCOVERY_ARRAY_DEF(m_db_disc, NRF_SDH_BLE_TOTAL_LINK_COUNT);            /**< Database discovery module instances. */
NRF_BLE_SCAN_DEF(m_scan);                                                       /**< Scanning Module instance. */
NRF_TWI_MNGR_DEF(m_nrf_twi_mngr, MAX_PENDING_TRANSACTIONS, 0);                          /**< TWI transaction manager instance. */
NRF_TWI_SENSOR_DEF(m_nrf_twi_sensor, &m_nrf_twi_mngr, NRF_TWI_SENSOR_SEND_BUF_SIZE);    /**< TWI sensor instance. */
APP_TIMER_DEF(m_repeated_timer_id);
APP_TIMER_DEF(m_psm_timer_id);
APP_TIMER_DEF(m_lte_timer_id);

static nrf_saadc_channel_config_t ch_config_bat = NRF_DRV_SAADC_DEFAULT_CHANNEL_CONFIG_SE(BAT_PIN);         /**< The saadc cnannel configuration of battery(vdd). */
static const nrf_drv_timer_t m_timer = NRF_DRV_TIMER_INSTANCE(3);               /**< The channel of used timer triver. */
static char const m_target_periph_name[] = "Nordic_Blinky";                     /**< Name of the device to try to connect to. This name is searched for in the scanning report data. */

static nrf_saadc_value_t m_buffer_pool[2][SAMPLES_IN_BUFFER];                                      /**< The storage of 4 values which are results of saadc. */
static nrf_ppi_channel_t     m_ppi_channel;                                     /**< The ppi instance for interconnecting timer and saadc. */
static uint16_t m_ble_nus_max_data_len = BLE_GATT_ATT_MTU_DEFAULT - OPCODE_LENGTH - HANDLE_LENGTH;          /**< The maximum length of ble data. */
static uint8_t m_ble_nus_c_count;                                               /**< The instance of present connected count of ble devices. */

static uint8_t                          m_new_command_received = 0;
static uint8_t                          m_new_resolution, m_new_phy;
static arducam_mini_2mp_init_t          m_camera_init;

static uint8_t temp_array[BLE_NUS_MAX_DATA_LEN];
//char msg_input[100] = "{\"data\": \"";
//char* msg_current = &msg_input[10];


static uint8_t   saadc_counter = 0;

static uint8_t temp_array[BLE_NUS_MAX_DATA_LEN];
static uint8_t* temp_current = temp_array;

int slave_count = 0;

bool ble_status = false;

static bool      low_power               = false;
static bool      arducam_stop            = false;
static bool      cam_working             = false;
static bool	 run_time_updates	 = false;
static bool	 reptForCtTime		 = false;

static ble_uuid_t const m_nus_uuid =                                            /**< Universally unique service identifiers. */
{
    .uuid = BLE_UUID_DEVICE_INFORMATION_SERVICE,
    .type = BLE_UUID_TYPE_BLE
};

void board_init(void)
{ 
    nrf_gpio_cfg_output(NRF_POWER_EN);
    nrf_gpio_pin_set(NRF_POWER_EN);
    nrf_delay_us(1000);
    nrf_gpio_cfg_output(CAMERA_EN);
    nrf_gpio_pin_set(CAMERA_EN);
    nrf_delay_us(1000);
}

bool check_time2(struct tm* time_buf) {
  switch (time_buf->tm_hour)
  {
    case 8:
      if (reptForCtTime == false && time_buf->tm_min == 0) {
	reptForCtTime = true;
	return true;
      }
    break;
    case 12:
      if (reptForCtTime == false && time_buf->tm_min == 14) {
	reptForCtTime = true;
	return true;
      }
    break;
    case 18:
      if (reptForCtTime == false && time_buf->tm_min == 0) {
	reptForCtTime = true;
	return true;
      }
    break;
    case 0:
      if (reptForCtTime == false && time_buf->tm_min == 0) {
	reptForCtTime = true;
	return true;
      }
    break;
    default:
      reptForCtTime = false;
    break;
  }
  return false;
}

void set_initial_time() {
  nrf_cal_set_time(2020, 5, 26, 12, 12, 0);
  printf("Time set : %s\n", nrf_cal_get_time_string(false));
}

void print_current_time() {
    struct tm* time_value;
    time_value = nrf_cal_get_time_calibrated();
    // printf("%d:%d:%d\n", time_value->tm_hour, time_value->tm_min, time_value->tm_sec);
    if (check_time2(time_value)) {
      if (low_power) return;
      flash_evt_handler(true);
      // cam_working = true;
      sendLte("report time\r");
      camera_function(1);
    }
}

void calendar_updated() {
    if(run_time_updates)
    {
//        print_current_time();
    }
}

void flash_evt_handler(bool flash)
{
    uint8_t control_msg[3];
    uint16_t length;

    // if (cam_working) return;
    // printf("%s\n", "flash");

    if (flash) sprintf(control_msg, "%c", TURN_ON);
    else sprintf(control_msg, "%c", TURN_OFF);
    
    for (int i = 0; i < ble_conn_state_central_conn_count(); i++) {
      length = sizeof(control_msg);
      ble_nus_c_string_send(&m_ble_nus_c[i], control_msg, length);
    }
}

void reptCrime(uint8_t* buffer, int cnt) {
  int length = strlen(buffer);
  char msg[length];
  memset(msg, 0x00, length);
  memcpy(msg, buffer, length);
//  printf("%s, msg length = %d, buffer length = %d\n", msg, strlen(msg), strlen(buffer));
  sendLte(msg);
  nrf_delay_ms(500);
}

void reptEvt(uint8_t (*map)[BLE_EVT_COUNT]) {
  char msg[27];
  char* msg_current = msg;
  bool send_flag = false;

  msg_current += sprintf(msg_current, "%d : ", MASTER_NUM);
  for (int num = 0; num < slave_count; num++) {
    for (int j = 0; j < BLE_EVT_COUNT; j++) {
      if (checkMap(map, num, j) == 0) {
	msg_current += sprintf(msg_current, "%d ", 0);
      }
      else {
	msg_current += sprintf(msg_current, "%d ", 1);
	send_flag = true;
      }
    }
  }
  if (send_flag) sendLte(msg);
  return;
}

//needs the enlargement and battery up down / parsing / multiple uart_init in lte_psm_disable() (flag will be needed.)
void readBle(uint8_t * msg)
{
  int slave_num = msg[0] - 48;
  int evt_num = msg[2] - 48;

  if (cam_working) return;

  printf("%d %d\n", slave_num, evt_num);

    if (checkMap(SLAVE_STATUS_MAP, slave_num, evt_num) != 1) {
      setMap(SLAVE_STATUS_MAP, slave_num, evt_num);
      ble_status = true;
    }
    else {
      return;
    }

    if (msg[2] == CRIME) {
      if (low_power) return;
      flash_evt_handler(true);
//      cam_working = true;
      camera_function(1);
    }
    else return;
}

/**@brief Function for handling asserts in the SoftDevice.
 *
 * @details This function is called in case of an assert in the SoftDevice.
 *
 * @warning This handler is only an example and is not meant for the final product. You need to analyze
 *          how your product is supposed to react in case of an assert.
 * @warning On assert from the SoftDevice, the system can only recover on reset.
 *
 * @param[in] line_num     Line number of the failing assert call.
 * @param[in] p_file_name  File name of the failing assert call.
 */
void assert_nrf_callback(uint16_t line_num, const uint8_t * p_file_name)
{
    app_error_handler(0xDEADBEEF, line_num, p_file_name);
}


/**@brief Function for initializing the LEDs.
 *
 * @details Initializes all LEDs used by the application.
 */
static void leds_init(void)
{
    bsp_board_init(BSP_INIT_LEDS);
}

/**@brief Function for handling Queued Write Module errors.
 *
 * @details A pointer to this function will be passed to each service which may need to inform the
 *          application about an error.
 *
 * @param[in]   nrf_error   Error code containing information about what went wrong.
 */
static void scan_evt_handler(scan_evt_t const * p_scan_evt)
{
    ret_code_t err_code;

    switch(p_scan_evt->scan_evt_id)
    {
        case NRF_BLE_SCAN_EVT_CONNECTING_ERROR:
        {
            err_code = p_scan_evt->params.connecting_err.err_code;
            APP_ERROR_CHECK(err_code);
        } break;

        default:
            break;
    }
}


/**@brief Function for initializing the scanning and setting the filters. */
static void scan_init(void)
{
    ret_code_t          err_code;
    nrf_ble_scan_init_t init_scan;

    memset(&init_scan, 0, sizeof(init_scan));

    init_scan.connect_if_match = true;
    init_scan.conn_cfg_tag     = APP_BLE_CONN_CFG_TAG;

    err_code = nrf_ble_scan_init(&m_scan, &init_scan, scan_evt_handler);
    APP_ERROR_CHECK(err_code);

    err_code = nrf_ble_scan_filter_set(&m_scan, SCAN_UUID_FILTER, &m_nus_uuid);
    APP_ERROR_CHECK(err_code);

    err_code = nrf_ble_scan_filters_enable(&m_scan, NRF_BLE_SCAN_UUID_FILTER, false);
    APP_ERROR_CHECK(err_code);
}

/**@brief Function for starting scanning. */
static void scan_start(void)
{
    ret_code_t ret;
    
    sd_ble_gap_scan_stop();
    NRF_LOG_INFO("Start scanning for device name %s.", (uint32_t)m_target_periph_name);
    ret = nrf_ble_scan_start(&m_scan);
    APP_ERROR_CHECK(ret);
    // Turn on the LED to signal scanning.
    bsp_board_led_on(CENTRAL_SCANNING_LED);
}

static void ble_nus_chars_received_uart_print(uint8_t * p_data, uint16_t data_len)
{
    ret_code_t ret_val;

    NRF_LOG_DEBUG("Receiving data.");
    NRF_LOG_HEXDUMP_DEBUG(p_data, data_len);

    for (uint32_t i = 0; i < data_len; i++)
    {
        do
        {
            ret_val = app_uart_put(p_data[i]);
            if ((ret_val != NRF_SUCCESS) && (ret_val != NRF_ERROR_BUSY))
            {
                NRF_LOG_ERROR("app_uart_put failed for index 0x%04x.", i);
                APP_ERROR_CHECK(ret_val);
            }
        } while (ret_val == NRF_ERROR_BUSY);
    }
    if (p_data[data_len-1] == '\r')
    {
        while (app_uart_put('\n') == NRF_ERROR_BUSY);
    }
}


/**@brief   Function for handling app_uart events.
 *
 * @details This function receives a single character from the app_uart module and appends it to
 *          a string. The string is sent over BLE when the last character received is a
 *          'new line' '\n' (hex 0x0A) or if the string reaches the maximum data length.
 */
void uart_event_handle(app_uart_evt_t * p_event)
{
    static uint8_t data_array[BLE_NUS_MAX_DATA_LEN];
    static uint8_t index = 0;
    uint32_t       err_code;

    switch (p_event->evt_type)
    {
        case APP_UART_DATA_READY:

            UNUSED_VARIABLE(app_uart_get(&data_array[index]));
            index++;

            if ((data_array[index - 1] == '\n') ||
                (index >= (m_ble_nus_max_data_len)))
            {
                if(index >= 1)
                {
                    NRF_LOG_INFO("%s", NRF_LOG_PUSH(data_array));
                    if(data_array[1]=='C' || data_array[2]==':') temp_current += sprintf(temp_current, "%s", data_array);

                    memset(data_array,0,BLE_NUS_MAX_DATA_LEN);
                    index = 0;
                }
            }
            break;

        case APP_UART_COMMUNICATION_ERROR:
            APP_ERROR_HANDLER(p_event->data.error_communication);
            break;

        case APP_UART_FIFO_ERROR:
            APP_ERROR_HANDLER(p_event->data.error_code);
            break;

        default:
            break;
    }
}


/**@brief Callback handling Nordic UART Service (NUS) client events.
 *
 * @details This function is called to notify the application of NUS client events.
 *
 * @param[in]   p_ble_nus_c   NUS client handle. This identifies the NUS client.
 * @param[in]   p_ble_nus_evt Pointer to the NUS client event.
 */

/**@snippet [Handling events from the ble_nus_c module] */
static void ble_nus_c_evt_handler(ble_nus_c_t * p_ble_nus_c, ble_nus_c_evt_t const * p_ble_nus_evt)
{
    ret_code_t err_code;

    switch (p_ble_nus_evt->evt_type)
    {
        case BLE_NUS_C_EVT_DISCOVERY_COMPLETE:
            NRF_LOG_INFO("Discovery complete.");
            err_code = ble_nus_c_tx_notif_enable(p_ble_nus_c);
            APP_ERROR_CHECK(err_code);
            NRF_LOG_INFO("Connected to device with Nordic UART Service.");

            if(err_code != NRF_ERROR_BUSY)
            {
                APP_ERROR_CHECK(err_code);
            }
            break;

        case BLE_NUS_C_EVT_NUS_TX_EVT:
            readBle(p_ble_nus_evt->p_data);
            break;

        case BLE_NUS_C_EVT_DISCONNECTED:
            NRF_LOG_INFO("Disconnected.");
            scan_start();
            break;
    }
}

/**
 * @brief Function for handling shutdown events.
 *
 * @param[in]   event       Shutdown type.
 */
static bool shutdown_handler(nrf_pwr_mgmt_evt_t event)
{
    ret_code_t err_code;

    err_code = bsp_indication_set(BSP_INDICATE_IDLE);
    APP_ERROR_CHECK(err_code);

    switch (event)
    {
        case NRF_PWR_MGMT_EVT_PREPARE_WAKEUP:
            // Prepare wakeup buttons.
            err_code = bsp_btn_ble_sleep_mode_prepare();
            APP_ERROR_CHECK(err_code);
            break;

        default:
            break;
    }

    return true;
}

NRF_PWR_MGMT_HANDLER_REGISTER(shutdown_handler, APP_SHUTDOWN_HANDLER_PRIORITY);

/**@brief Function for initializing nRF uart service that will be used by ble.
 */
static void nus_c_init(void)
{
    ret_code_t       err_code;
    ble_nus_c_init_t init;

    init.evt_handler = ble_nus_c_evt_handler;

    for (m_ble_nus_c_count = 0; m_ble_nus_c_count < NRF_SDH_BLE_TOTAL_LINK_COUNT; m_ble_nus_c_count++)
    {
        err_code = ble_nus_c_init(&m_ble_nus_c[m_ble_nus_c_count], &init);
        APP_ERROR_CHECK(err_code);
    }
    m_ble_nus_c_count = 0;
}

/**@brief Function for handling BLE events.
 *
 * @param[in]   p_ble_evt   Bluetooth stack event.
 * @param[in]   p_context   Unused.
 */
static void ble_evt_handler(ble_evt_t const * p_ble_evt, void * p_context)
{
    ret_code_t err_code;

    // For readability.
    ble_gap_evt_t const * p_gap_evt = &p_ble_evt->evt.gap_evt;

    switch (p_ble_evt->header.evt_id)
    {
        // Upon connection, check which peripheral is connected, initiate DB
        // discovery, update LEDs status, and resume scanning, if necessary.
        case BLE_GAP_EVT_CONNECTED:
        {
	    slave_count++;

            NRF_LOG_INFO("Connection 0x%x established, starting DB discovery.",
                         p_gap_evt->conn_handle);

            APP_ERROR_CHECK_BOOL(p_gap_evt->conn_handle < NRF_SDH_BLE_CENTRAL_LINK_COUNT);
            err_code = ble_nus_c_handles_assign(&m_ble_nus_c[p_gap_evt->conn_handle], p_gap_evt->conn_handle, NULL);
            APP_ERROR_CHECK(err_code);
            err_code = ble_db_discovery_start(&m_db_disc[p_gap_evt->conn_handle],
                                              p_gap_evt->conn_handle);
            if (err_code != NRF_ERROR_BUSY)
            {
                APP_ERROR_CHECK(err_code);
            }

            // Update LEDs status and check whether it is needed to look for more
            // peripherals to connect to.
            bsp_board_led_on(CENTRAL_CONNECTED_LED);
            if (ble_conn_state_central_conn_count() == NRF_SDH_BLE_CENTRAL_LINK_COUNT)
            {
                bsp_board_led_off(CENTRAL_SCANNING_LED);
            }
            else
            {
                // Resume scanning.
                bsp_board_led_on(CENTRAL_SCANNING_LED);
                scan_start();
            }
        } break; // BLE_GAP_EVT_CONNECTED

        // Upon disconnection, reset the connection handle of the peer that disconnected, update
        // the LEDs status and start scanning again.
        case BLE_GAP_EVT_DISCONNECTED:
        {
	    slave_count--;

            NRF_LOG_INFO("LBS central link 0x%x disconnected (reason: 0x%x)",
                         p_gap_evt->conn_handle,
                         p_gap_evt->params.disconnected.reason);

            if (ble_conn_state_central_conn_count() == 0)
            {
                // Turn off the LED that indicates the connection.
                bsp_board_led_off(CENTRAL_CONNECTED_LED);
            }

            // Start scanning.
            scan_start();

            // Turn on the LED for indicating scanning.
            bsp_board_led_on(CENTRAL_SCANNING_LED);

        } break;
        
        case BLE_GAP_EVT_TIMEOUT:
        {
            // Timeout for scanning is not specified, so only the connection requests can time out.
            if (p_gap_evt->params.timeout.src == BLE_GAP_TIMEOUT_SRC_CONN)
            {
                scan_start();
                NRF_LOG_DEBUG("Connection request timed out.");
            }
        } break;

        case BLE_GAP_EVT_CONN_PARAM_UPDATE_REQUEST:
        {
            NRF_LOG_DEBUG("BLE_GAP_EVT_CONN_PARAM_UPDATE_REQUEST.");
            // Accept parameters requested by peer.
            err_code = sd_ble_gap_conn_param_update(p_gap_evt->conn_handle,
                                        &p_gap_evt->params.conn_param_update_request.conn_params);
            APP_ERROR_CHECK(err_code);
        } break;

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

        case BLE_GATTC_EVT_TIMEOUT:
        {
            // Disconnect on GATT client timeout event.
            NRF_LOG_DEBUG("GATT client timeout.");
            err_code = sd_ble_gap_disconnect(p_ble_evt->evt.gattc_evt.conn_handle,
                                             BLE_HCI_REMOTE_USER_TERMINATED_CONNECTION);
            APP_ERROR_CHECK(err_code);
        } break;

        case BLE_GATTS_EVT_TIMEOUT:
        {
            // Disconnect on GATT server timeout event.
            NRF_LOG_DEBUG("GATT server timeout.");
            err_code = sd_ble_gap_disconnect(p_ble_evt->evt.gatts_evt.conn_handle,
                                             BLE_HCI_REMOTE_USER_TERMINATED_CONNECTION);
            APP_ERROR_CHECK(err_code);
        } break;

        default:
            // No implementation needed.
            break;
    }
}


/**@brief Function for initializing the BLE stack.
 *
 * @details Initializes the SoftDevice and the BLE event interrupts.
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



/**@brief Function for handling database discovery events.
 *
 * @details This function is a callback function to handle events from the database discovery module.
 *          Depending on the UUIDs that are discovered, this function forwards the events
 *          to their respective services.
 *
 * @param[in] p_event  Pointer to the database discovery event.
 */
static void db_disc_handler(ble_db_discovery_evt_t * p_evt)
{
    ble_nus_c_on_db_disc_evt(&m_ble_nus_c[p_evt->conn_handle], p_evt);
}


/** @brief Database discovery initialization.
 */
static void db_discovery_init(void)
{
    ret_code_t err_code = ble_db_discovery_init(db_disc_handler);
    APP_ERROR_CHECK(err_code);
}


/**@brief Function for initializing power management.
 */
static void power_management_init(void)
{
    ret_code_t err_code;
    err_code = nrf_pwr_mgmt_init();
    APP_ERROR_CHECK(err_code);
}


/**@brief Function for handling the idle state (main loop).
 *
 * @details This function handles any pending log operations, then sleeps until the next event occurs.
 */
static void idle_state_handle(void)
{
    if (NRF_LOG_PROCESS() == false)
    {
        nrf_pwr_mgmt_run();
    }
}


/** @brief Function for initializing the log module.
 */
static void log_init(void)
{
    ret_code_t err_code = NRF_LOG_INIT(NULL);
    APP_ERROR_CHECK(err_code);

    NRF_LOG_DEFAULT_BACKENDS_INIT();
}


/** @brief Function for initializing the timer.
 */
static void timer_init(void)
{
    ret_code_t err_code = app_timer_init();
    APP_ERROR_CHECK(err_code);
}

/**@brief Application main function.
 */
void timer_handler(nrf_timer_event_t event_type, void * p_context)
{

}

/**@brief Function for initializing the GATT module.
 */
void gatt_evt_handler(nrf_ble_gatt_t * p_gatt, nrf_ble_gatt_evt_t const * p_evt)
{
    if (p_evt->evt_id == NRF_BLE_GATT_EVT_ATT_MTU_UPDATED)
    {
        NRF_LOG_INFO("ATT MTU exchange completed.");

        m_ble_nus_max_data_len = p_evt->params.att_mtu_effective - OPCODE_LENGTH - HANDLE_LENGTH;
        NRF_LOG_INFO("Ble NUS max data length set to 0x%X(%d)", m_ble_nus_max_data_len, m_ble_nus_max_data_len);
    }
}

/**@brief Function for initializing the GATT library. */
void gatt_init(void)
{
    ret_code_t err_code;

    err_code = nrf_ble_gatt_init(&m_gatt, gatt_evt_handler);
    APP_ERROR_CHECK(err_code);

    err_code = nrf_ble_gatt_att_mtu_central_set(&m_gatt, NRF_SDH_BLE_GATT_MAX_MTU_SIZE);
    APP_ERROR_CHECK(err_code);
}

/**@snippet [Handling the data received over UART] */
/**@brief  Function for initializing the UART module.
 */
static void uart_init(void)
{
    ret_code_t err_code;

    app_uart_comm_params_t const comm_params =
    {
        .rx_pin_no    = RX_PIN_NUMBER,
        .tx_pin_no    = TX_PIN_NUMBER,
        .rts_pin_no   = RTS_PIN_NUMBER,
        .cts_pin_no   = CTS_PIN_NUMBER,
        .flow_control = APP_UART_FLOW_CONTROL_DISABLED,
        .use_parity   = false,
        .baud_rate    = UART_BAUDRATE_BAUDRATE_Baud115200
    };

    APP_UART_FIFO_INIT(&comm_params,
                       UART_RX_BUF_SIZE,
                       UART_TX_BUF_SIZE,
                       uart_event_handle,
                       APP_IRQ_PRIORITY_HIGHEST,
                       err_code);

    APP_ERROR_CHECK(err_code);
}
/**@snippet [UART Initialization] */


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

    /* setup m_timer for compare event every 400ms */
    uint32_t ticks = nrf_drv_timer_ms_to_ticks(&m_timer, 1000);
    nrf_drv_timer_extended_compare(&m_timer,
                                   NRF_TIMER_CC_CHANNEL2,
                                   ticks,
                                   NRF_TIMER_SHORT_COMPARE2_CLEAR_MASK,
                                   false);
    nrf_drv_timer_enable(&m_timer);

    uint32_t timer_compare_event_addr = nrf_drv_timer_compare_event_address_get(&m_timer,
                                                                                NRF_TIMER_CC_CHANNEL2);
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

/**@brief Function for handling the event of saadc sampling result
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
        percentage_batt_lvl = battery_level_in_percent(batt_lvl_in_milli_volts);

	ctrlPower(percentage_batt_lvl);

//        sprintf(saadc_temp, "%d\n\r", percentage_batt_lvl);
//	printf(saadc_temp);

        if(saadc_counter == 10)
        {
            NRF_LOG_INFO("saadc stop\n");
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
    saadc_config.resolution = NRF_SAADC_RESOLUTION_14BIT;

    ch_config_bat.gain = NRF_SAADC_GAIN1_4;
    ch_config_bat.reference = NRF_SAADC_REFERENCE_VDD4;

    err_code = nrf_drv_saadc_init(&saadc_config, saadc_callback);
    APP_ERROR_CHECK(err_code);

    err_code = nrf_drv_saadc_channel_init(BAT_CHANNEL, &ch_config_bat);
    APP_ERROR_CHECK(err_code);

    err_code = nrfx_saadc_buffer_convert(m_buffer_pool[0], SAMPLES_IN_BUFFER);
    APP_ERROR_CHECK(err_code);

    err_code = nrfx_saadc_buffer_convert(m_buffer_pool[1], SAMPLES_IN_BUFFER);
    APP_ERROR_CHECK(err_code);
}

static bool at_send(uint8_t * data, uint8_t size)
{
    memset(temp_array,0,BLE_NUS_MAX_DATA_LEN);
    ret_code_t ret_val;

    for (uint32_t i = 0; i < size; i++)
    {
        do
        {
            ret_val = app_uart_put(data[i]);
            if ((ret_val != NRF_SUCCESS) && (ret_val != NRF_ERROR_BUSY))
            {
                NRF_LOG_ERROR("app_uart_put failed for index 0x%04x.", i);
                APP_ERROR_CHECK(ret_val);
            }
        } while (ret_val == NRF_ERROR_BUSY);
    }
    nrf_delay_ms(1000);

    return true;
}

static void repeated_timer_handler(void * p_context)
{
    NRF_LOG_INFO("saadc start\n");
    nrf_gpio_pin_set(NRF_POWER_EN);
    nrf_saadc_enable();
    nrf_saadc_task_trigger(NRF_SAADC_TASK_START);
    nrf_drv_timer_enable(&m_timer);
    nrf_drv_ppi_channel_enable(m_ppi_channel);
}

static void psm_timer_handler(void * p_context)
{
    NRF_LOG_INFO("saadc(psm) start\n");
    nrf_gpio_pin_set(NRF_POWER_EN);
    nrf_saadc_enable();
    nrf_saadc_task_trigger(NRF_SAADC_TASK_START);
    nrf_drv_timer_enable(&m_timer);
    nrf_drv_ppi_channel_enable(m_ppi_channel);    
}

static void lte_timer_handler(void * p_context) {
  if (low_power) return;

  reptEvt(SLAVE_STATUS_MAP);
  resetZeroMap(SLAVE_STATUS_MAP);
  ble_status = false;
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

    err_code = app_timer_create(&m_lte_timer_id,
                                APP_TIMER_MODE_REPEATED,
                                lte_timer_handler);

    APP_ERROR_CHECK(err_code);

    err_code = app_timer_create(&m_lte_timer_id,
                                APP_TIMER_MODE_REPEATED,
                                lte_timer_handler);
    APP_ERROR_CHECK(err_code);
}

static void start_repeated_timer()
{
    ret_code_t err_code;
    err_code = app_timer_start(m_repeated_timer_id, APP_TIMER_TICKS(30000), NULL); //1020000 (17min) , 20000
    APP_ERROR_CHECK(err_code);
}

static void start_psm_timer()
{
    ret_code_t err_code;
    err_code = app_timer_start(m_psm_timer_id, APP_TIMER_TICKS(20000), NULL); // 1800000 (30min)
    APP_ERROR_CHECK(err_code);
}

static void start_lte_timer()
{
    ret_code_t err_code;
    err_code = app_timer_start(m_lte_timer_id, APP_TIMER_TICKS(20000), NULL); //300000 (5min)
    APP_ERROR_CHECK(err_code);
}

static uint8_t at_recv(uint8_t * target)
{
    uint8_t result;
    // NRF_LOG_INFO("%s\n", temp_array);

    // result = strstr(temp_array, target);

    memset(temp_array,0,BLE_NUS_MAX_DATA_LEN);
    return result;
}

static bool open_mqtt(void)
{
    uint8_t msg[] = "AT+QMTOPEN=0,\"avq1xsl5cm8b-ats.iot.us-west-2.amazonaws.com\",8883\r";
    nrf_delay_ms(5000);
    at_send(msg, sizeof(msg));
}

static bool connect_mqtt(void)
{
    uint8_t msg[] = "AT+QMTCONN=0,\"mqtttest\"\r";

    at_send(msg, sizeof(msg));
}

void close_mqtt(void)
{
    uint8_t msg[] = "AT+QMTCLOSE=0\r";

    at_send(msg, sizeof(msg));
}

void sendLte(uint8_t * data)
{
    uint8_t msg[] = "AT+QMTPUB=0,1,1,0,\"topic\"\r";

    at_send(msg, sizeof(msg));

    at_send(data, strlen(data));
    app_uart_put(0x1A);
    app_uart_put('\r');

    return;
}

void subscribe_mqtt(void)
{
    bool done = false;
    uint8_t msg[] = "AT+QMTSUB=0,1,\"$aws/things/mqtttest/shadow/update/accepted\",1\r";
    if(at_send(msg, sizeof(msg)) && at_recv("OK"))
    {
        do
        {
            done = at_recv("0,1,0,1");
        } while (!done);
    }
}

void lte_check(void)
{
    uint8_t qcds[] = "AT+QCDS\r";

    at_send(qcds, sizeof(qcds));
}

void lte_setup()
{
    uint8_t disc[] = "AT+QMTDISC=0\r";
    uint8_t close[] = "AT+QMTCLOSE=0\r";
    uint8_t SSL[] = "AT+QMTCFG=\"SSL\",0,1,2\r";
    uint8_t version[] = "AT+QMTCFG=\"version\",0,4\r";
    uint8_t cacert[] = "AT+QSSLCFG=\"cacert\",2,\"UFS:root.pem\"\r";
    uint8_t clientcert[] = "AT+QSSLCFG=\"clientcert\",2,\"UFS:cert.pem\"\r";
    uint8_t clientkey[] = "AT+QSSLCFG=\"clientkey\",2,\"UFS:key.pem\"\r";
    uint8_t seclevel[] = "AT+QSSLCFG=\"seclevel\",2,2\r";
    uint8_t sslversion[] = "AT+QSSLCFG=\"sslversion\",2,4\r";
    uint8_t ciphersuite[] = "AT+QSSLCFG=\"ciphersuite\",2,0xffff\r";
    uint8_t ignorelocaltime[] = "AT+QSSLCFG=\"ignorelocaltime\",1\r";

    at_send(SSL, sizeof(SSL));
    at_send(version, sizeof(version));
    at_send(cacert, sizeof(cacert));
    at_send(clientcert, sizeof(clientcert));
    at_send(clientkey, sizeof(clientkey));
    at_send(seclevel, sizeof(seclevel));
    at_send(sslversion, sizeof(sslversion));
    at_send(ciphersuite, sizeof(ciphersuite));
    at_send(ignorelocaltime, sizeof(ignorelocaltime));
}

void lte_connect()
{
    open_mqtt();
    nrf_delay_ms(30000);
    connect_mqtt();
    nrf_delay_ms(5000); //3000
}

//test is needed.
void ctrlPower(int16_t bat_level)
{
    if(!low_power)
    {
        if(bat_level < TRIGGER_BAT)
        {
            low_power = true;
            arducam_stop = true;
            cam_working = true;
            app_timer_stop(m_repeated_timer_id);
            start_psm_timer();
	    setMap(SLAVE_STATUS_MAP, slave_count + 1, 4);
            NRF_LOG_INFO("pwr_saving mode and %d\n", nrf_gpio_pin_out_read(NRF_POWER_EN));            
        }
        else if(bat_level < TRIGGER_BAT +5UL)
        {
            arducam_stop = true;
        }
    }
    else
    {
        if(bat_level >= TRIGGER_BAT +5UL)
        {
            arducam_stop = false;
            cam_working = false;
            low_power = false;
            app_timer_stop(m_psm_timer_id);
            start_repeated_timer();
            setMap(SLAVE_STATUS_MAP, slave_count + 1, 5);
            NRF_LOG_INFO("not pwr_saving mode and %d\n", nrf_gpio_pin_out_read(NRF_POWER_EN));
        }
    }
}

static void camera_init(void)
{
#if defined(BOARD_PCA10056)
	#if(PCA10056_USE_FRONT_HEADER == 1)
			m_camera_init.pinScl = 13;
			m_camera_init.pinSda = 15;
			m_camera_init.pinSck = 21;
			m_camera_init.pinMiso = 23;
			m_camera_init.pinMosi = 25;
			m_camera_init.pinCsn = 32 + 9;
	#else
			m_camera_init.pinScl = 27;
			m_camera_init.pinSda = 26;
			m_camera_init.pinSck = 32 + 15;
			m_camera_init.pinMiso = 32 + 14;
			m_camera_init.pinMosi = 32 + 13;
			m_camera_init.pinCsn = 32 + 12;
	#endif
#elif defined(BOARD_PCA10040)
    m_camera_init.pinScl = 27;
    m_camera_init.pinSda = 26;
    m_camera_init.pinSck = 25;
    m_camera_init.pinMiso = 24;
    m_camera_init.pinMosi = 23;
    m_camera_init.pinCsn = 22;
#else
#error Board not defined or not supported
#endif    
    arducam_mini_2mp_open(&m_camera_init);
    arducam_mini_2mp_setResolution(OV2640_320x240);

//    arducam_set_bit(ARDUCHIP_TIM, LOW_POWER_MODE);

    arducam_wrSensorReg8_8(0xff, 0x01); //NIGHT MODE
    arducam_wrSensorReg8_8(0x11, 0x07);

//    arducam_wrSensorReg8_8(0xff, 0x00); //Saturation level 2
//    arducam_wrSensorReg8_8(0x7c, 0x00);
//    arducam_wrSensorReg8_8(0x7d, 0x02);
//    arducam_wrSensorReg8_8(0x7c, 0x03);
//    arducam_wrSensorReg8_8(0x7d, 0x58);
//    arducam_wrSensorReg8_8(0x7d, 0x58);

    nrf_delay_ms(2000);
}

void camera_function(int nmbr_shots) {
  for(int i=0; i<nmbr_shots; i++) {
    if(!cam_working) {
      uint32_t img_data_length = 0;
      uint8_t img_data_buffer[220];
      uint8_t count = 0;
      uint32_t image_size;
      int cnt = 0;
      static uint8_t capture_count;
      cam_working = true;

      if(!arducam_stop) { // ?
         if(m_new_command_received != APP_CMD_SINGLE_CAPTURE) {
              m_new_command_received = APP_CMD_SINGLE_CAPTURE;
          }

         if(m_new_command_received != APP_CMD_NOCOMMAND) {
            uint32_t new_command = m_new_command_received;
            m_new_command_received = APP_CMD_NOCOMMAND;
            switch(new_command)
            {
                case APP_CMD_SINGLE_CAPTURE:
                    if(arducam_mini_2mp_bytesAvailable() == 0) {
                        capture_count++;
                        NRF_LOG_INFO("\n\rStarting capture %i\n\r",capture_count);
                        arducam_mini_2mp_startSingleCapture(); // capture function
                        image_size = arducam_mini_2mp_bytesAvailable();
                        printf("\n\rCapture complete: size %i bytes\n\r", (int)(image_size));
                    }
                    break;
          
  //              case APP_CMD_CHANGE_RESOLUTION:
  //                  switch(m_new_resolution)
  //                  {
  //                      case 0:
  //                          arducam_mini_2mp_setResolution(OV2640_160x120);
  ////                          lte_send("resolution is changed to 160x120");
  //                          break;
  //                  
  //                      case 1:
  //                          arducam_mini_2mp_setResolution(OV2640_320x240);
  ////                          lte_send("resolution is changed to 320x240");
  //                          break;
  //
  //                      case 2:
  //                          arducam_mini_2mp_setResolution(OV2640_640x480);
  ////                          lte_send("resolution is changed to 640x480");
  //                          break;
  //
  //                      case 3:
  //                          arducam_mini_2mp_setResolution(OV2640_800x600);
  ////                          lte_send("resolution is changed to 800x600");
  //                          break;
  //
  //                      case 4:
  //                          arducam_mini_2mp_setResolution(OV2640_1024x768);
  ////                          lte_send("resolution is changed to 1024x768");
  //                          break;
  //                  
  //                      case 5:
  //                          arducam_mini_2mp_setResolution(OV2640_1600x1200);
  ////                          lte_send("resolution is changed to 1600x1200");
  //                          break;
  //                  } 
  //                  break;
              
                default:
                    break;
            }
        }
      }
        if(img_data_length > 0 || arducam_mini_2mp_bytesAvailable() > 0)
        {
            uint32_t ret_code;
            do
            {
                if(img_data_length == 0)
                {
//                    img_data_length = arducam_mini_2mp_fillBuffer(img_data_buffer, 244);
                    img_data_length = arducam_mini_2mp_fillBuffer(img_data_buffer, 220);
                }
                ret_code = NRF_SUCCESS;
              
                if(0 < img_data_length) 
                {
		      reptCrime(img_data_buffer, cnt);
                      cnt++;
                }
                else                    
                {
		    ret_code = NRF_ERROR_RESOURCES;
                }
                if(ret_code == NRF_SUCCESS)
                {
                    count++;
                    img_data_length = 0;
                }  
            } while(ret_code == NRF_SUCCESS);
            count = 0;
            cnt = 0;
            cam_working = false;
        }

//        if(m_new_command_received == APP_CMD_NOCOMMAND)
//        {
//            // idle_state_handle(); // ?
//        }
    }
    else
    {
      printf("cam is working\n");
      sendLte("Img_data\r");
      nrf_delay_ms(1500);
    }
  }
  flash_evt_handler(false);
  cam_working = false;
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

// TODO(100): Should be coded more precisely. It's not solid yet. (~Sprint 12 maybe)
bool isBroken(float* difference) {
  for (int i = 0; i < 3; i++) {
    acceleration_mg[i] = iis2dlpc_from_fs2_to_mg(data_raw_acceleration.i16bit[i]);
    difference[i] = acceleration_mg[i] - previous_value[i];

    if (abs(difference[i]) >= TRIGGER_DIG) {
      return false;
    }
  }
  return true;
}

bool checkEnv(float* angle) {
  for (int i = 0; i < 2; i++) {
    angle[i] = round(atan2(acceleration_mg[i],acceleration_mg[2])*(180/M_PI));
    if (abs(angle[i]) <= TRIGGER_TIL) {
      return false;
    }
  }
  return true;
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
//  if(!cam_working)
//  {
  uint8_t reg;
  float difference[3] = {0, };
  float angle[2] = {0, };

  iis2dlpc_flag_data_ready_get(&dev_ctx, &reg);
  if(reg) {    
    memset(data_raw_acceleration.u8bit, 0x00, 3 * sizeof(int16_t));

    iis2dlpc_acceleration_raw_get(&dev_ctx, data_raw_acceleration.u8bit);

    if (!isBroken(difference)) {
//      sendBle(CRIME); // BROKEN
      
    }

//    if (!isCrime(difference)) {
//      sendBle(CRIME);
//    }

    if (!checkEnv(angle)) {
//    nrf_delay_ms(10000);
//      sendBle(LEANED);
    }
    
//    printf("current: %f  %f  %f\n\r", acceleration_mg[0], acceleration_mg[1], acceleration_mg[2]);
//    printf("difference: %f  %f  %f\n\r", difference[0], difference[1], difference[2]);
//    printf("angle: %f %f\n\r", angle[0], angle[1]);
  }
  else {
    memset(data_raw_acceleration.u8bit, 0x00, 3 * sizeof(int16_t));
  }

  memcpy(previous_value, acceleration_mg, sizeof(acceleration_mg));
//  }
}

int main(void)
{
    CoreDebug->DEMCR |= 0x1000000;
    DWT->CYCCNT = 0;
    DWT->CTRL |= 0x1;

    NRF_CLOCK->EVENTS_HFCLKSTARTED = 0;
    NRF_CLOCK->TASKS_HFCLKSTART = 1;
    while(NRF_CLOCK->EVENTS_HFCLKSTARTED == 0);

//    nrf_delay_ms(60000);

    board_init();
    log_init();
    timer_init();

    nrf_cal_init();
    nrf_cal_set_callback(calendar_updated, 4);
    set_initial_time();

    uart_init();
    leds_init();
    power_management_init();
    ble_stack_init();
    sd_power_dcdc_mode_set(NRF_POWER_DCDC_ENABLE);
    gatt_init();
    platform_init();
    db_discovery_init();
    saadc_init();
    saadc_sampling_event_init();
    nus_c_init();
    ble_conn_state_init();
    scan_init();
    lte_setup();
    lte_connect();
    sendLte("Hellow CEEDUP\r");

    scan_start();

    create_timers();
    start_repeated_timer();
    start_lte_timer();
    camera_init();
    saadc_sampling_event_enable();

     for (;;)
    {
//	print_current_time();
	nrf_delay_us(10);
        readAcc();
        nrf_delay_us(1000);
        idle_state_handle();
    }
}

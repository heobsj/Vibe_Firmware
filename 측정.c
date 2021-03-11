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

//IACT
//IACT
//IACT

#include "master_util.h"

// TODO(100): Declare & define the code related with accelerometer. (~Sprint 12) to Sam
static axis3bit16_t          data_raw_acceleration;                                 /**< Load raw data from iis2dlpc sensor into this variable. */ 
static iis2dlpc_ctx_t        dev_ctx;                                               /**< Handle iis2dlpc sensor's read/write instance with this variable. */
static uint8_t               whoamI, rst;                                           /**< Validate iis2dlpc sensor address and status to use. */ 
static float acceleration_mg[3];                                                    /**< Convert raw data to float(usable) data into this variable by using iis2dlpc sdk. */
static float previous_value[3] = {0};                                                 /**< Previous data to use dto62 private function. */


//heo
static int count = 0;
static float data[5][SIZE] = {0.0, }; // x, y, z, a, b
static float cal_data[3][5] = {0.0, }; //cal_data[0] = average, cal_data[1] = standard deviation, cal_data[2] = Count
static float similarity[2] = {0.0, }; // similarity[0] = flag, similarity[1] = highest similarity value 

static const float S[15] = {0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 5.0, 5.0, 5.0, 20.0, 20.0}; // contributing constants
static const float w[15] = {1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0}; // correction factor
//static const float Am[15] = {6.1, 6.1, 121.7, 2.9, 2.7, 0.21, 0.6, 0.6, 0.11, 0.6, 20.1, 20.1, 20.1, 50.1, 50.1}; //x,y,z,a,b data of avrg, stdev and count following exp 1 data
static const float Alpha = 1.00; // 2nd standard value
static const float Beta = 0.50; // 1st standard value
//heo


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
static nrf_saadc_channel_config_t ch_config_flame = NRF_DRV_SAADC_DEFAULT_CHANNEL_CONFIG_SE(FLAME_PIN);    /**< The saadc cnannel configuration of flame detect sensor. */


static const nrf_drv_timer_t m_timer = NRF_DRV_TIMER_INSTANCE(3);               /**< The channel of used timer triver. */
static char const m_target_periph_name[] = "Nordic_Blinky";                     /**< Name of the device to try to connect to. This name is searched for in the scanning report data. */

static nrf_saadc_value_t m_buffer_pool[2][SAMPLES_IN_BUFFER];                                      /**< The storage of 4 values which are results of saadc. */
static nrf_ppi_channel_t     m_ppi_channel;                                     /**< The ppi instance for interconnecting timer and saadc. */
static uint16_t m_ble_nus_max_data_len = BLE_GATT_ATT_MTU_DEFAULT - OPCODE_LENGTH - HANDLE_LENGTH;          /**< The maximum length of ble data. */
static uint8_t m_ble_nus_c_count;                                               /**< The instance of present connected count of ble devices. */

static uint8_t                          m_new_command_received = 0;
static uint8_t                          m_new_resolution, m_new_phy;
static arducam_mini_2mp_init_t          m_camera_init;


static uint8_t   saadc_counter = 0;

static uint8_t temp_array[BLE_NUS_MAX_DATA_LEN];
static uint8_t* temp_current = temp_array;

static uint8_t acc_array_master[1023];
static uint8_t* acc_current_master = acc_array_master;

static uint8_t acc_array_slave[1023];
static uint8_t* acc_current_slave = acc_array_slave;


static uint8_t acc_array_test[1023];
static uint8_t* acc_current_test = acc_array_test;

int slave_count = 0;

static bool      low_power               = false;
static bool      cam_working             = false;
static bool	 run_time_updates	 = false;
static bool	 reptForCtTime		 = false;
static bool      new_dev                 = false;
static bool      reptCrimeCount          = false;
static volatile bool      saadc                   = false;
static bool      lte                     = false;
//static bool      walk                    = false;
//static bool      run                     = false;
//static bool      fall                    = false;

//static int num=0;
static int batlevel=0;
static int acccount=0;

static int array_size =20;
static int cal_num=0;
static int control=0;



#define MAX_TIMINGS	85
#define DHT_PIN		33	/* GPIO-22 */

int data_th[5] = {0, 0, 0, 0, 0};

void read_dht_data()
{
	uint8_t laststate	= 1;
	uint8_t counter		= 0;
	uint8_t j               = 0, i;

	data_th[0] = data_th[1] = data_th[2] = data_th[3] = data_th[4] = 0;

	/* pull pin down for 18 milliseconds */
	nrf_gpio_cfg_output(DHT_PIN);
	nrf_gpio_pin_write(DHT_PIN, 0 );
	nrf_delay_ms(18);

	/* prepare to read the pin */
	nrf_gpio_cfg_input(DHT_PIN, NRF_GPIO_PIN_NOPULL);

	/* detect change and read data */
	for ( i = 0; i < MAX_TIMINGS; i++ )
	{
		counter = 0;
		while (nrf_gpio_pin_read(DHT_PIN) == laststate)
		{
			counter++;
			nrf_delay_us(1);
			if ( counter == 255 )
			{
				break;
			}
		}
		laststate = nrf_gpio_pin_read(DHT_PIN);

		if ( counter == 255 )
			break;

		/* ignore first 3 transitions */
		if ( (i >= 4) && (i % 2 == 0) )
		{
			/* shove each bit into the storage bytes */
			data_th[j / 8] <<= 1;
			if ( counter > 16 )
				data_th[j / 8] |= 1;
			j++;
		}
	}

	/*
	 * check we read 40 bits (8bit x 5 ) + verify checksum in the last byte
	 * print it out if data is good
	 */
	if ( (j >= 40) &&
	     (data_th[4] == ( (data_th[0] + data_th[1] + data_th[2] + data_th[3]) & 0xFF) ) )
	{
		float h = (float)((data_th[0] << 8) + data_th[1]) / 10;
		if ( h > 100 )
		{
			h = data_th[0];	// for DHT11
		}
		float c = (float)(((data_th[2] & 0x7F) << 8) + data_th[3]) / 10;
		if ( c > 125 )
		{
			c = data_th[2];	// for DHT11
		}
		if ( data_th[2] & 0x80 )
		{
			c = -c;
		}
		float f = c * 1.8f + 32;
		printf( "Humidity = %.1f %% Temperature = %.1f *C (%.1f *F)\n", h, c, f );
	}else  {
		printf( "Data not good, skip\n" );
	}
}




//static uint16_t batt_lvl_in_milli_volts =0;

static ble_uuid_t const m_nus_uuid =                                            /**< Universally unique service identifiers. */
{
    .uuid = BLE_UUID_DEVICE_INFORMATION_SERVICE,
    .type = BLE_UUID_TYPE_BLE
};

/** @brief Furnction for sending AT command message to LTE modem over UART. */

static bool at_send(uint8_t * data, uint16_t size)
{
    memset(temp_array,0,BLE_NUS_MAX_DATA_LEN);
    temp_current = temp_array;

    ret_code_t ret_val;
    for (uint16_t i = 0; i < size; i++)
    {
        do
        {
            ret_val = app_uart_put(data[i]);
            if ((ret_val != NRF_SUCCESS) && (ret_val != NRF_ERROR_BUSY))
            {
               // NRF_LOG_ERROR("app_uart_put failed for index 0x%04x.", i);
                APP_ERROR_CHECK(ret_val);
            }
        } while (ret_val == NRF_ERROR_BUSY);
    }
    nrf_delay_ms(8);      //below 7, no communication

    return true;
}

/** @brief Function for sending a string message to AWS server over MQTT. */
void sendLte(uint8_t * data)
{
    at_send("AT+QMTPUB=0,1,1,0,\"topic1\"\r", 30);
  
    at_send(data, strlen(data));
 
    app_uart_put(0x1A);
 
    //app_uart_put('\r');


    return;
}

/** @brief Function for setting pin status. */
void board_init(void)
{ 
    nrf_gpio_cfg_output(NRF_POWER_EN);
    nrf_gpio_pin_set(NRF_POWER_EN);
    nrf_delay_us(1000);
    //nrf_gpio_cfg_output(CAMERA_CTRL);     //heo
    //nrf_gpio_pin_set(CAMERA_CTRL);
    //nrf_delay_us(1000);
}



/** @brief Function for sending flash event message to slave devices over BLE. */
void flash_evt_handler(bool flash)
{
    uint8_t control_msg[3];
    uint16_t length;

    if (flash) sprintf(control_msg, "%c", TURN_ON);
    else sprintf(control_msg, "%c", TURN_OFF);
    
    for (int i = 0; i < ble_conn_state_central_conn_count(); i++) {
      length = sizeof(control_msg);
      ble_nus_c_string_send(&m_ble_nus_c[i], control_msg, length);
    }
}


void ble_more()
{
    uint8_t control_msg[3];
    uint16_t length;

    sprintf(control_msg, "%c", ONEMORE);
   
    
    for (int i = 0; i < ble_conn_state_central_conn_count(); i++) {
      length = sizeof(control_msg);
      ble_nus_c_string_send(&m_ble_nus_c[i], control_msg, length);
    }
}


/** @brief Function for sending time to slave devices over BLE. */
void send_initial_time()
{
    struct tm* time_value;
    char msg[22];
    uint16_t length;

    time_value = nrf_cal_get_time_calibrated();
    sprintf(msg, "3 %d %d %d %d %d %d\n", time_value->tm_year, time_value->tm_mon, time_value->tm_mday, time_value->tm_hour, time_value->tm_min, time_value->tm_sec);

    for (int i = 0; i < ble_conn_state_central_conn_count(); i++) {
      ble_nus_c_string_send(&m_ble_nus_c[i], msg, 23);
    }
}

/** @brief Function for checking response of AT command conducted right before.
 *
 * @detail it reboots device when it can't find out the certain pattern.
 *
 * @param[in] src        the data to read and compare with pattern (actual AT response)
 * @param[in] pattern    the string that should be in the data (ideal AT response)
 * @param[in] time       the time to wait a response 
 * @param[in] qcds_check when QCDS AT command is conducted right before, set this value to true.
 * @param[in] length     to check the proper length of response message after AT command.
 */
uint32_t checkMsg(char* src, char* pattern, int time, bool qcds_check, int length) {
    struct tm* start, *end;
    start = nrf_cal_get_time_calibrated();

    if (qcds_check) {
	while (strstr(src, pattern) == NULL) {
	    lte_check();
	    end = nrf_cal_get_time_calibrated();
	    if ((end->tm_sec - start->tm_sec) >= time){
             at_send("AT+CFUN=1,1\r", 13);
            return sd_nvic_SystemReset(); // reset function should be implemented
            }
	}
	return 1;
    }

    // while loop to wait 5min (get time and check whether it is over 5min, if it is over 5min, reset the device)
    while (strlen(src) <= length) {
	end = nrf_cal_get_time_calibrated();
	if ((end->tm_sec - start->tm_sec) >= time) {
          at_send("AT+CFUN=1,1\r", 13);
          return sd_nvic_SystemReset(); // reset function should be implemented
        }
    }
    if (strstr(src, pattern) == NULL) {
    return sd_nvic_SystemReset();
    }
    return 1;
}

/** @brief Function for checking response of AT command conducted right before.
 *
 * @detail it does not reboot device. so it can be used in if phrase. return is 0 when there is no pattern.
 *
 * @param[in] src        the data to read and compare with pattern (actual AT response)
 * @param[in] pattern    the string that should be in the data (ideal AT response)
 * @param[in] time       the time to wait a response 
 */
uint32_t checkMsg2(char* src, char* pattern, int time) {
    struct tm* start, *end;
    start = nrf_cal_get_time_calibrated();

    while (strlen(src) <= 1) {
	end = nrf_cal_get_time_calibrated();
	if ((end->tm_sec - start->tm_sec) >= time) return 0; 
    }
    if (strstr(src, pattern) == NULL) {
    return 0;
    }
    return 1;
}



/**@brief Function for sending the 64 based separated image data from device to AWS over MQTT in JSON format.
 *
 * @param[in] buffer 64 based separated image data from camera function.
 * @param[in] count  counted number of a separated image to transform whole separated images into a JPEG image over server
 * @param[in] size   check the end of an image
 */
void reptCrime(uint8_t* buffer, uint8_t count, uint32_t size) {
  char msg[1023];
  char* msg_current = msg;

  msg_current += sprintf(msg_current, "{\"id\":\"%s\", \"count\":\"%d\", \"data\":\"", MASTER_NUM, count);
  msg_current += sprintf(msg_current, "%s", buffer);
  if(size < 723) {
  msg_current += sprintf(msg_current, "\",\"e\":\"1");
  }
  msg_current += sprintf(msg_current, "\"}");
  nrf_delay_ms(10);
  sendLte(msg);
  reptCrimeCount = true;
  nrf_delay_ms(700);
}


/** @brief Function for sending the current states of device to AWS over MQTT in JSON format.
 *
 *  @detail this function shows 6 states of a master device,  CRIME, LEANED, BROKEN, FLAME, POWER_DOWN, POWER_UP.
 *          when slave device is connected with master device, it shows the states of the slave device too.
 */
void reptEvt(uint8_t (*map)[BLE_EVT_COUNT]) {
  char msg[100];
  char* msg_current = msg;
  bool send_flag = false;

  msg_current += sprintf(msg_current, "{\"id\":\"%s\", \"data\":\"", MASTER_NUM);
  for (int num = 0; num <= slave_count; num++) {
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
  
  nrf_delay_ms(1000);

  msg_current += sprintf(msg_current, "\", \"date\":\"%s", nrf_cal_get_time_string(false));
  
  msg_current += sprintf(msg_current, "\"}");

  if(strstr(msg,"/99")) return;
  
  //printf(msg);      //heo

  if (send_flag) sendLte(msg);
  return;
}

/** @brief Function for reading BLE data from slave devices and capture image when crime event is occurred. */
//needs the enlargement and battery up down / parsing / multiple uart_init in lte_psm_disable() (flag will be needed.)
void readBle(uint8_t * msg)
{
  //acc_current slave msg[0] - 48;
  for(int i = 0; i < 5; i++) {
    acc_current_slave += sprintf(acc_current_slave, "%c", msg[i]);
    
  }
  //printf(acc_array_slave);


   
  return;
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
    //NRF_LOG_INFO("Start scanning for device name %s.", (uint32_t)m_target_periph_name);
    ret = nrf_ble_scan_start(&m_scan);
    APP_ERROR_CHECK(ret);
    // Turn on the LED to signal scanning.
    bsp_board_led_on(CENTRAL_SCANNING_LED);
}

static void ble_nus_chars_received_uart_print(uint8_t * p_data, uint16_t data_len)
{
    ret_code_t ret_val;

//    NRF_LOG_DEBUG("Receiving data.");
    NRF_LOG_HEXDUMP_DEBUG(p_data, data_len);

    for (uint32_t i = 0; i < data_len; i++)
    {
        do
        {
            ret_val = app_uart_put(p_data[i]);
            if ((ret_val != NRF_SUCCESS) && (ret_val != NRF_ERROR_BUSY))
            {
               // NRF_LOG_ERROR("app_uart_put failed for index 0x%04x.", i);
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
    static uint8_t *reptCount;
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
                    //NRF_LOG_INFO("%s", NRF_LOG_PUSH(data_array));
                    if (run_time_updates) temp_current += sprintf(temp_current, "%s", data_array);
                    if (reptCrimeCount) {
                       if(strstr(data_array, "count") != 0) {
                       reptCount = strstr(data_array, "count");
                       reptCount = strtok(reptCount, ",");
                       }
                     }
                    memset(data_array,0,BLE_NUS_MAX_DATA_LEN);
                    index = 0;
                }
            }
            break;

        case APP_UART_COMMUNICATION_ERROR:
            APP_ERROR_HANDLER(p_event->data.error_communication); //okay to ignore
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

    if(cam_working) return;

    switch (p_ble_nus_evt->evt_type)
    {
        case BLE_NUS_C_EVT_DISCOVERY_COMPLETE:
            //NRF_LOG_INFO("Discovery complete.");
            err_code = ble_nus_c_tx_notif_enable(p_ble_nus_c);
            APP_ERROR_CHECK(err_code);
            //NRF_LOG_INFO("Connected to device with Nordic UART Service.");

            if(err_code != NRF_ERROR_BUSY)
            {
                APP_ERROR_CHECK(err_code);
            }
            break;

        case BLE_NUS_C_EVT_NUS_TX_EVT:
      
            //sendLte("ble\r");     //heo
            readBle(p_ble_nus_evt->p_data);

            break;

        case BLE_NUS_C_EVT_DISCONNECTED:
           // NRF_LOG_INFO("Disconnected.");
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

           // NRF_LOG_INFO("Connection 0x%x established, starting DB discovery.",
           //              p_gap_evt->conn_handle);

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
            new_dev = true;
        } break; // BLE_GAP_EVT_CONNECTED

        // Upon disconnection, reset the connection handle of the peer that disconnected, update
        // the LEDs status and start scanning again.
        case BLE_GAP_EVT_DISCONNECTED:
        {
            slave_count--;

           // NRF_LOG_INFO("LBS central link 0x%x disconnected (reason: 0x%x)",
            //             p_gap_evt->conn_handle,
            //             p_gap_evt->params.disconnected.reason);

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
              //  NRF_LOG_DEBUG("Connection request timed out.");
            }
        } break;

        case BLE_GAP_EVT_CONN_PARAM_UPDATE_REQUEST:
        {
          //  NRF_LOG_DEBUG("BLE_GAP_EVT_CONN_PARAM_UPDATE_REQUEST.");
            // Accept parameters requested by peer.
            err_code = sd_ble_gap_conn_param_update(p_gap_evt->conn_handle,
                                        &p_gap_evt->params.conn_param_update_request.conn_params);
            APP_ERROR_CHECK(err_code);
        } break;

        case BLE_GAP_EVT_PHY_UPDATE_REQUEST:
        {
         //   NRF_LOG_DEBUG("PHY update request.");
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
          //  NRF_LOG_DEBUG("GATT client timeout.");
            err_code = sd_ble_gap_disconnect(p_ble_evt->evt.gattc_evt.conn_handle,
                                             BLE_HCI_REMOTE_USER_TERMINATED_CONNECTION);
            APP_ERROR_CHECK(err_code);
        } break;

        case BLE_GATTS_EVT_TIMEOUT:
        {
            // Disconnect on GATT server timeout event.
         //   NRF_LOG_DEBUG("GATT server timeout.");
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
       // NRF_LOG_INFO("ATT MTU exchange completed.");

        m_ble_nus_max_data_len = p_evt->params.att_mtu_effective - OPCODE_LENGTH - HANDLE_LENGTH;
      //  NRF_LOG_INFO("Ble NUS max data length set to 0x%X(%d)", m_ble_nus_max_data_len, m_ble_nus_max_data_len);
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
                       APP_IRQ_PRIORITY_HIGHEST, // HIGHEST
                       err_code);

    APP_ERROR_CHECK(err_code);
}
/**@snippet [UART Initialization] */


/**@brief Function for initializing and handling timer modules.
 */
static void repeated_timer_handler(void * p_context)
{

   saadc = true;
   
   nrf_saadc_enable();
   nrf_saadc_task_trigger(NRF_SAADC_TASK_START);
   nrf_drv_timer_enable(&m_timer);
   nrf_drv_ppi_channel_enable(m_ppi_channel);
}

static void psm_timer_handler(void * p_context)
{

    
}

static void flame_timer_handler(void * p_context)
{

   
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
                                flame_timer_handler);
    APP_ERROR_CHECK(err_code);
}

static void start_repeated_timer()
{
    ret_code_t err_code;
    err_code = app_timer_start(m_repeated_timer_id, APP_TIMER_TICKS(1000), NULL); //1020000 (17min)
    APP_ERROR_CHECK(err_code);
}

static void start_psm_timer()
{
    ret_code_t err_code;
    err_code = app_timer_start(m_psm_timer_id, APP_TIMER_TICKS(10000), NULL); // 1800000 (30min)
    APP_ERROR_CHECK(err_code);
}

static void start_flame_timer()
{
    ret_code_t err_code;
    err_code = app_timer_start(m_lte_timer_id, APP_TIMER_TICKS(1000), NULL); //300000 (5min)
    APP_ERROR_CHECK(err_code);
}


/**@brief Function for checking LTE modem service state.
 *
 * @detail response after AT command "AT+QCDS" should include "SRV" string.
 *         run_time_updates flag allows at response over UART can be used in checkMsg() function
 */
void lte_check(void)
{
    run_time_updates = true;
    at_send("AT+QCDS\r", 9);
    run_time_updates = false;
}

/**@brief Function for checking time over RTC in LTE modem
 *
 * @detail response after AT command "AT+CCLK?" should include "2" character.
 *         AT command "AT+CFUN=1,1" reboots LTE modem.
 */
void time_check(void)
{
  at_send("AT+CCLK?\r", 10);
  nrf_delay_ms(1000);
  if(!checkMsg2(temp_array, '2', 7))
  {
    at_send("AT+CFUN=1,1\r", 13);
    run_time_updates=false;
    memset(temp_array, 0, BLE_NUS_MAX_DATA_LEN);
    return sd_nvic_SystemReset();
  }
}


/**@brief Function for connecting LTE modem to AWS server.
 *
 * @detail if there's already a available connection between AWS server and LTE modem, then skip all the connection steps.
 *         if connection between AWS server and LTE modem is not closed clearly, then close and disconnect the connection.
 *         it needs run_time_updates flag to use checkMsg() function.
 *         when connection between AWS server and LTE modem is built successfully, the response is 0,0,0.
 */
void lte_setup()
{
    run_time_updates = true;

    at_send("AT+QMTCONN?\r", 13);
    if(!checkMsg2(temp_array, "0,3", 7))
    {
      at_send("AT+QMTCLOSE=0\r", 15);
      if(!checkMsg2(temp_array, "ERROR", 7))
      {
        at_send("AT+QMTCLOSE=0\r", 15);
        checkMsg(temp_array, "+QMTCLOSE: 0,0", 7, false, 1);

        at_send("AT+QMTDISC=0\r", 14);
        checkMsg(temp_array, "+QMTDISC: 0,0", 7, false, 1);
      }
      at_send("AT+QMTCFG=\"SSL\",0,1,2\r", 25);
      checkMsg(temp_array, "OK", 7, false, 1);

      at_send("AT+QMTCFG=\"version\",0,4\r", 27);
      checkMsg(temp_array, "OK", 7, false, 1);
      
      at_send("AT+QSSLCFG=\"cacert\",2,\"AWSroot.pem\"\r",41);
//      at_send("AT+QSSLCFG=\"cacert\",2,\"NAVERroot.pem\"\r",43);
      checkMsg(temp_array, "OK", 7, false, 1);
      
      at_send("AT+QSSLCFG=\"clientcert\",2,\"AWScert.pem\"\r", 45);
//      at_send("AT+QSSLCFG=\"clientcert\",2,\"NAVERcert.pem\"\r", 47);
      checkMsg(temp_array, "OK", 7, false, 1);
      
      at_send("AT+QSSLCFG=\"clientkey\",2,\"AWSprivate.pem\"\r", 47);
//      at_send("AT+QSSLCFG=\"clientkey\",2,\"NAVERprivate.pem\"\r", 49);
      checkMsg(temp_array, "OK", 7, false, 1);

      at_send("AT+QSSLCFG=\"seclevel\",2,2\r", 29);
      checkMsg(temp_array, "OK", 7, false, 1);

      at_send("AT+QSSLCFG=\"sslversion\",2,4\r", 31);
      checkMsg(temp_array, "OK", 7, false, 1);

      at_send("AT+QSSLCFG=\"ciphersuite\",2,0xffff\r", 37);
      checkMsg(temp_array, "OK", 7, false, 1);

      at_send("AT+QSSLCFG=\"ignorelocaltime\",1\r", 34);
      checkMsg(temp_array, "OK", 7, false, 1);
      
      at_send("AT+QMTOPEN=0,\"avq1xsl5cm8b-ats.iot.us-west-2.amazonaws.com\",8883\r", 68);
      checkMsg(temp_array, "+QMTOPEN: 0,0", 10, false, 87);
//      at_send("AT+QMTOPEN=0,\"msg01.cloudiot.ntruss.com\",8883\r", 49);
//      checkMsg(temp_array, "+QMTOPEN: 0,0", 10, false, 68); // strlen(src) should be 88 when mqtt is open.
      
      at_send("AT+QMTCONN=0,\"mqtttest\"\r", 27);
      checkMsg(temp_array, "+QMTCONN: 0,0,0", 10, false, 48); // strlen(src) shoudl be 49 when mqtt is connected.
    }

    run_time_updates = false;
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

    /* setup m_timer for compare event every 400ms */
    uint32_t ticks = nrf_drv_timer_ms_to_ticks(&m_timer, 100);     //heo
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
        
        //printf("bat volt : %d\n", batt_lvl_in_milli_volts);

        percentage_batt_lvl = battery_level_in_percent(batt_lvl_in_milli_volts);

        //printf("bat level : %f\n", percentage_batt_lvl);
        //printf(percentage_batt_lvl);
        


        if(batt_lvl_in_milli_volts<37000) {
          batlevel = 0;
        }
        if(batt_lvl_in_milli_volts<40000) {
          batlevel = 20;
        }
        if(batt_lvl_in_milli_volts<43000) {
          batlevel = 40;
        }
        if(batt_lvl_in_milli_volts<46000) {
          batlevel = 60;
        }
        if(batt_lvl_in_milli_volts<49000) {
          batlevel = 80;
        }
        else {
          batlevel = 100;
        }

	//ctrlPower(percentage_batt_lvl); // change below code to this.
        //ctrlPower(90); // it should be removed if battery check module operation works fine.


        //printf("\nflame: %d", p_event->data.done.p_buffer[FLAME_CHANNEL]);

        //printf("    batlevel : %d\n",batlevel);


        if(saadc==false) {
          nrf_drv_ppi_channel_disable(m_ppi_channel);
          nrf_drv_timer_disable(&m_timer);
          nrf_saadc_task_trigger(NRF_SAADC_TASK_STOP);
          nrf_saadc_event_clear(NRF_SAADC_EVENT_STARTED);
          nrf_saadc_event_clear(NRF_SAADC_EVENT_END);
          nrf_saadc_disable();
          saadc_counter = 0;
          return;
        }

        if(saadc_counter == 1)
        {
            nrf_drv_ppi_channel_disable(m_ppi_channel);
            nrf_drv_timer_disable(&m_timer);
            nrf_saadc_task_trigger(NRF_SAADC_TASK_STOP);
            nrf_saadc_event_clear(NRF_SAADC_EVENT_STARTED);
            nrf_saadc_event_clear(NRF_SAADC_EVENT_END);
            nrf_saadc_disable();
            //sendLte("saadc done\r");      //heo
            saadc_counter = 0;
            saadc = false;
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

    err_code = nrf_drv_saadc_channel_init(FLAME_CHANNEL, &ch_config_flame);   //mj
    APP_ERROR_CHECK(err_code);

    err_code = nrfx_saadc_buffer_convert(m_buffer_pool[0], SAMPLES_IN_BUFFER);
    APP_ERROR_CHECK(err_code);

    err_code = nrfx_saadc_buffer_convert(m_buffer_pool[1], SAMPLES_IN_BUFFER);
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
       .interrupt_priority = APP_IRQ_PRIORITY_MID, 
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
       .interrupt_priority = APP_IRQ_PRIORITY_MID, 
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
     // printf("\n\rdevice_id_get failed\n\r");
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
  //printf("\n\rall settings are completed\n\r");
}




//heo
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
//heo


// TODO(100): Should be coded more precisely. It's not solid yet. (~Sprint 12 maybe)
/**@brief Function for checking whether device is damaged or not. */
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

/**@brief Function for checking whether device is tilted or not. */
bool checkEnv(float* angle) {
  for (int i = 0; i < 2; i++) {
    angle[i] = round(atan2(acceleration_mg[i],acceleration_mg[2])*(180/M_PI));
    if (fabs(angle[i]) >= TRIGGER_TIL) {
      return false;
    }
  }
  return true;
}



//heo
/**@brief Function for removing duplicated number counts while data calculation */
int rmdup(float *arr, int len, int num) 
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
void data_comparison(void) { 
  float Evt_match = 0;

  static int num_lte=0;

  
  static int num=0;
  static int num_array[100]={0};

  static float gi[20]={0};
  static float ri=0;
  static float w=0;
  static float oi_1[20]={0};
  static float oi_2[20]={0};

  

  static float Am[15] = {6.1, 6.1, 121.7, 2.9, 2.7, 0.21, 0.6, 0.6, 0.11, 0.6, 15.1, 15.1, 15.1, 50.1, 50.1};

  static int cal=0;
  static float cal_avg=0;
  static float cal_var=0;
  static float cal_std=0;

  static float cal_k=0;

/*
  if(num>=350) {

    float Am[15] = {6.1, 6.1, 121.7, 2.9, 2.7, 0.21, 0.6, 0.6, 0.11, 0.6, 70.1, 70.1, 70.1, 200.1, 200.1};
 
  }
  else if(num>=250) {
 
    float Am[15] = {6.1, 6.1, 121.7, 2.9, 2.7, 0.21, 0.6, 0.6, 0.11, 0.6, 20.1, 20.1, 20.1, 100.1, 100.1};

  }
  else if(num>=150) {

    float Am[15] = {6.1, 6.1, 121.7, 2.9, 2.7, 0.21, 0.6, 0.6, 0.11, 0.6, 15.1, 15.1, 15.1, 50.1, 50.1};
 
  }
  else {

    float Am[15] = {6.1, 6.1, 121.7, 2.9, 2.7, 0.21, 0.6, 0.6, 0.11, 0.6, 15.1, 15.1, 15.1, 50.1, 50.1};

  }

  for (int i = 0; i < 5; i++) {
    Evt_match += fabs(S[i]/(w[i]*Am[i]-cal_data[0][i]))/15;
  }
  for (int i = 0; i < 5; i++) {
    Evt_match += fabs(S[i+5]/(w[i+5]*Am[i+5]-cal_data[1][i]))/15;
  }
  for (int i = 0; i < 5; i++) {
    Evt_match += fabs(S[i+10]/(w[i+10]*Am[i+10]-cal_data[2][i]))/15;
  }
*/


  num_lte++;
  acccount++;
  cal++;
  control++;


  if(num_lte==1) {

    acc_current_master += sprintf(acc_current_master, "{\"what\" : \"");

 }
  
  //num = 3.5*cal_data[2][0] + 3.5*cal_data[2][1] + 3.5*cal_data[2][2];  
  num = 3.5*cal_data[2][0] + 3.5*cal_data[2][1] + 3.5*cal_data[2][2] + 0.5*cal_data[2][3] + 0.5*cal_data[2][4];
  num_array[0] = num;
  
  

  acc_current_test += sprintf(acc_current_test, "%d   %d   ", acccount, num);
 
  
  FILE* pFile = fopen("work_1mwalk1.txt", "a");
  fputs(acc_array_test, pFile);
  fputs("\n", pFile);
  fclose(pFile);
  
  memset(acc_array_test, 0, sizeof(acc_array_test));
  acc_current_test = acc_array_test;

  memmove(num_array+1,num_array,sizeof(int)*99);
  
  memset(cal_data, 0x00, sizeof(float)*5*3);
  memset(similarity,0x00,sizeof(float)*2);
} 
//heo


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
      data[i][count] = iis2dlpc_from_fs2_to_mg(data_raw_acceleration.i16bit[i]);
    }
    for (int i = 3; i < 5; i++) {
      data[i][count] = atan2(data[i-3][count],data[2][count])*(180/M_PI);
    }
    count++;
    //printf("
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
 
  
  if(count == 50) {

    data_calculation();
    data_comparison();
    count = 0;
  }
  memcpy(previous_value, acceleration_mg, sizeof(acceleration_mg));
}




/**@brief Function for setting standard time of this device.
 * @details it gets actual time from LTE modem over UART communication and change the format to year, month, day, hour, min, sec.
 */
void set_initial_time() {
  struct tm initial_time;

  run_time_updates = true;
  time_check();
  run_time_updates = false;
  
  initial_time.tm_year = 2000 + atoi(&temp_array[19]);
  initial_time.tm_mon = atoi(&temp_array[22]) - 1;
  initial_time.tm_mday = atoi(&temp_array[25]);
  initial_time.tm_hour = atoi(&temp_array[28]) + 9;
  initial_time.tm_min = atoi(&temp_array[31]);
  initial_time.tm_sec = atoi(&temp_array[34]);
  
  //printf("%d, %d, %d, %d, %d, %d\n", initial_time.tm_year, initial_time.tm_mon, initial_time.tm_mday, initial_time.tm_hour, initial_time.tm_min, initial_time.tm_sec);
  nrf_cal_set_time((uint32_t)initial_time.tm_year, initial_time.tm_mon, initial_time.tm_mday, initial_time.tm_hour, initial_time.tm_min, initial_time.tm_sec);
  memset(temp_array,0,BLE_NUS_MAX_DATA_LEN);
}

/**@brief Function for setting report time */
bool check_time(struct tm* time_buf) {
  switch (time_buf->tm_hour)
  {
    case 0: // 0 + 9 = South Korea time
      if (reptForCtTime == false && time_buf->tm_min < 3) {
	reptForCtTime = true;
	return true;
      }
    break;
    case 3: // 12
      if (reptForCtTime == false && time_buf->tm_min < 3) {
	reptForCtTime = true;
	return true;
      }
    break;
    case 9: // 18
      if (reptForCtTime == false && time_buf->tm_min < 3) {
	reptForCtTime = true;
	return true;
      }
    break;
    case 15: // 24
      if (reptForCtTime == false && time_buf->tm_min < 3) {
	reptForCtTime = true;
	return true;
      }
    break;
    default:
      if (reptForCtTime == true && time_buf->tm_min >= 3) { 
        reptForCtTime = false;
      }
    break;
  }
  return false;
}

/**@brief Function for checking time and conducting camera capture in report time. */
void print_current_time() {
    struct tm* time_value;
    time_value = nrf_cal_get_time_calibrated();
    if (check_time(time_value)) {
      // if (low_power || cam_working) return;
      if (cam_working) return;
      sendLte("report time\r");
      nrf_delay_ms(1000);
    }
}

/**@brief Function for calibrating new actual time on calendar. */
void calendar_updated() {
    if(run_time_updates)
    {
        print_current_time();
    }
}

int main(void)

{
    
    CoreDebug->DEMCR |= 0x1000000;
    DWT->CYCCNT = 0;
    DWT->CTRL |= 0x1;

    NRF_CLOCK->EVENTS_HFCLKSTARTED = 0;
    NRF_CLOCK->TASKS_HFCLKSTART = 1;
    while(NRF_CLOCK->EVENTS_HFCLKSTARTED == 0);

    board_init();
    log_init();
    timer_init();
    uart_init();
  
    nrf_cal_init();
    nrf_delay_ms(3000);
    set_initial_time();
    nrf_cal_set_callback(calendar_updated, 4);
    
    

    leds_init();
    power_management_init();
    //ble_stack_init();
    sd_power_dcdc_mode_set(NRF_POWER_DCDC_ENABLE);
    //gatt_init();
    platform_init();
    //db_discovery_init();
    saadc_init();
    saadc_sampling_event_init();
    //nus_c_init();
    //ble_conn_state_init();
    //scan_init();
 


    lte_check();
    checkMsg(temp_array, "\"SRV\"", 7, true, 1);
    lte_setup();
    sendLte("Hellow CEEDUP\r");

    create_timers();
    start_repeated_timer();
    start_flame_timer();

    printf("check\n");
    //scan_start();
    

    

     for (;;)
    {
        if(control == 50) {
          printf("check");
          printf("%d\n",acccount);
          read_dht_data();
          control=0;
        }

        readAcc();
        nrf_delay_us(100);

        //idle_state_handle();
        
    }
}
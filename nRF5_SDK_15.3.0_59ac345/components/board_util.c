/**
  * Copyright (c) 2020, CEEDUP Inc.
  * All rights reserved.
  *
  * Name: board_util.c
  * Author: GwangRok Baek
  * Purpose: Implementing the functions needed by target board.
  */
#include "board_util.h"

uint8_t BLE_EVT_MAP[BLE_EVT_COUNT] = {0, };

uint8_t checkMap(uint8_t* map, int event) {
  if (map[event] == 0) {
    return 0;
  }
  else return 1;
}

void setMap(uint8_t* map, int event) {
  map[event] = 1;
}

void clearMap(uint8_t* map, int event) {
  map[event] = 0;
}

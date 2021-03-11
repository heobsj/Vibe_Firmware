/**
  * Copyright (c) 2020, CEEDUP Inc.
  * All rights reserved.
  *
  * Name: master_util.c
  * Author: GwangRok Baek
  * Purpose: Implementing the functions needed by target board.
  */
#include "master_util.h"

uint8_t SLAVE_STATUS_MAP[NRF_SDH_BLE_CENTRAL_LINK_COUNT + 1][BLE_EVT_COUNT] = {0, };

int checkMap(uint8_t (*map)[BLE_EVT_COUNT], int number, int event) {
  if ( map[number][event] == 0) {
    return 0;
  }
  else return 1;
}

void setMap(uint8_t (*map)[BLE_EVT_COUNT], int number, int event) {
  map[number][event] = 1;
//  printf("map = ");
//  for (int i = 0; i < (NRF_SDH_BLE_CENTRAL_LINK_COUNT + 1); i++) {
//    for (int j = 0; j < BLE_EVT_COUNT; j++) {
//      printf("%d",map[i][j]);
//    }
//  }
//  printf("\n");
}

void clearMap(uint8_t (*map)[BLE_EVT_COUNT], int number, int event) {
  map[number][event] = 0;
}

void resetZeroMap(uint8_t (*map)[BLE_EVT_COUNT]) {
  for (int i = 0; i < (NRF_SDH_BLE_CENTRAL_LINK_COUNT + 1); i++) {
    for (int j = 0; j < BLE_EVT_COUNT; j++) {
      clearMap(map, i, j);
    }
  }
}
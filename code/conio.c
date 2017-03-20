#include "c_types.h"

#include "eagle_soc.h"
#include "ets_sys.h"
#include "gpio.h"
#include "uart_dev.h"
#ifdef NOSDK
 #include "nosdk8266.h"
 #include "esp8266_auxrom.h"
 #include "esp8266_rom.h"
#endif

#include "conio.h"

#define IOBUFSIZE   512

static volatile uint8_t rxBuf[IOBUFSIZE];
static volatile uint16_t rxR = 0;
static volatile uint16_t rxW = 0;


//
//
//
uint16_t ICACHE_FLASH_ATTR GetRxCnt(void) {
  if (rxW == rxR) return 0;
  if (rxW > rxR) return rxW - rxR;
  return (sizeof(rxBuf) - rxR) + rxW;
}


//
//
//
uint8_t ICACHE_FLASH_ATTR GetRxChar(void) {
  int i;
  // Wait for character to become available
  while (!GetRxCnt()) continue;  
  rxR = (rxR + 1) & (sizeof(rxBuf) - 1);
  return rxBuf[rxR];
}


//
//
//
void ICACHE_FLASH_ATTR EmptyComBuf(void) {
    while (GetRxCnt()) GetRxChar();
}


//
//
//
void StoreInComBuf(uint8_t ch) {
  if (GetRxCnt() < sizeof(rxBuf) - 1) {
    rxW = (rxW + 1) & (sizeof(rxBuf) - 1);
    rxBuf[rxW] = ch;
  }
}



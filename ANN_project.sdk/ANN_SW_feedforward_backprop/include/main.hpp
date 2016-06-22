/**
 *
 * Carlos III University of Madrid.
 *
 * Master Final Thesis: Heartbeat classifier based on ANN (Artificial Neural
 * Network).
 *
 * Author: Pedro Marcos Solórzano
 * Tutor: Luis Mengibar Pozo (Tutor)
 *
 *
 * Main header file
 *
 *
 */

#ifndef MAIN_H_
#define MAIN_H_

/*
 * Includes
 */
#include "Training.hpp"
#include <iostream>
#include <fstream>
#include "xgpio.h"
#include "ff.h"
#include "xparameters.h"
/*
 * Name space
 */
using namespace std;

/*
 * GPIO (Leds and switches) Configuration
 */
#define GPIO_DEVICE_ID          XPAR_AXI_GPIO_0_DEVICE_ID
#define LED_CHANNEL             1
#define SW_CHANNEL		2
#define LED_DIRECTION_MASK      0x01
/*
 * System state LED codes
 */
#define LED_ERROR_STATE         0b1111
#define LED_READY_STATE         0b0001
#define LED_FILE_ERROR_STATE    0b0101
#define LED_SUCCESS_STATE       0b0011
/*
 * File System configuration
 * Size in bytes.
 */
#define FS_PATH			"0:/"
#define TRAIN_FILE_DIR	"train.ann"
#define TEST_FILE_DIR		"test.ann"
#define ANN_FILE_DIR	"weigths.ann"
#define IN_FILE_DIR		"in.ann"

/*
 * Function declaration
 */
int main(void);

#endif /* MAIN_H_ */

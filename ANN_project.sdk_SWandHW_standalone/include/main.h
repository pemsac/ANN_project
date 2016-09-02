/**
 *
 * Carlos III University of Madrid.
 *
 * Master's Final Thesis: Heart-beats classifier based on ANN (Artificial Neural
 * Network).
 *
 * Software implementation in C++ for Standalone Zynq-7000 ARM platform
 *
 * Author: Pedro Marcos Solórzano
 * Tutor: Luis Mengibar Pozo
 *
 *
 * Main code to train, validate and test some feed-fordware ANN examples.
 *
 * Header file
 *
 *
 */

/*
 * Header guard
 */
#ifndef INCLUDE_MAIN_H_
#define INCLUDE_MAIN_H_

/*
 * Includes & name space
 */
#include <sstream>
#include <iostream>

#include "Training.h"

#include "ff.h"
#include "xtime_l.h"
#include "xstatus.h"
#include "xgpio.h"

using namespace std;

/*
 * Files' directories
 *
 * Note the files must be on the file system root and their name cannot be
 * longer than 12 characters
 */
#define FILE_SYS_PATH		"0:/"
#define TARGET_FILE_DIR		"target_1.dat"
#define ANN_FILE_DIR		"ANN_1.ann"
#define TRAIN_FILE_DIR		"train_1.ann"
#define IN_FILE_DIR		"input_1.dat"

/*
 * Input codify parameters
 */
#define CODEC_MIN 		0
#define CODEC_MAX		1

/*
 * Function declaration
 */
int main(void);

#endif

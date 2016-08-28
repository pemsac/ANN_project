/**
 *
 * Carlos III University of Madrid.
 *
 * Master's Final Thesis: Heart-beats classifier based on ANN (Artificial Neural
 * Network).
 *
 * Software implementation in C++ for GNU/Linux x86 & Zynq's ARM platforms
 *
 * Author: Pedro Marcos Solórzano
 * Tutor: Luis Mengibar Pozo
 *
 *
 * Main code to train, validate and test a feed-forward ANN
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
using namespace std;

#include "Training.h"

#include "ff.h"
#include "xtime_l.h"
#include "xstatus.h"
#include "xgpio.h"

/*
 * Files' directories
 */
#define FILE_SYS_PATH		"0:/"
#define TARGET_FILE_DIR		"target_4.dat"
#define ANN_FILE_DIR		"ANN_4.ann"
#define TRAIN_FILE_DIR		"train_4.ann"
#define IN_FILE_DIR		"input_4.dat"

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

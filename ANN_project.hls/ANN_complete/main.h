/**
 *
 * Carlos III University of Madrid.
 *
 * Master's Final Thesis: Heart-beats classifier based on ANN (Artificial Neural
 * Network).
 *
 * Software implementation in C++ for GNU/Linux x86 & Zynq's ARM platforms
 *
 * Author: Pedro Marcos Sol�rzano
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
#include <fstream>
#include "Training.h"

/*
 * Files' directories
 */
#define TARGET_FILE_DIR		"../../../../example_2/target.dat"
#define ANN_FILE_DIR		"../../../../example_2/ANN.ann"
#define TRAIN_FILE_DIR		"../../../../example_2/Training.ann"
#define IN_FILE_DIR		"../../../../example_2/input.dat"

/*
 * Input codify parameters
 */
#define CODEC_MIN 		0
#define CODEC_MAX		1

/*
 * TestBench minimal accuracy
 */
#define TEST_ACC		100

/*
 * Function declaration
 */
int main(void);

#endif

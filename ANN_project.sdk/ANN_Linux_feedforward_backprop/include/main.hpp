/**
 *
 * Carlos III University of Madrid.
 *
 * Master Final Thesis: Heartbeat classifier based on ANN (Artificial Neural
 * Network).
 *
 * Author: Pedro Marcos Sol�rzano
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
 * Defines
 */

/*
 * FILE SYSTEM DIRECTORIES
 */
#define FS_PATH			"0:/"
#define TRAIN_FILE_DIR		"training.ann"
#define ANN_FILE_DIR		"ANN.ann"
#define IN_FILE_DIR		"input.ann"
#define OUT_FILE_DIR		"output.ann"

#ifdef TRAINING_MODE
/*
 * TRAINING PARAMETERS
 */
#define TRAIN_MOMENTUM		0
#define TRAIN_LEARN_RATE	0
#define TRAIN_MAX_SQR_ERR	0
#define TRAIN_MAX_INTER		0
#endif

/*
 * Includes
 */
#ifdef TRAINING_MODE
#include "Training.hpp"
#else
#include "ANN.hpp"
#endif
#include <iostream>
#include <fstream>
/*
 * Name spaces
 */
using namespace std;

/*
 * Function declaration
 */
int main(int argc, char *argv[]);

#endif /* MAIN_H_ */

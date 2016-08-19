/**
 *
 * Carlos III University of Madrid.
 *
 * Master Final Thesis: Heartbeat classifier based on ANN (Artificial Neural
 * Network).
 *
 * Hardware implementation in High Level Synthesis (HLS) and Vivado IP
 * Integrator for Zybo platform (Zynq-7000 APSoC, xc7z010clg400-1 Part)
 *
 * Author: Pedro Marcos Solórzano
 * Tutor: Luis Mengibar Pozo (Tutor)
 *
 *
 * Testbench for HLS implemented ANN
 *
 * Header file
 *
 *
 */

#ifndef TESTBENCH_H_
#define TESTBENCH_H_

#include <iostream>
#include <fstream>
#include "Training.h"

using namespace std;


/*
 * FILE SYSTEM DIRECTORIES
 */
#define FS_PATH			"0:/"
#define TRAIN_FILE_DIR		"example_2/training.ann"
#define ANN_FILE_DIR		"example_2/ANN.ann"
#define IN_FILE_DIR		"example_2/input.ann"
#define OUT_FILE_DIR		"output.ann"


#endif /* TESTBENCH_H_ */

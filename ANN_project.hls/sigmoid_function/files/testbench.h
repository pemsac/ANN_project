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
 * Testbench for HLS implemented Sigmoid function
 *
 * Header file
 *
 *
 */

/*
 * Header guard
 */
#ifndef TESTBENCH_H_
#define TESTBENCH_H_

/*
 * Include
 */
#include <iostream>
#include "sigmoid.h"
using namespace std; 

/*
 * Function declaration
 */
int main(void);
int test(const data_t num);
#endif

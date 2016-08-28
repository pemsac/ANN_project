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
 * Sigmoid activation function for HLS implementation.
 *
 * Header file
 *
 *
 */

/*
 * Header guard
 */
#ifndef SIGMOID_H_
#define SIGMOID_H_

/*
 * Include
 */
#include <cmath>

/*
 * Data type
 */
typedef double data_t;

data_t *dyn_mem;
/*
 * Function declaration
 */
void sigmoid(bool conf, const data_t num, data_t *out);

#endif

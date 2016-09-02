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
 * Feed-forward Artificial Neural Network with sigmoid activation & softmax
 * output functions.
 *
 * Header file with the class definition.
 *
 *
 */

/*
 * Header guard
 */
#ifndef ANN_H_
#define ANN_H_

/*
 * Max neural network sizes
 */
#define MAX_NUM_LAYER	4
#define MAX_SIZE_LAYER	40

/*
 * Includes
 */
#include <cmath>
#include "ap_int.h"

/*
 * data types
 */
typedef float		fword_t;
typedef int		iword_t;

/*
 * stream port type
 */
//struct fword_p
//{
//  fword_t 	data;
//  ap_uint<4>	keep;
//  ap_uint<1>	last;
//};
//
//struct byte_p
//{
//  iword_t	data;
//  ap_uint<1>	keep;
//  ap_uint<1>	last;
//};

/*
 * IP top function declaration
 *
 */
fword_t  ANN(const iword_t P_mode,
	     const iword_t P_index1,
	     const iword_t P_index2,
	     const iword_t P_intIn_index3,
	     const fword_t P_floatIn);

#endif

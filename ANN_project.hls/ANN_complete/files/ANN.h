/**
 *
 * Carlos III University of Madrid.
 *
 * Master's Final Thesis: Heartbeats classifier based on ANN (Artificial Neural
 * Network).
 *
 * Software implementation in C++ for GNU/Linux x86 & Zynq's ARM platforms
 *
 * Author: Pedro Marcos Solórzano
 * Tutor: Luis Mengibar Pozo (Tutor)
 *
 *
 * Feed-forward Artificial Neural Network with sigmoid & softmax activation
 * functions.
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
 * Includes
 */
#include <cmath>
#include "ap_int.h"

/*
 * Variables:
 * _WandB:	 weights and bias of each neuron
 * _out:	 output values of each neuron
 * _numLayer:	 number of layers including input and output layers
 * _layerSize: number of neurons in each layer.
 */
static double ***_WandB, **_out;
static int _numLayer, *_layerSize;

/*
 * Feed-forward process.
 * The neurons have Sigmoid activation functions and Softmax output functions
 *
 * When conf is 0,
 * Check documentation to get more information
 */
void ANN(ap_int<2> config, double *in, int numLayer, int *layerSize,
	 double ***WandB, double **out);

/*
 * Getter for network's outputs (outputs of last layer's neurons)
 */
double getOut(int i) const{return _out[_numLayer-1][i];}

#endif

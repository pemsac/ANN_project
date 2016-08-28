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

#define MAX_NUM_LAYER	4
#define MAX_SIZE_LAYER	35

/*
 * Includes
 */
#include <cmath>



/*
 *
 */
void feedforward(const int numLayer,
		 const int layerSize[MAX_NUM_LAYER],
		 const double WandB[MAX_NUM_LAYER][MAX_SIZE_LAYER][MAX_SIZE_LAYER+1],
		 double uOut[MAX_NUM_LAYER][MAX_SIZE_LAYER],
		 const double netIn[MAX_SIZE_LAYER],
		 bool netOut[MAX_SIZE_LAYER]);

#endif

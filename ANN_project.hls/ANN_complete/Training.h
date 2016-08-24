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
 * Gradient Descent Back-propagation based on Cross Entropy Error (CEE).
 * This algorithm is designed to train feed-forward ANN with sigmoid activation
 * and Softmax output functions.
 *
 * Header file with class definition
 * This class is derived from ANN class in order to get access to all the
 * network variables.
 *
 *
 */


/*
 * Header guard
 */
#ifndef TRAINING_H_
#define TRAINING_H_

/*
 * Training parameters
 */
#define START_LEARN_RATE		0.1
#define MIN_LEARN_RATE			0.01
#define MAX_LEARN_RATE			0.8
#define INCRE_LEARN_RATE		1.05
#define DECRE_LEARN_RATE		0.7
#define VARY_RATE			1.01
#define MOMENTUM			0.15

/*
 * Includes & name space
 */
#include "ANN.h"
#include <stdlib.h>
#include <time.h>

using namespace std;

/*
 * Back-propagation training class derived from ANN class
 */
class Training
{
private:
  /*
   * Private variables:
   * _learnRate:	Learning Rate.
   * _momentum:		Momentum.
   * _delta:		Weights & Bias Variations (deltas) Matrix
   * _grad:		Neuron Gradient Matrix
   * _randWandB:	Random Weights & Bias Matrix to initialize a new ANN base
   */
  double _learnRate, _momentum, ***_delta, **_grad,
  _WandB[MAX_NUM_LAYER][MAX_SIZE_LAYER][MAX_SIZE_LAYER+1],
  _uOut[MAX_NUM_LAYER][MAX_SIZE_LAYER];

  int _numLayer, *_layerSize;


public:

  /*
   * Constructor method for new ANN
   *
   * It initializes all private variables and ANN base object with random
   * weights and the following parameters:
   * - number of layers, including input & output layers. (numLayer)
   * - number of neurons in each layer (layerSize)
   */
  Training(int numLayer, int *layerSize);

  /*
   * Virtual destructor to free all dynamic memory (including ANN base)
   */
  virtual ~Training();

  /*
   * Back-propagation training method.
   *
   * There're 5 steps:
   * 1- Update all neurons outputs for an input applying feed-forward method
   * 2- Calculate error gradient of each neuron applying back-propagation
   * 3- Calculate and apply momentums (moments of inertia) if it's available
   * 4- Calculate deltas from gradients
   * 5- Update weights with deltas.
   *
   * Check documentation for more information
   */
  void backpropagation(double *in,double *target);

  /*
   * Method to get Cross Entropy Error for current network's outputs.
   */
  double CEE(double *target);

  /*
   * Update Learning Rate and Momentum parameters according to the Mean Cross
   * Entropy Error (MCEE) of the current and last iterations
   */
  void updateLRandM(double currMCEE, double lastMCEE);

  void uOutUpdate(double *in);
};

#endif

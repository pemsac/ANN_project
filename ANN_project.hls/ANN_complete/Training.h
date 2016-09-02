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
#include <stddef.h>

using namespace std;

/*
 * Back-propagation training class
 */
class Training
{
private:
  /*
   * Private variables (for training tasks):
   * _learnRate:	Learning Rate.
   * _momentum:		Momentum.
   * _delta:		Weights & Bias Variations (deltas) Matrix
   * _grad:		Neuron Gradient Matrix
   */
  fword_t _learnRate, _momentum, ***_delta, **_grad,

  /*
   * Private variables (copy of the ANN base):
   * _numLayer:		Number of Layers. It includes input and output layers
   * _layerSize:	Layers Sizes Array. Number of neurons in each layer.
   * _WandB:		Weights & Bias Matrix.
   * _uOut:		Outputs Matrix. Output values of each neuron
   */
  ***_WandB, **_uOut;
  iword_t _numLayer, *_layerSize;


public:

  /*
   * Constructor method for new ANN (on Hardware)
   *
   * It initializes all private variables and configure a new ANN IP core with
   * random weights and the following parameters:
   * - number of layers, including input & output layers. (numLayer)
   * - number of neurons in each layer (layerSize)
   */
  Training(iword_t numLayer, iword_t *layerSize);

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
  void backpropagation(fword_t *in,fword_t *target);

  /*
   * Method to get Cross Entropy Error for current network's outputs.
   */
  fword_t CEE(fword_t *in, fword_t *target);

  /*
   * Update Learning Rate and Momentum parameters according to the Mean Cross
   * Entropy Error (MCEE) of the current and last iterations
   */
  void updateLRandM(fword_t currMCEE, fword_t lastMCEE);

};

#endif

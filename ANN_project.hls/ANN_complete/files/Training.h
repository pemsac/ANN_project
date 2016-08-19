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
 * Back-propagation training for feed-forward ANN with momentum & gradient
 * descent optimization algorithm
 *
 * Header file with class definition
 * This class is derived from ANN class in order to get access to all the
 * network during the train.
 *
 *
 */


/*
 * Header guard
 */
#ifndef TRAINING_H_
#define TRAINING_H_

/*
 * Includes
 */
#include <stdlib.h>
#include <time.h>

/*
 * Back-propagation training class derived from ANN class
 */
class Training
{
private:
  /*
   * Private variables:
   * _learnRate:	parameter of gradient descent algorithm
   * _momentum:		parameter to stabilize the training  (optional)
   * _preWandB:		previous weights & bias of a neuron after adjusting them
   * _deltaErr:		delta error of each neuron
   * _randWandB:	random weights & bias to initialize a new ANN base.
   * _WandB:		weights and bias of each neuron
   * _out:	 	output values of each neuron
   * _numLayer:	 	number of layers including input and output layers
   * _layerSize: 	number of neurons in each layer.
   */
  double _learnRate, _momentum, ***_preWandB, **_deltaErr, ***_WandB, **_out;
  int _numLayer, *_layerSize;

public:

  /*
   * Constructor method for new ANN
   *
   * It initializes the ANN base object with random weights.
   * Other ANN parameters must be set:
   * - number of layers, including input & output layers. (numLayer)
   * - number of neurons in each layer (layerSize)
   * The training parameters to be introduced are the momentum (optional) and
   * the learning rate.
   */
  Training(int numLayer, int *layerSize, double momentum,
	   double learnRate);

  /*
   * Virtual destructor to free all dynamic memory (including ANN base)
   */
  virtual ~Training();

  /*
   * Back-propagation training method.
   *
   * The training is performed introducing an array of inputs (in) and their
   *
   * *******LACK OF COMMENTS
   */
  void backpropagation(double *in,double *target);

  /*
   * Method to get the current Mean Squared Error
   *
   * *********** LACK OF COMMENTS
   */
  double mse(double *in) const;
};

#endif

/**
 *
 * Carlos III University of Madrid.
 *
 * Master Final Thesis: Heartbeat classifier based on ANN (Artificial Neural
 * Network).
 *
 * Author: Pedro Marcos Solórzano
 * Tutor: Luis Mengibar Pozo (Tutor)
 *
 *
 * Back-propagation training for feedforward ANN
 * Header file
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
#include "ANN.h"
#include <stdlib.h>

/*
 * Back-propagation training class
 * This class is derived from ANN class
 */
class Training
{
private:
  /*
   * Private variables:
   *
   * The training needs some parameters such a learning Rate and a momentum.
   *
   * On the other hand, the training needs to save information about the last
   * neurons' weights used (_prevWeight) and their Delta Error (deltaErr)
   *
   * _ann will be the ANN to be trained
   */
  double **_deltaErr, ***_prevWeight, _learnRate, _momentum;

  ANN _ann;

public:
  /*
   * Empty constructor
   */
  Training();

  /*
   * Constructor method for a new ANN
   *
   * It creates a new ANN with random weights and trains it. These parameters
   * must be set:
   * - number of layers, including input & output layers. (numLayer)
   * - number of neurons in each layer (layerSize)
   * - momentum for the training (momentum)
   * - learning rate (learnRate)
   */
  Training(int numLayer, int *layerSize, double momentum, double learnRate);

  /*
   * Constructor method to train again and improve an existing ANN
   *
   * It retrains a provided ANN. These parameters must be set:
   * - The said ANN parameters to be copied (numLayer, layerSize & weight)
   * - momentum for the training (momentum)
   * - learning rate (learnRate)
   */
  Training(int numLayer, int *layerSize, double **weight, double momentum,
           double learnRate);

  /*
   * Destructor
   */
  virtual ~Training();

  /*
   * Training method.
   *
   * The training is performed introducing a Matrix (trainMat) with possible
   * inputs beside their expected outputs. The matrix format must be:
   * ( In  , In  , ... , ... , Out , Out )
   * ( In  , In  , ... , ... , Out , Out )
   * ( ... , ... , ... , ... , ... , ... )
   *
   * where numInputs is the number of rows.
   *
   * The training goal is to achieve the desired ANN Squared Error defined in
   * minSquareErr, but it must be limited to a maximum number of interactions
   * (maxInter)
   *
   * Check Back-Propagation training's documentation for more information
   * about the performance
   */
  double backpropagation(double **trainMat, int numInputs, int maxRepeat,
                         int minSquareErr);
};

#endif

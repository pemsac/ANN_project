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
 * Feed-forward Artificial Neuronal Network.
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
 * Include math functions.
 */
#include <math.h>

/*
 * Feed-forward Artificial Neuronal Network class
 */
class ANN{

protected:
  /*
   * Private variables:
   * weight & output value of each neuron
   * number of layers and of neurons in each one.
   */
  double ***_weight, **_output;
  int _numLayer, *_layerSize;

public:
  /*
   * Empty constructor
   */
  ANN();

  /*
   * Constructor method.
   *
   * Create a new ANN setting:
   * - number of layers, including input & output layers. (numLayer)
   * - number of neurons in each layer (layerSize)
   * - weights of each neuron connection.
   */
  ANN(int numLayer, int *layerSize, double ***weight);

  /*
   * Destructor
   */
  virtual ~ANN();

  /*
   * Process a new input and return a pointer to the result array
   * (last layer outputs)
   *
   * Check Feedforward Artificial Neuronal Network's documentation for more
   * information about the performance
   */
  double *feedforward(double *input);

  /*
   * Get one of the result (from the last layer outputs)
   */
//  double getResult(int i){return _output[_numLayer-1][i];}

  /*
   * Getters & Setters
   */
//  int getNumLayer(){return _numLayer;}
//  int getLayerSize(int i){return _layerSize[i];}
//  double getOutput(int i, int j){return _output[i][j];}
//  double getWeight(int i, int j, int k){return _weight[i][j][k];}
};

#endif

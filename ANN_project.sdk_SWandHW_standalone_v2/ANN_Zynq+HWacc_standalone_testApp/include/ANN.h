/**
 *
 * Carlos III University of Madrid.
 *
 * Master's Final Thesis: Heart-beats classifier based on ANN (Artificial Neural
 * Network).
 *
 * Software implementation in C++ for Standalone Zynq-7000 ARM platform
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
 * Includes
 */
#include <cmath>
#include "xann.h"
#include "xparameters.h"

/*
 * IP defines
 */
#define HW_ANN_ID	XPAR_ANN_0_DEVICE_ID
/*
 * Feed-forward Artificial Neural Network class
 */
class ANN
{
protected:
  /*
   * Private variables:
   * _WandB:		Weights & Bias Matrix.
   * _uOut:		Outputs Matrix. Output values of each neuron
   * _numLayer:		Number of Layers. It includes input and output layers
   * _layerSize:	Layers Sizes Array. Number of neurons in each layer.
   * _netOut:		Final resulting class
   */
  float ***_WandB, **_uOut;
  int _numLayer, *_layerSize, _netOut;

  XAnn _HW_ANN;

  /*
   * IP control functions
   */
  void HW_ANN_init();
  void HW_ANN_set_numLayer(int numLayer);
  void HW_ANN_set_layerSize(int i, int layerSize);
  void HW_ANN_set_WandB(int i, int j, int k, float WandB);
  void HW_ANN_set_netIn(int i, float netIn);
  void HW_ANN_feedforward();
  int HW_ANN_get_netOut();
  float HW_ANN_get_uOut(int i, int j);

public:
  /*
   * Main constructor method.
   *
   * Create a new ANN introducing, number of layers, layers sizes and Weight &
   * Bias Matrix.
   */
  ANN(int numLayer, int *layerSize, float ***WandB);

  /*
   * Virtual destructor to free all dynamic memory
   */
  virtual ~ANN();

  /*
   * Feed-forward method.
   *
   * There're 4 steps:
   * 1- Introduce new inputs
   * 2- Forward-propagation through hidden layers with Sigmoid activation
   * functions.
   * 3- Output layer operations with Softmax activation functions.
   * 4- Apply Winer-Take-All rule to get binary outputs and save them in _netOut
   *
   * Check documentation for more information
   */
  void feedforward(float *in);

  /*
   * Getter for _netOut.
   *
   * Get the final output class chosen by the network
   */
  int getNetOut() const{return _netOut;}
};

#endif

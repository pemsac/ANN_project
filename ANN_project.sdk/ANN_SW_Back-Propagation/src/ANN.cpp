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
 * Source file
 *
 *
 */

#include "ANN.h"



ANN::ANN()
{
  /*
   * Empty
   */
}



ANN::ANN(int layers, int *layerSizes, double ***weights)
{
  int i, j, k;
  /*
   * memory allocation
   * Take into account the first layer's neurons (input) don't have weights
   */
  _layerSize = new int[layers];

  _output = new double*[layers];
  for (i=0; i<layers; ++i)
    _output[i] = new double[layerSizes[i]];

  _weight = new double**[layers];
  for (i=1; i<layers; ++i)
    _weight[i] = new double*[layerSizes[i]];
  for (i=1; i<layers; ++i)
    for (j=0; j<layerSizes[i]; ++j)
      _weight[i][j] = new double[layerSizes[i-1]+1];

  /*
   * data copy
   */
  _numLayer = layers;

  for (i=0; i<layers; ++i)
    _layerSize[i] = layerSizes[i];

  for (i=1; i<layers; ++i)
    for (j=0; j<layerSizes[i]; ++j)
      for (k=0; k<layerSizes[i-1]+1; ++k)
	_weight[i][j][k] = weights[i][j][k];
}



ANN::~ANN(){
  int i, j;
  /*
   * Free all dynamic memory
   */
  for(i=1; i<_numLayer; ++i)
    for(j=0; j<_layerSize[i]; ++j)
      delete[] _weight[i][j];
  for(i=1; i<_numLayer; ++i)
    delete[] _weight[i];
  delete[] _weight;

  for(i=0; i<_numLayer; ++i)
    delete[] _output[i];
  delete[] _output;

  delete[] _layerSize;
}



void ANN::feedforward(double *input)
{
  int i, j, k;
  double sum;

  /*
   * copy data to input layer
   */
  for (i=1; i<_numLayer; ++i)
    _output[0][i] = input[i];

  /*
   * Process each neuron output taking in account their weight untill getting
   * the last output values, that are the result.
   */
  for (i=1; i<_numLayer; ++i){
      for (j=0; j<_layerSize[i]; ++j){
	  sum = 0.0;
	  /*
	   * Neuron's entries from each previous layer neuron
	   */
	  for (k=0; k<_layerSize[i-1]; ++k)
	    sum += _output[i-1][k] * _weight[i][j][k];
	  /*
	   * bias
	   */
	  sum += _weight[i][j][_layerSize[i-1]];
	  /*
	   * SIGMOID as neuron function
	   */
	  _output[i][j] = 1/(1+exp(-sum));
      }
  }
}


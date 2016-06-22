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

#include "ANN.hpp"



ANN::ANN()
{
  /*
   * Empty
   */
}



ANN::ANN(int numLayer, int *layerSize, double ***weight)
{
  int i, j, k;
  /*
   * memory allocation
   * Take into account the first layer's neurons (input) don't have weights
   */
  _layerSize = new int[numLayer];

  _output = new double*[numLayer];
  for (i=0; i<numLayer; ++i)
    _output[i] = new double[layerSize[i]];

  _weight = new double**[numLayer];
  for (i=1; i<numLayer; ++i)
    _weight[i] = new double*[layerSize[i]];
  for (i=1; i<numLayer; ++i)
    for (j=0; j<layerSize[i]; ++j)
      _weight[i][j] = new double[layerSize[i-1]+1];

  /*
   * data copy
   */
  _numLayer = numLayer;

  for (i=0; i<numLayer; ++i)
    _layerSize[i] = layerSize[i];

  for (i=1; i<numLayer; ++i)
    for (j=0; j<layerSize[i]; ++j)
      for (k=0; k<layerSize[i-1]+1; ++k)
	_weight[i][j][k] = weight[i][j][k];
}



ANN::~ANN()
{
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



double *ANN::feedforward(double *input)
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
	  _output[i][j] = (double)(1/(1+exp(-sum)));
      }
  }
  /*
   * return last layer pointer
   */
  return _output[_numLayer - 1];
}


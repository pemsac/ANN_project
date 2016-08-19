/**
 *
 * Carlos III University of Madrid.
 *
 * Master's Final Thesis: Heartbeats classifier based on ANN (Artificial Neural
 * Network).
 *
 * Hardware implementation in High Level Synthesis (HLS) and Vivado IP
 * Integrator for Zybo platform (Zynq-7000 APSoC, xc7z010clg400-1 Part)
 *
 * Author: Pedro Marcos Solórzano
 * Tutor: Luis Mengibar Pozo (Tutor)
 *
 *
 * Feed-forward Artificial Neural Network.
 *
 * Source code
 *
 *
 */

#include "ANN.h"

void ANN(ap_int<2> config, double *in, int numLayer, int *layerSize,
	 double ***WandB, double **out, double *out_)
{
  double sum, sumsoft;
  int i, j, k;

  /*
   *
   */
  if(config == 0b01)
    {

    }
  /*
   * Assign content to input layer
   */
  for(i=0;i<_layerSize[0];++i)
    {
      _out[0][i]=in[i];
    }

  /*
   * 1º process: Hidden layers of neurons.
   * Get the outputs of each neuron in the hidden layers applying
   * sigmoid activation function
   */
  for(i=1;i<_numLayer-1;++i)
    {
      for(j=0;j<_layerSize[i];++j)
	{
	  /*
	   * Sum all the neuron inputs applying weights
	   */
	  sum=0.0;
	  for(k=0;k<_layerSize[i-1];++k)
	    {
	      sum+= _out[i-1][k]*_WandB[i][j][k];
	    }
	  /*
	   * Apply bias
	   */
	  sum+=_WandB[i][j][_layerSize[i-1]];
	  /*
	   * SIGMOID activation function
	   */
	  _out[i][j]=1/(1+exp(-sum));
	}
    }

  /*
   * 2º process: Output layer
   * Get the outputs of the network applying softmax activation function
   */
  sumsoft=0.0;
  for(i=0; i<_layerSize[_numLayer-1]; ++i)
    {
      /*
       * Sum all the neuron inputs applying weights
       */
      sum=0.0;
      for(j=0;j<_layerSize[_numLayer-2];++j)
	{
	  sum += _out[_numLayer-2][j] * _WandB[_numLayer-1][i][j];
	}
      /*
       * Apply bias
       */
      sum += _WandB[_numLayer-1][i][_layerSize[_numLayer-2]];
      /*
       * SOFTMAX activation function
       */
      _out[_numLayer-1][i] = exp(sum);
      sumsoft += _out[_numLayer-1][i];
    }
  for(i=0; i<_layerSize[_numLayer-1]; ++i)
    {
      _out[_numLayer-1][i] /= sumsoft;
    }
}

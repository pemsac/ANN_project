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
 * Source code
 *
 *
 */

#include "ANN.h"

/********
 * hay que ponerles protocolos a los puertos
 */

void feedforward(const int numLayer,
		 const int layerSize[MAX_NUM_LAYER],
		 const double WandB[MAX_NUM_LAYER][MAX_SIZE_LAYER][MAX_SIZE_LAYER+1],
		 double uOut[MAX_NUM_LAYER][MAX_SIZE_LAYER],
		 const double netIn[MAX_SIZE_LAYER],
		 bool netOut[MAX_SIZE_LAYER])
{
  double sum, sumsoft;
  int i, j, k, max;

  /*
   * 1º step: Assign content to input layer
   */
  for(i=0; i<layerSize[0]; ++i)
    {
      uOut[0][i]=netIn[i];
    }

  /*
   * 2º step: Forward-propagation through hidden layers. Get the outputs of each
   * neuron in the hidden layers applying SIGMOID activation function
   */
  for(i=1; i<numLayer; ++i)
    {
      for(j=0; j<layerSize[i]; ++j)
	{
	  /*
	   * Sum all the neuron inputs weighted.
	   */
	  sum=0.0;
	  for(k=0; k<layerSize[i-1]; ++k)
	    {
	      sum+=uOut[i-1][k]*WandB[i][j][k];
	    }
	  /*
	   * Apply bias
	   */
	  sum+=WandB[i][j][layerSize[i-1]];
	  /*
	   * Get neuron output with SIGMOID activation function
	   */
	  uOut[i][j]=1/(1+exp(-sum));
	}
    }

  /*
   * 3º step: Calculate outputs. Get the outputs of each neuron in the last
   * layer applying SOFTMAX activation function.
   */
  sumsoft=0.0;
  for(i=0; i<layerSize[numLayer-1]; ++i)
    {
      /*
       * Sum all the neuron inputs weighted.
       */
      sum=0.0;
      for(j=0; j<layerSize[numLayer-2]; ++j)
	{
	  sum+=uOut[numLayer-2][j] * WandB[numLayer-1][i][j];
	}
      /*
       * Apply bias
       */
      sum+=WandB[numLayer-1][i][layerSize[numLayer-2]];
      /*
       * SOFTMAX activation function 1º step
       */
      uOut[numLayer-1][i] = exp(sum);
      sumsoft+=uOut[numLayer-1][i];
    }
  /*
   * SOFTMAX activation function 2º step. Get neurons outputs.
   */
  for(i=0; i<layerSize[numLayer-1]; ++i)
    {
      uOut[numLayer-1][i]/=sumsoft;
    }

  /*
   * 4º step: get Binary Network Outputs Array applying Winer-Take-All rule.
   * The highest last layer output become 1.
   *
   * Note these outputs are NOT used for training.
   */
  max=0;
  for(i=1; i<layerSize[numLayer-1]; ++i)
    {
      if(uOut[numLayer-1][i] > uOut[numLayer-1][max])
	{
	  netOut[max]=false;
	  max=i;
	}
      else
	{
	  netOut[i]=false;
	}
    }
  netOut[max]=true;
}

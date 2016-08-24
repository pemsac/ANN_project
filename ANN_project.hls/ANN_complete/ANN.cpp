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



void ANN(const int config[MAX_NUM_LAYER+2],
	 const double WandB[MAX_NUM_LAYER][MAX_SIZE_LAYER][MAX_SIZE_LAYER+1],
	 double uOut[MAX_NUM_LAYER][MAX_SIZE_LAYER],
	 const double netIn[MAX_SIZE_LAYER],
	 int netOut[MAX_SIZE_LAYER])
{

  /*
   * Private variables:
   * _WandB:		Weights & Bias Matrix.
   * _uOut:		Outputs Matrix. Output values of each neuron
   * _numLayer:		Number of Layers. It includes input and output layers
   * _layerSize:	Layers Sizes Array. Number of neurons in each layer.
   * _netOut:		Binary Network Outputs Array. Normalized in binary
   */
  static double
  _WandB[MAX_NUM_LAYER][MAX_SIZE_LAYER][MAX_SIZE_LAYER+1],
  _uOut[MAX_NUM_LAYER][MAX_SIZE_LAYER];

  static int
  _numLayer,
  _layerSize[MAX_NUM_LAYER];

  //static bool state = false;
  int i, j, k, max;
  double sum, sumsoft;

  /*
   * Normal mode
   */
  if(config[0]==0 || config[0]==2)
    {
      /*
       * 1º step: Assign content to input layer
       */
      for(i=0;i<_layerSize[0];++i)
	{
	  _uOut[0][i]=netIn[i];
	}

      /*
       * 2º step: Forward-propagation through hidden layers. Get the outputs of each
       * neuron in the hidden layers applying SIGMOID activation function
       */
      for(i=1;i<_numLayer;++i)
	{
	  for(j=0; j<_layerSize[i]; ++j)
	    {
	      /*
	       * Sum all the neuron inputs weighted.
	       */
	      for(k=0, sum=0.0;k<_layerSize[i-1];++k)
		{
		  sum+=_uOut[i-1][k]*_WandB[i][j][k];
		}
	      /*
	       * Apply bias
	       */
	      sum+=_WandB[i][j][_layerSize[i-1]];
	      /*
	       * Get neuron output with SIGMOID activation function
	       */
	      _uOut[i][j]=1/(1+exp(-sum));
	    }
	}

      /*
       * 3º step: Calculate outputs. Get the outputs of each neuron in the last
       * layer applying SOFTMAX activation function.
       */
      for(i=0, sumsoft=0.0; i<_layerSize[_numLayer-1]; ++i)
	{
	  /*
	   * Sum all the neuron inputs weighted.
	   */
	  for(j=0, sum=0.0; j<_layerSize[_numLayer-2]; ++j)
	    {
	      sum+=_uOut[_numLayer-2][j] * _WandB[_numLayer-1][i][j];
	    }
	  /*
	   * Apply bias
	   */
	  sum+=_WandB[_numLayer-1][i][_layerSize[_numLayer-2]];
	  /*
	   * SOFTMAX activation function 1º step
	   */
	  _uOut[_numLayer-1][i] = exp(sum);
	  sumsoft+=_uOut[_numLayer-1][i];
	}
      /*
       * SOFTMAX activation function 2º step. Get neurons outputs.
       */
      for(i=0; i<_layerSize[_numLayer-1]; ++i)
	{
	  _uOut[_numLayer-1][i]/=sumsoft;
	}
      if(config[0]==0)
	{
	  /*
	   * 4º step: get Binary Network Outputs Array applying Winer-Take-All rule.
	   * The highest last layer output become 1.
	   *
	   * Note these outputs are NOT used for training.
	   */
	  for(i=1, max=0; i<_layerSize[_numLayer-1]; ++i)
	    {
	      if(_uOut[_numLayer-1][i] > _uOut[_numLayer-1][max])
		{
		  netOut[max]=0;
		  max=i;
		}
	      else
		{
		  netOut[i]=0;
		}
	    }
	  netOut[max]=1;
	}
      else
	{
	  for(i=0; i<_numLayer; ++i)
	    {
	      for(j=0; j<_layerSize[i]; ++j)
		{
		  uOut[i][j]=_uOut[i][j];
		}
	    }
	}
    }

  /*
   * init mode
   */
  else if(config[0]==1)
    {

      /*.
       * Number of Layers data copy
       */
      _numLayer=config[1];

      /*
       * Layers Sizes Array memory allocation and data copy
       */

      for(i=0; i<_numLayer; ++i)
	{
	  _layerSize[i]=config[i+2];
	}

      /*
       * Weights & Bias Matrix memory allocation and data copy
       *
       * Take into account the first layer's neurons (input) doesn't have weights.
       * Note the neurons have a weight for each previous neuron connected plus its
       * bias' weight.
       */
      for(i=1; i<_numLayer; ++i)
	{
	  for(j=0; j<_layerSize[i]; ++j)
	    {
	      for(k=0; k<_layerSize[i-1]+1; ++k)
		{
		  _WandB[i][j][k]=WandB[i][j][k];
		}
	    }
	}
    }



  /*
   * Update weights mode
   */
  else if(config[0]==3)
    {
      /*
       * Weights & Bias Matrix memory allocation and data copy
       *
       * Take into account the first layer's neurons (input) doesn't have weights.
       * Note the neurons have a weight for each previous neuron connected plus its
       * bias' weight.
       */
      for(i=1; i<_numLayer; ++i)
	{
	  for(j=0; j<_layerSize[i]; ++j)
	    {
	      for(k=0; k<_layerSize[i-1]+1; ++k)
		{
		  _WandB[i][j][k]=WandB[i][j][k];
		}
	    }
	}
    }
}

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


/*
 * IP top function to be synthesized
 *
 * It has 6 ports:
 * P_mode:	input port to set the operating mode
 * P_config:	input port to set the number of layers and their sizes
 * P_WandB:	input port to set weights and bias of each neuron
 * P_uOut:	output port to get each neuron output (Useful for training)
 * P_netIn:	input data to be processed
 * P_netOut:	output class.
 */
fword_t  ANN(const iword_t P_mode,
	     const iword_t P_index1,
	     const iword_t P_index2,
	     const iword_t P_intIn_index3,
	     const fword_t P_floatIn)
{
  /*
   * Stored IP data
   *
   * ST_numLayer:	Number of Layers. It includes input and output layers
   * ST_layerSize:	Layers Sizes Array. Number of neurons in each layer.
   * ST_WandB:		Weights & Bias Matrix.
   */
  static iword_t ST_numLayer;
  static iword_t ST_layerSize[MAX_NUM_LAYER];
  static fword_t ST_WandB[MAX_NUM_LAYER][MAX_SIZE_LAYER][MAX_SIZE_LAYER+1];
  static fword_t ST_uOut[MAX_NUM_LAYER][MAX_SIZE_LAYER];
  /* Temporal IP data
   * _uOut:		Outputs Matrix. Output values of each neuron
   * _netOut:		Final output class
   */

  /*
   * Other variables
   */
  fword_t sum, sumsoft;
  int i, j, k, max;

  /*
   * MODE 1: ANN configuration
   *
   * number of layers configuration
   */
  if(P_mode==1)
    {
      ST_numLayer = P_intIn_index3;
      return 0;
    }

  /*
   * MODE 2: ANN configuration
   *
   * sizes of layers configuration
   */
  else if (P_mode==2)
    {
      ST_layerSize[P_index1] = P_intIn_index3;
      return 0;
    }

  /*
   * MODE 3: Weight & Bias update
   *
   */
  else if(P_mode==3)
    {
      ST_WandB[P_index1][P_index2][P_intIn_index3]=P_floatIn;
      return 0;
    }

  /*
   * Mode 4: Copy input data
   *
   * 1º Step for feedforward process
   */
  else if(P_mode==4)
    {
      ST_uOut[0][P_index1]=P_floatIn;
      return 0;
    }

  /*
   * MODE 5 : Feedforward

   */
  else if(P_mode==5)
    {

      /*
       * 2º step: Forward-propagation through hidden layers. Get the outputs of each
       * neuron in the hidden layers applying SIGMOID activation function
       */
      for(i=1;i<ST_numLayer;++i)
	{
	  for(j=0; j<ST_layerSize[i]; ++j)
	    {
	      /*
	       * Sum all the neuron inputs weighted.
	       */
	      sum=0.0;
	      for(k=0;k<ST_layerSize[i-1];++k)
		{
		  sum+=ST_uOut[i-1][k]*ST_WandB[i][j][k];
		}
	      /*
	       * Apply bias
	       */
	      sum+=ST_WandB[i][j][ST_layerSize[i-1]];
	      /*
	       * Get neuron output with SIGMOID activation function
	       */
	      ST_uOut[i][j]=1/(1+exp(-sum));
	    }
	}

      /*
       * 3º step: Calculate outputs. Get the outputs of each neuron in the last
       * layer applying SOFTMAX activation function.
       */
      sumsoft=0.0;
      for(i=0; i<ST_layerSize[ST_numLayer-1]; ++i)
	{
	  /*
	   * Sum all the neuron inputs weighted.
	   */
	  sum=0.0;
	  for(j=0; j<ST_layerSize[ST_numLayer-2]; ++j)
	    {
	      sum+=ST_uOut[ST_numLayer-2][j] * ST_WandB[ST_numLayer-1][i][j];
	    }
	  /*
	   * Apply bias
	   */
	  sum+=ST_WandB[ST_numLayer-1][i][ST_layerSize[ST_numLayer-2]];
	  /*
	   * SOFTMAX activation function 1º step
	   */
	  ST_uOut[ST_numLayer-1][i] = exp(sum);
	  sumsoft+=ST_uOut[ST_numLayer-1][i];
	}
      /*
       * SOFTMAX activation function 2º step. Get neurons outputs.
       */
      for(i=0; i<ST_layerSize[ST_numLayer-1]; ++i)
	{
	  ST_uOut[ST_numLayer-1][i]/=sumsoft;
	}
      return 0;
    }

  /*
   * Mode 6: Get neurons output for training
   *
   * 4º Step in feedforward process
   */
  else if(P_mode==6)
    {
      return ST_uOut[P_index1][P_index2];
    }

  /*
   * Mode 7: choose the final class applying Winer-Take-All rule.
   * The highest last layer output will be the resulting class.
   *
   * 4º Step in feedforward process
   */

  else if(P_mode==7)
    {
      max=0;
      for(i=1; i<ST_layerSize[ST_numLayer-1]; ++i)
	{
	  if(ST_uOut[ST_numLayer-1][i] > ST_uOut[ST_numLayer-1][max])
	    {
	      max=i;
	    }
	}
      return max;

    }

  return -1;
}

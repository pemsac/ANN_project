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
 * Gradient Descent Back-propagation based on Cross Entropy Error (CEE).
 * This algorithm is designed to train feed-forward ANN with sigmoid activation
 * and Softmax output functions.
 *
 * Source file
 *
 *
 */

#include "Training.h"



Training::Training(iword_t numLayer, iword_t *layerSize)
{
  int i, j, k;


  /*.
   * Number of Layers data copy
   */
  _numLayer = numLayer;
  ANN(1,0,0,numLayer,0);

  /*
   * Layers Sizes Array memory allocation and data copy
   */
  _layerSize=new iword_t[numLayer];

  for(i=0; i<numLayer; ++i)
    {
      _layerSize[i]=layerSize[i];
      ANN(2,i,0,layerSize[i],0);
    }

  /*
   * Outputs Matrix memory allocation and initialization to 0
   */
  _uOut=new fword_t*[numLayer]();

  for(i=0; i<numLayer; ++i)
    {
      _uOut[i]=new fword_t[layerSize[i]]();
    }

  /*
   * Weights & Bias Matrix memory allocation and initialize them with random
   * values between -0.5 and 0.5
   *
   * Take into account the first layer's neurons (input) doesn't have weights.
   * Note the neurons have a weight for each previous neuron connected plus its
   * bias' weight.
   */
  _WandB=new fword_t**[numLayer];

  for(i=1; i<numLayer; ++i)
    {
      _WandB[i]=new fword_t*[layerSize[i]];
    }
  for(i=1; i<numLayer; ++i)
    {
      for(j=0; j<layerSize[i]; ++j)
	{
	  _WandB[i][j]=new fword_t[layerSize[i-1]+1];
	}
    }
  srand (time(NULL));
  for(i=1; i<numLayer; ++i)
    {
      for(j=0; j<layerSize[i]; ++j)
	{
	  for(k=0; k<layerSize[i-1]+1; ++k)
	    {
	      _WandB[i][j][k]=(fword_t)(rand())/(RAND_MAX) - 0.5;
	      ANN(3,i,j,k,_WandB[i][j][k]);
	    }
	}
    }

  /*
   * Neuron Gradient Matrix memory allocation
   */
  _grad=new fword_t*[numLayer];
  for(i=1; i<numLayer; ++i)
    {
      _grad[i]=new fword_t[layerSize[i]];
    }

  /*
   * Weights & Bias Variations (deltas) Matrix memory allocation and
   * initialization to 0
   *
   * Take into account the first layer's neurons (input) doesn't have weights.
   * Note the neurons have a weight for each previous neuron connected plus its
   * bias' weight.
   */
  _delta = new fword_t**[numLayer]();
  for(i=1; i<numLayer; ++i)
    {
      _delta[i]=new fword_t*[layerSize[i]]();
    }
  for(i=1; i<numLayer; ++i)
    {
      for(j=0; j<layerSize[i]; ++j)
	{
	  _delta[i][j]=new fword_t[layerSize[i-1]+1]();
	}
    }

  /*
   * Learning Rate and momentum initialization
   */
  _learnRate=START_LEARN_RATE;
  _momentum=MOMENTUM;
}



Training::~Training ()
{
  int i, j;

  /*
   * Weights & Bias Variations (deltas) Matrix memory freeing
   */
  for(i=1; i<_numLayer; ++i)
    {
      for(j=0; j<_layerSize[i]; ++j)
	{
	  delete[] _delta[i][j];
	}
    }
  for(i=1; i<_numLayer; ++i)
    {
      delete[] _delta[i];
    }
  delete[] _delta;

  /*
   * Neuron Gradient Matrix memory freeing
   */
  for(i=1; i<_numLayer; ++i)
    {
      delete[] _grad[i];
    }
  delete[] _grad;

  /*
   * Weights & Bias Matrix memory freeing
   */
  for(i=1; i<_numLayer; ++i)
    {
      for(j=0; j<_layerSize[i]; ++j)
	{
	  delete[] _WandB[i][j];
	}
    }
  for(i=1; i<_numLayer; ++i)
    {
      delete[] _WandB[i];
    }
  delete[] _WandB;

  /*
   * Outputs Matrix memory freeing
   */
  for(i=0; i<_numLayer; ++i)
    {
      delete[] _uOut[i];
    }
  delete[] _uOut;

  /*
   * Layers Sizes Array memory freeing
   */
  delete[] _layerSize;
}



void Training::backpropagation(fword_t *in, fword_t *target)
{
  int i, j, k;
  fword_t sum;

  /*
   * 1º step: Apply input to the ANN
   */
  for(i=0; i<_layerSize[0]; ++i)
    {
      ANN(4,i,0,0,in[i]);
    }
  /*
   * Feed-forward
   */
  ANN(5,0,0,0,0);

  /*
   * Get each neuron output
   */

  for(i=0; i<_numLayer; ++i)
    {
      for(j=0; j<_layerSize[i]; ++j)
	{
	  _uOut[i][j]=ANN(6,i,j,0,0);
	}
    }


  /*
   * 2º step: Calculate error gradient of each neuron applying back-propagation
   *
   * Gradients of the output layer:
   */
  for(i=0; i<_layerSize[_numLayer-1]; ++i)
    {
      _grad[_numLayer-1][i]=(target[i]-_uOut[_numLayer-1][i]);
    }

  /*
   * Gradients of hidden layers
   */
  for(i=_numLayer-2; i>0; --i)
    {
      for(j=0; j<_layerSize[i]; ++j)
	{
	  sum=0.0;
	  for(k=0; k<_layerSize[i+1]; ++k)
	    {
	      sum+=_grad[i+1][k]*_WandB[i+1][k][j];
	    }
	  _grad[i][j]=_uOut[i][j]*(1-_uOut[i][j])*sum;
	}
    }

  /*
   * 3º step: Calculate momentums (moments of inertia) if it's available and
   * apply them to the weights
   */
  for(i=1; i<_numLayer && _momentum>0; ++i)
    {
      for(j=0; j<_layerSize[i]; ++j)
	{
	  for(k=0; k<_layerSize[i-1]; ++k)
	    {
	      /*
	       * Calculate momentum from last delta and apply it.
	       */
	      _WandB[i][j][k]+=_momentum*_delta[i][j][k];
	    }
	  /*
	   * Calculate bias momentum from last bias delta and apply it
	   */
	  _WandB[i][j][_layerSize[i-1]]+=_momentum*_delta[i][j][_layerSize[i-1]];
	}
    }

  /*
   * 4º and 5 step: Calculate new deltas from gradients and update weights on
   * software and hardware
   */
  for(i=1; i<_numLayer; ++i)
    {
      for(j=0; j<_layerSize[i]; ++j)
	{
	  for(k=0; k<_layerSize[i-1]; ++k)
	    {
	      /*
	       * Calculate delta and apply it
	       */
	      _delta[i][j][k]=_learnRate*_grad[i][j]*_uOut[i-1][k];
	      _WandB[i][j][k]+=_delta[i][j][k];
	    }
	  /*
	   * Calculate bias delta and apply it
	   */
	  _delta[i][j][_layerSize[i-1]]=_learnRate*_grad[i][j];
	  _WandB[i][j][_layerSize[i-1]]+=_delta[i][j][_layerSize[i-1]];
	}
    }
  /*
   * Set the new weights and bias to the IP (IP core mode 3)
   */
  for(i=1; i<_numLayer; ++i)
    {
      for(j=0; j<_layerSize[i]; ++j)
	{
	  for(k=0; k<_layerSize[i-1]+1; ++k)
	    {
	      ANN(3,i,j,k,_WandB[i][j][k]);
	    }
	}
    }
}



fword_t Training::CEE(fword_t *in, fword_t *target)
{
  int i, j;
  fword_t cee = 0.0;

  /*
   * Update new neurons outputs for the current input. (IP core mode 4)
   */
  for(i=0; i<_layerSize[0]; ++i)
    {
      ANN(4,i,0,0,in[i]);
    }

  ANN(5,0,0,0,0);

  for(i=0; i<_numLayer; ++i)
    {
      for(j=0; j<_layerSize[i]; ++j)
	{

	  _uOut[i][j]=ANN(6,i,j,0,0);
	}
    }

  /*
   * Calculate Cross Entropy Error (CEE) of the current network's outputs and
   * return it
   */
  for(i=0; i<_layerSize[_numLayer-1]; ++i)
    {
      cee+=log(_uOut[_numLayer-1][i])*target[i]*(-1);
    }

  return cee/(int)_layerSize[_numLayer-1];
}



void Training::updateLRandM(fword_t currMCEE, fword_t lastMCEE)
{
  /*
   * If the Mean Cross Entropy Error of the iteration has decreased, increment
   * learning rate and enable momentum
   */
  if (currMCEE<lastMCEE)
    {
      if(_learnRate<MAX_LEARN_RATE)
	{
	  _learnRate*=INCRE_LEARN_RATE;
	}
      _momentum=MOMENTUM;
    }

  /*
   * If the Mean Cross Entropy Error of the iteration has increase about a rate,
   * decrease learning rate and disable momentum
   */
  else if (currMCEE>lastMCEE*VARY_RATE)
    {
      if(_learnRate>MIN_LEARN_RATE)
	{
	  _learnRate*=DECRE_LEARN_RATE;
	}
      _momentum=0;
    }
}

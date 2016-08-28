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



Training::Training(int numLayer, int *layerSize)
{
  int i, j, k;

  /*.
   * Number of Layers data copy
   */
  _numLayer = numLayer;

  /*
   * Layers Sizes Array memory allocation and data copy
   */
  for(i=0; i<numLayer; ++i)
    {
      _layerSize[i]=layerSize[i];
    }

  /*
   * Initialize Random Weights & Bias Matrix with random values between
   * -0.5 and 0.5
   */
  srand (time(NULL));
  for(i=1; i<numLayer; ++i)
    {
      for(j=0; j<layerSize[i]; ++j)
	{
	  for(k=0; k<layerSize[i-1]+1; ++k)
	    {
	      _WandB[i][j][k]=(double)(rand())/(RAND_MAX) - 0.5;
	    }
	}
    }

  /*
   *
   * Neuron Gradient Matrix memory allocation
   */
  _grad=new double*[numLayer];
  for(i=1; i<numLayer; ++i)
    {
      _grad[i]=new double[layerSize[i]];
    }

  /*
   * Weights & Bias Variations (deltas) Matrix memory allocation and
   * initialization to 0
   *
   * Take into account the first layer's neurons (input) doesn't have weights.
   * Note the neurons have a weight for each previous neuron connected plus its
   * bias' weight.
   */
  _delta = new double**[numLayer]();
  for(i=1; i<numLayer; ++i)
    {
      _delta[i]=new double*[layerSize[i]]();
    }
  for(i=1; i<numLayer; ++i)
    {
      for(j=0; j<layerSize[i]; ++j)
	{
	  _delta[i][j]=new double[layerSize[i-1]+1]();
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
}



void Training::backpropagation(double *in, double *target)
{
  double sum, netIn[MAX_NUM_LAYER];
  int i, j, k;
  bool netOut[MAX_NUM_LAYER];

  /*
   * 1º step: Update all neurons outputs for an input applying feed-forward
   */
  for(i=0; i<_layerSize[0]; ++i)
    {
      netIn[i] = in[i];
    }
  feedforward(_numLayer, _layerSize, _WandB, _uOut, netIn, netOut);

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
   * 4º and 5 step: Calculate new deltas from gradients and update weights
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
}



double Training::CEE(double *target)
{
  double cee = 0.0;
  int i;

  /*
   * Calculate Cross Entropy Error (CEE) of the current network's outputs and
   * return it
   */
  for(i=0; i<_layerSize[_numLayer-1]; ++i)
    {
      cee+=log(_uOut[_numLayer-1][i])*target[i]*(-1);
    }

  return cee/_layerSize[_numLayer-1];
}



void Training::updateLRandM(double currMCEE, double lastMCEE)
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

void Training::test_feedforward(double *in, bool *out)
{
  int i;
  bool netOut[MAX_NUM_LAYER];
  double netIn[MAX_NUM_LAYER];

  for(i=0; i<_layerSize[0]; ++i)
    {
      netIn[i] = in[i];
    }
  feedforward(_numLayer, _layerSize, _WandB, _uOut, netIn, netOut);

  for(i=0; i<_layerSize[_numLayer-1]; ++i)
    {
      out[i] = netOut[i];
    }
}

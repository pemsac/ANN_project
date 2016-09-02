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
 * Gradient Descent Back-propagation based on Cross Entropy Error (CEE).
 * This algorithm is designed to train feed-forward ANN with sigmoid activation
 * and Softmax output functions. Learning rates and momentums are auto-adapted
 * during the training.
 *
 * Source file
 *
 *
 */

#include "Training.h"



Training::Training(int numLayer, int *layerSize):
ANN(numLayer, layerSize, randWandB(numLayer, layerSize))
{
  int i, j;

  /*
   * Free memory allocated in _randWandB by randWandB function
   */
  freeRandWandB(numLayer, layerSize);

  /*
   *
   * Neuron Gradient Matrix memory allocation
   */
  _grad=new float*[numLayer];
  for(i=1; i<numLayer; ++i)
    {
      _grad[i]=new float[layerSize[i]];
    }

  /*
   * Weights & Bias Variations (deltas) Matrix memory allocation and
   * initialization to 0
   *
   * Take into account the first layer's neurons (input) doesn't have weights.
   * Note the neurons have a weight for each previous neuron connected plus its
   * bias' weight.
   */
  _delta=new float**[numLayer]();
  for(i=1; i<numLayer; ++i)
    {
      _delta[i]=new float*[layerSize[i]]();
    }
  for(i=1; i<numLayer; ++i)
    {
      for(j=0; j<layerSize[i]; ++j)
	{
	  _delta[i][j]=new float[layerSize[i-1]+1]();
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
   * Free memory allocated in _randWandB by randWandB function (if it's still
   * allocated)
   */
  freeRandWandB(_numLayer, _layerSize);

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
   * NOTE: ANN base is freed automatically.
   */
}



void Training::backpropagation(float *in, float *target)
{
  float sum;
  int i, j, k;

  /*
   * 1º step: Update all neurons outputs for an input applying feed-forward
   */
  for(i=0; i<_layerSize[0]; ++i)
    {
      HW_ANN_set_netIn(i, in[i]);
    }

  HW_ANN_feedforward();

  /*
   * Get all the neurons outputs
   */

  for(i=0; i<_numLayer; ++i)
    {
      for(j=0; j<_layerSize[i]; ++j)
	{
	  _uOut[i][j]=HW_ANN_get_uOut(i,j);

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
  for(i=_numLayer-2; i>0; i--)
    {
      for( j=0;j<_layerSize[i]; ++j)
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

  /*
   * Update Weights and bias on chip
   */
  for(i=1; i<_numLayer; ++i)
    {
      for(j=0; j<_layerSize[i]; ++j)
	{
	  for(k=0; k<_layerSize[i-1]+1; ++k)
	    {
	      HW_ANN_set_WandB(i,j,k,_WandB[i][j][k]);
	    }
	}
    }
}



float ***Training::randWandB(int numLayer, int *layerSize)
{
  int i, j, k;
  XTime randNum;

  /*
   * Random Weights & Bias Matrix memory allocation
   */
  _randWandB=new float**[numLayer];
  for(i=1; i<numLayer; ++i)
    {
      _randWandB[i]=new float*[layerSize[i]];
    }
  for(i=1; i<numLayer; ++i)
    {
      for(j=0; j<layerSize[i]; ++j)
	{
	  _randWandB[i][j]=new float[layerSize[i-1]+1];
	}
    }

  /*
   * Initialize Random Weights & Bias Matrix with random values between
   * -0.5 and 0.5
   */
  XTime_GetTime(&randNum);
  srand (randNum);
  for(i=1; i<numLayer; ++i)
    {
      for(j=0; j<layerSize[i]; ++j)
	{
	  for(k=0; k<layerSize[i-1]+1; ++k)
	    {
	      _randWandB[i][j][k]=(float)(rand())/(RAND_MAX) - 0.5;
	    }
	}
    }

  /*
   * Returns pointer to this Matrix
   */
  return _randWandB;
}



void Training::freeRandWandB(int numLayer, int *layerSize)
{
  /*
   * if Random Weights & Bias Matrix memory is allocated...
   */
  if (_randWandB)
    {
      int i, j;

      /*
       * free dynamic memory
       */
      for(i=1; i<numLayer; ++i)
	{
	  for(j=0; j<layerSize[i]; ++j)
	    {
	      delete[] _randWandB[i][j];
	    }
	}
      for(i=1; i<numLayer; ++i)
	{
	  delete[] _randWandB[i];
	}
      delete[] _randWandB;
      _randWandB=0;
    }
}



float Training::CEE(float *in, float *target)
{
  float cee = 0.0;
  int i, j;

  /*
   * Update neurons outputs
   */
  for(i=0; i<_layerSize[0]; ++i)
    {
      HW_ANN_set_netIn(i, in[i]);
    }

  HW_ANN_feedforward();

  /*
   * Get all the neurons outputs
   */
  float test[4][20];
  for(i=0; i<_numLayer; ++i)
    {
      for(j=0; j<_layerSize[i]; ++j)
	{
	  _uOut[i][j]=HW_ANN_get_uOut(i,j);
	  test[i][j]=_uOut[i][j];
	}
    }
  int lol=0;
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



void Training::updateLRandM(float currMCEE, float lastMCEE)
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

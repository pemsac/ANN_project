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
 * Source code
 *
 *
 */

#include "ANN.h"



ANN::ANN(int numLayer, int *layerSize, float ***WandB)
{
  int i, j, k;

  /*
   * Initialize IP
   */
  HW_ANN_init();

  /*.
   * Number of Layers data copy
   */
  _numLayer=numLayer;
  HW_ANN_set_numLayer(numLayer);

  /*
   * Layers Sizes Array memory allocation and data copy
   */
  _layerSize=new int[numLayer];

  for(i=0; i<numLayer; ++i)
    {
      _layerSize[i]=layerSize[i];
      HW_ANN_set_layerSize(i,layerSize[i]);
    }

  /*
   * Initialize the network output to 0
   */
  _netOut=0;

  /*
   * Outputs Matrix memory allocation and initialization to 0
   */
  _uOut=new float*[numLayer]();

  for(i=0; i<numLayer; ++i)
    {
      _uOut[i]=new float[layerSize[i]]();
    }

  /*
   * Weights & Bias Matrix memory allocation and data copy
   *
   * Take into account the first layer's neurons (input) doesn't have weights.
   * Note the neurons have a weight for each previous neuron connected plus its
   * bias' weight.
   */
  _WandB=new float**[numLayer];

  for(i=1; i<numLayer; ++i)
    {
      _WandB[i]=new float*[layerSize[i]];
    }
  for(i=1; i<numLayer; ++i)
    {
      for(j=0; j<layerSize[i]; ++j)
	{
	  _WandB[i][j]=new float[layerSize[i-1]+1];
	}
    }
  for(i=1; i<numLayer; ++i)
    {
      for(j=0; j<layerSize[i]; ++j)
	{
	  for(k=0; k<layerSize[i-1]+1; ++k)
	    {
	      _WandB[i][j][k]=WandB[i][j][k];
	      HW_ANN_set_WandB(i,j,k,WandB[i][j][k]);
	    }
	}
    }
}



ANN::~ANN()
{
  int i, j;
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



void ANN::feedforward(float *in)
{
  int i;

  /*
   * Set inputs to ANN
   */
  for(i=0; i<_layerSize[0]; ++i)
    {
      HW_ANN_set_netIn(i, in[i]);
    }

  /*
   * Feedforward on chip
   */
  HW_ANN_feedforward();

  /*
   * Get output
   */
  _netOut = HW_ANN_get_netOut();
}


void ANN::HW_ANN_init()
{
  int status;
  XAnn_Config *cfgPtr;

  cfgPtr = XAnn_LookupConfig(HW_ANN_ID);
  if(!cfgPtr)
    {
      throw int(XST_FAILURE);
    }

  status = XAnn_CfgInitialize(&_HW_ANN, cfgPtr);
  if(status != XST_SUCCESS)
    {
      throw int(XST_FAILURE);
    }

  XAnn_InterruptDisable(&_HW_ANN,1);
  XAnn_InterruptGlobalDisable(&_HW_ANN);
  XAnn_DisableAutoRestart(&_HW_ANN);
}


void ANN::HW_ANN_set_numLayer(int numLayer)
{
  /*
   * Wait for IP to be ready
   */
  while(!XAnn_IsReady(&_HW_ANN));

  /*
   * Set inputs
   */
  XAnn_Set_P_mode(&_HW_ANN, 1);
  XAnn_Set_P_intIn_index3(&_HW_ANN, numLayer);

  /*
   * Start and wait for process to end
   */
  XAnn_Start(&_HW_ANN);

  while(!XAnn_IsDone(&_HW_ANN));
}

void ANN::HW_ANN_set_layerSize(int i, int layerSize)
{
  /*
   * Wait for IP to be ready
   */
  while(!XAnn_IsReady(&_HW_ANN));

  /*
   * Set inputs
   */
  XAnn_Set_P_mode(&_HW_ANN, 2);
  XAnn_Set_P_index1(&_HW_ANN, i);
  XAnn_Set_P_intIn_index3(&_HW_ANN, layerSize);

  /*
   * Start and wait for process to end
   */
  XAnn_Start(&_HW_ANN);

  while(!XAnn_IsDone(&_HW_ANN));
}

void ANN::HW_ANN_set_WandB(int i, int j, int k, float WandB)
{
  float cash;
  /*
   * Wait for IP to be ready
   */
  while(!XAnn_IsReady(&_HW_ANN));

  /*
   * Set inputs
   */
  cash = WandB;
  XAnn_Set_P_mode(&_HW_ANN, 3);
  XAnn_Set_P_index1(&_HW_ANN, i);
  XAnn_Set_P_index2(&_HW_ANN, j);
  XAnn_Set_P_intIn_index3(&_HW_ANN, k);
  XAnn_Set_P_floatIn(&_HW_ANN, *(u32*)&cash);

  /*
   * Start and wait for process to end
   */
  XAnn_Start(&_HW_ANN);

  while(!XAnn_IsDone(&_HW_ANN));
}

void ANN::HW_ANN_set_netIn(int i, float netIn)
{
  float cash;
  /*
   * Wait for IP to be ready
   */
  while(!XAnn_IsReady(&_HW_ANN));

  /*
   * Set inputs
   */
  cash = netIn;
  XAnn_Set_P_mode(&_HW_ANN, 4);
  XAnn_Set_P_index1(&_HW_ANN, i);
  XAnn_Set_P_floatIn(&_HW_ANN, *(u32*)&cash);

  /*
   * Start and wait for process to end
   */
  XAnn_Start(&_HW_ANN);

  while(!XAnn_IsDone(&_HW_ANN));
}

void ANN::HW_ANN_feedforward()
{
  /*
   * Wait for IP to be ready
   */
  while(!XAnn_IsReady(&_HW_ANN));

  /*
   * Set inputs
   */
  XAnn_Set_P_mode(&_HW_ANN, 5);

  /*
   * Start and wait for process to end
   */
  XAnn_Start(&_HW_ANN);

  while(!XAnn_IsDone(&_HW_ANN));
}

int ANN::HW_ANN_get_netOut()
{
  u32 cash;
  /*
   * Wait for IP to be ready
   */
  while(!XAnn_IsReady(&_HW_ANN));

  /*
   * Set inputs
   */
  XAnn_Set_P_mode(&_HW_ANN, 7);

  /*
   * Start and wait for process to end
   */
  XAnn_Start(&_HW_ANN);

  while(!XAnn_IsDone(&_HW_ANN));

  /*
   * Get the float number codify in u32 and transform it in int
   */
  cash = XAnn_Get_return(&_HW_ANN);
  return (int) (*(float*)&cash);
 // return (int)XAnn_Get_return(&_HW_ANN);
}

float ANN::HW_ANN_get_uOut(int i, int j)
{
  u32 cash;
  /*
   * Wait for IP to be ready
   */
  while(!XAnn_IsReady(&_HW_ANN));

  /*
   * Set inputs
   */
  XAnn_Set_P_mode(&_HW_ANN, 6);
  XAnn_Set_P_index1(&_HW_ANN, i);
  XAnn_Set_P_index2(&_HW_ANN, j);

  /*
   * Start and wait for process to end
   */
  XAnn_Start(&_HW_ANN);

  while(!XAnn_IsDone(&_HW_ANN));

  /*
   * Get the float number codify in u32 and return
   */
  cash = XAnn_Get_return(&_HW_ANN);

  return  *(float*)&cash;
}

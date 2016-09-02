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
  int i, j, k, status;
  XFeedforward_Config *cfgPtr;
  XAxiDma_Config *DMACfgPtrConf, *DMACfgPtrNetin, *DMACfgPtrNetout,
  *DMACfgPtrWandB, *DMACfgPtruOut;

  /*.
   * Number of Layers data copy
   */
  _numLayer=numLayer;

  /*
   * Layers Sizes Array memory allocation and data copy
   */
  _layerSize=new int[numLayer];

  for(i=0; i<numLayer; ++i)
    {
      _layerSize[i]=layerSize[i];
    }

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
	    }
	}
    }


  /*
   * Initialize DMA registers
   */
  _TxBuff_config = (int*)   TX_BUFFER_CONFING_BASE;
  _RxBuff_netOut = (int*)   RX_BUFFER_NETOUT_BASE;
  _TxBuff_netIn  = (float*)  TX_BUFFER_NETIN_BASE;
  _TxBuff_WandB  = (float*)  TX_BUFFER_WANDB_BASE;
  _RxBuff_uOut   = (float*)  RX_BUFFER_UOUT_BASE;

  /*
   * Initialize CONFIG DMA, disabling interrupts, checking SG mode and reset
   */
  DMACfgPtrConf = XAxiDma_LookupConfig(DMA_CONFIG_ID);
  if(!DMACfgPtrConf)
    {
      throw int(XST_FAILURE);
    }
  status = XAxiDma_CfgInitialize(&_dma_config, DMACfgPtrConf);
  if(status != XST_SUCCESS)
    {
      throw int(XST_FAILURE);
    }

  XAxiDma_IntrDisable(&_dma_config, XAXIDMA_IRQ_ALL_MASK, XAXIDMA_DMA_TO_DEVICE);

  if (XAxiDma_HasSg(&_dma_config))
    {
      throw int(XST_FAILURE);
    }

  XAxiDma_Reset(&_dma_config);
  while (!XAxiDma_ResetIsDone(&_dma_config))
    {

    }

  /*
   * Initialize NETOUT DMA, disabling interrupts and checking SG mode and reset
   */
  DMACfgPtrNetout = XAxiDma_LookupConfig(DMA_NETOUT_ID);
  if(!DMACfgPtrNetout)
    {
      throw int(XST_FAILURE);
    }
  status = XAxiDma_CfgInitialize(&_dma_netOut, DMACfgPtrNetout);
  if(status != XST_SUCCESS)
    {
      throw int(XST_FAILURE);
    }

  XAxiDma_IntrDisable(&_dma_netOut, XAXIDMA_IRQ_ALL_MASK, XAXIDMA_DEVICE_TO_DMA);

  if (XAxiDma_HasSg(&_dma_netOut))
    {
      throw int(XST_FAILURE);
    }

  XAxiDma_Reset(&_dma_netOut);
    while (!XAxiDma_ResetIsDone(&_dma_netOut))
      {

      }

  /*
   * Initialize NETIN DMA, disabling interrupts and checking SG mode and reset
   */
  DMACfgPtrNetin = XAxiDma_LookupConfig(DMA_NETIN_ID);
  if(!DMACfgPtrNetin)
    {
      throw int(XST_FAILURE);
    }
  status = XAxiDma_CfgInitialize(&_dma_netIn, DMACfgPtrNetin);
  if(status != XST_SUCCESS)
    {
      throw int(XST_FAILURE);
    }

  XAxiDma_IntrDisable(&_dma_netIn, XAXIDMA_IRQ_ALL_MASK, XAXIDMA_DMA_TO_DEVICE);

  if (XAxiDma_HasSg(&_dma_netIn))
    {
      throw int(XST_FAILURE);
    }

  XAxiDma_Reset(&_dma_netIn);
    while (!XAxiDma_ResetIsDone(&_dma_netIn))
      {

      }

  /*
   * Initialize WANDB DMA, disabling interrupts and checking SG mode and reset
   */
  DMACfgPtrWandB = XAxiDma_LookupConfig(DMA_WANDB_ID);
  if(!DMACfgPtrWandB)
    {
      throw int(XST_FAILURE);
    }
  status = XAxiDma_CfgInitialize(&_dma_WandB, DMACfgPtrWandB);
  if(status != XST_SUCCESS)
    {
      throw int(XST_FAILURE);
    }

  XAxiDma_IntrDisable(&_dma_WandB, XAXIDMA_IRQ_ALL_MASK, XAXIDMA_DMA_TO_DEVICE);

  if (XAxiDma_HasSg(&_dma_WandB))
    {
      throw int(XST_FAILURE);
    }

  XAxiDma_Reset(&_dma_WandB);
    while (!XAxiDma_ResetIsDone(&_dma_WandB))
      {

      }

  /*
   * Initialize UOUT DMA, disabling interrupts and checking SG mode and reset
   */
  DMACfgPtruOut = XAxiDma_LookupConfig(DMA_UOUT_ID);
  if(!DMACfgPtruOut)
    {
      throw int(XST_FAILURE);
    }
  status = XAxiDma_CfgInitialize(&_dma_uOut, DMACfgPtruOut);
  if(status != XST_SUCCESS)
    {
      throw int(XST_FAILURE);
    }

  XAxiDma_IntrDisable(&_dma_uOut, XAXIDMA_IRQ_ALL_MASK, XAXIDMA_DEVICE_TO_DMA);

  if (XAxiDma_HasSg(&_dma_uOut))
    {
      throw int(XST_FAILURE);
    }

  XAxiDma_Reset(&_dma_uOut);
    while (!XAxiDma_ResetIsDone(&_dma_uOut))
      {

      }


  /*
   * Initialize IP core disabling interrupts
   */
  cfgPtr = XFeedforward_LookupConfig(HW_FEEDFORWARD_ID);
  if(!cfgPtr)
    {
      throw int(XST_FAILURE);
    }

  status = XFeedforward_CfgInitialize(&_HWInst, cfgPtr);
  if(status != XST_SUCCESS)
    {
      throw int(XST_FAILURE);
    }

  XFeedforward_InterruptDisable(&_HWInst,1);
  XFeedforward_InterruptGlobalDisable(&_HWInst);
  XFeedforward_DisableAutoRestart(&_HWInst);

  /*
   * Set IP in mode 2 to configure the ANN
   */
  while(!XFeedforward_IsIdle(&_HWInst))
    {
      /*Wait*/
    }
  XFeedforward_Set_P_mode_V(&_HWInst,2);

  /*
   * Load DMA buffer and flush it
   */
  _TxBuff_config[0]= _numLayer;
  for(i=0; i<_numLayer; ++i)
    {
      _TxBuff_config[i+1]=_layerSize[i];
    }
  Xil_DCacheFlushRange((UINTPTR) _TxBuff_config, (_numLayer+1)*4);

  /*
   * Stream the new configuration and wait for it
   */
  status = XAxiDma_SimpleTransfer(&_dma_config, (UINTPTR) _TxBuff_config,
                                  (_numLayer+1)*4, XAXIDMA_DMA_TO_DEVICE);
  if (status != XST_SUCCESS)
    {
      throw int(XST_FAILURE);
    }

  while (XAxiDma_Busy(&_dma_config, XAXIDMA_DMA_TO_DEVICE))
    {
      /* Wait */
    }

  /*
   * Start IP and wait for process to end
   */
  XFeedforward_Start(&_HWInst);
  //  int test;
  //  do
  //    {
  //      test = XFeedforward_Get_return(&_HWInst);
  //    }
  while(XFeedforward_IsDone(&_HWInst));
  //  while(XFeedforward_Get_return(&_HWInst)!=2)
  //    {
  //      /* Wait */
  //    }

  /*
   * Update weights and bias
   */
  updateWandB();
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





int ANN::feedforward(float *in)
{
  int i, status;

  /*
   * Set the IP in default mode
   */
  while(!XFeedforward_IsIdle(&_HWInst))
    {
      /*Wait*/
    }
  XFeedforward_Set_P_mode_V(&_HWInst,1);

  /*
   * Load input data in buffer and flush it.
   */
  for(i=0; i<_layerSize[0]; ++i)
    {
      _TxBuff_netIn[i] =   in[i];
    }
  Xil_DCacheFlushRange((UINTPTR) _TxBuff_netIn, _layerSize[0]*4);
  Xil_DCacheFlushRange((UINTPTR) _RxBuff_netOut, 4);

  /*
   * Start reception and stream data. Wait for sending all data
   */
  status = XAxiDma_SimpleTransfer(&_dma_netOut, (UINTPTR) _RxBuff_netOut,
                                  4, XAXIDMA_DEVICE_TO_DMA);
  if (status != XST_SUCCESS)
    {
      throw int(XST_FAILURE);
    }

  status = XAxiDma_SimpleTransfer(&_dma_netIn, (UINTPTR) _TxBuff_netIn,
                                  _layerSize[0]*4, XAXIDMA_DMA_TO_DEVICE);
  if (status != XST_SUCCESS)
    {
      throw int(XST_FAILURE);
    }

  while (XAxiDma_Busy(&_dma_netIn, XAXIDMA_DMA_TO_DEVICE))
    {
      /* Wait */
    }

  /*
   * Start IP and wait for process to end
   */
  XFeedforward_Start(&_HWInst);
  while(!XFeedforward_IsDone(&_HWInst))
    {
      /* Wait */
    }

  /*
   * Wait for data recetion and flush it
   */
  while (XAxiDma_Busy(&_dma_netOut, XAXIDMA_DEVICE_TO_DMA))
    {
      /* Wait */
    }


  /*
   * Return ANN output
   */
  return *_RxBuff_netOut;
}


void ANN::updateWandB()
{
  int i, j, k, seek, status;

  /*
   * Set IP in mode 3 to update ANN weights
   */
  while(!XFeedforward_IsIdle(&_HWInst))
    {
      /*Wait*/
    }
  XFeedforward_Set_P_mode_V(&_HWInst,3);

  /*
   * Load WandB data in buffer and flush it
   */
  seek=0;
  for(i=1; i<_numLayer; ++i)
    {
      for(j=0; j<_layerSize[i]; ++j)
	{
	  for(k=0; k<_layerSize[i-1]+1; ++k)
	    {
	      _TxBuff_WandB[seek]=   _WandB[i][j][k];
	      ++seek;
	    }
	}
    }
  Xil_DCacheFlushRange((UINTPTR) _TxBuff_WandB, seek*4);

  /*
   * Stream the new weights and wait for it
   */
  status = XAxiDma_SimpleTransfer(&_dma_WandB, (UINTPTR) _TxBuff_WandB,
                                  seek*4, XAXIDMA_DMA_TO_DEVICE);
  if (status != XST_SUCCESS)
    {
      throw int(XST_FAILURE);
    }

  while (XAxiDma_Busy(&_dma_WandB, XAXIDMA_DMA_TO_DEVICE))
    {
      /* Wait */
    }

  /*
   * Start IPand wait for process to end
   */
  XFeedforward_Start(&_HWInst);
  //  int test;
  //  do
  //    {
  //      test = XFeedforward_Get_return(&_HWInst);
  //    }
  //  while(test!=3);

  while(!XFeedforward_IsDone(&_HWInst));
  //    {
  //      /* Wait */
  //    }
}

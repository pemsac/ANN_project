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
 * Header file with the class definition.
 *
 *
 */

/*
 * Header guard
 */
#ifndef ANN_H_
#define ANN_H_

/*
 * ANN IP
 */
#define MAX_NUM_LAYER	4
#define MAX_SIZE_LAYER	35

/*
 * Peripherals ID
 */
#define HW_FEEDFORWARD_ID	XPAR_FEEDFORWARD_0_DEVICE_ID
#define DMA_CONFIG_ID		XPAR_AXI_DMA_2_DEVICE_ID
#define	DMA_WANDB_ID		XPAR_AXI_DMA_4_DEVICE_ID
#define DMA_NETIN_ID		XPAR_AXI_DMA_DEVICE_ID
#define DMA_UOUT_ID		XPAR_AXI_DMA_3_DEVICE_ID
#define DMA_NETOUT_ID		XPAR_AXI_DMA_1_DEVICE_ID

/*
 * DMA Registers
 */
#define DDR_BASE_ADDR			XPAR_PS7_DDR_0_S_AXI_BASEADDR
#define MEM_BASE_ADDR			DDR_BASE_ADDR + 0x10000000
#define TX_BUFFER_CONFING_BASE		(MEM_BASE_ADDR + 0x00100000)
#define TX_BUFFER_WANDB_BASE		(MEM_BASE_ADDR + 0x00200000)
#define TX_BUFFER_NETIN_BASE		(MEM_BASE_ADDR + 0x00400000)
#define RX_BUFFER_UOUT_BASE		(MEM_BASE_ADDR + 0x00500000)
#define RX_BUFFER_UOUT_HIGH		(MEM_BASE_ADDR + 0x007FFFFF)
#define RX_BUFFER_NETOUT_BASE		(MEM_BASE_ADDR + 0x00800000)
#define RX_BUFFER_NETOUT_HIGH		(MEM_BASE_ADDR + 0x008FFFFF)

#define TX_BUFFER_CONFING_SIZE	MAX_NUM_LAYER+1
#define TX_BUFFER_WANDB_SIZE	MAX_NUM_LAYER*MAX_SIZE_LAYER*(MAX_SIZE_LAYER+1)
#define TX_BUFFER_NETIN_SIZE	MAX_SIZE_LAYER
#define RX_BUFFER_UOUT_SIZE	MAX_NUM_LAYER*MAX_SIZE_LAYER
#define RX_BUFFER_NETOUT_SIZE	1
/*
 * Includes
 */
#include <cmath>
#include "xfeedforward.h"
#include "xparameters.h"
#include "xaxidma.h"

/*
 * Feed-forward Artificial Neural Network class
 */
class ANN
{
protected:
  /*
   * Private variables:
   * _WandB:		Weights & Bias Matrix.
   * _uOut:		Outputs Matrix. Output values of each neuron
   * _numLayer:		Number of Layers. It includes input and output layers
   * _layerSize:	Layers Sizes Array. Number of neurons in each layer.
   * _netOut:		Final resulting class
   */
  float ***_WandB, **_uOut;
  int _numLayer, *_layerSize;
  XFeedforward _HWInst;
  XAxiDma _dma_config, _dma_netOut, _dma_netIn, _dma_WandB, _dma_uOut;
//  int
//  _TxBuff_config[TX_BUFFER_CONFING_SIZE],
//  _RxBuff_netOut[RX_BUFFER_NETOUT_SIZE];
//  u64
//  _TxBuff_netIn[TX_BUFFER_NETIN_SIZE],
//  _TxBuff_WandB[TX_BUFFER_WANDB_SIZE],
//  _RxBuff_uOut[RX_BUFFER_UOUT_SIZE];
  int
  *_TxBuff_config,
  *_RxBuff_netOut;
  float
  *_TxBuff_netIn,
  *_TxBuff_WandB,
  *_RxBuff_uOut;


  void updateWandB();

public:
  /*
   * Main constructor method.
   *
   * Create a new ANN introducing, number of layers, layers sizes and Weight &
   * Bias Matrix.
   */
  ANN(int numLayer, int *layerSize, float ***WandB);

  /*
   * Virtual destructor to free all dynamic memory
   */
  virtual ~ANN();

  /*
   * Feed-forward method.
   *
   * There're 4 steps:
   * 1- Introduce new inputs
   * 2- Forward-propagation through hidden layers with Sigmoid activation
   * functions.
   * 3- Output layer operations with Softmax activation functions.
   * 4- Apply Winer-Take-All rule to get binary outputs and save them in _netOut
   *
   * Check documentation for more information
   */

  int feedforward(float *in);

};

#endif

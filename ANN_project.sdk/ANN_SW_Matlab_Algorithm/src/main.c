/**
 *
 * Carlos III University of Madrid.
 *
 * Master Final Thesis: Heartbeat classifier based on ANN (Artificial Neural
 * Network).
 *
 * Author: Pedro Marcos Solórzano
 * Tutor: Luis Mengibar Pozo (Tutor)
 *
 *
 *
 * This program has an already trained ANN algorithm developed in Matlab.
 * It's used as an example for future developments.
 *
 */



/*
 * LED's GPIO Configuration
 */
#define LED_DEVICE_ID           XPAR_AXI_GPIO_0_DEVICE_ID
#define LED_CHANNEL             1
#define LED_DIRECTION_MASK      0x01
/*
 * System state LED codes
 */
#define LED_ERROR_STATE         0b1111
#define LED_READY_STATE         0b0001
#define LED_FILE_ERROR_STATE    0b0101
#define LED_SUCCESS_STATE       0b0011
/*
 * File System configuration
 * Size in bytes.
 */
#define FS_PATH			"0:/"
#define INPUT_DIR		"testQ.txt"
/*
 * Input data configuration:
 */
#define NUM_DATA_BEAT		28
#define NUM_DATA_RESULT		5

/*
 * Include files
 */
#include <stdio.h>
#include "xgpio.h"
#include "xil_printf.h"
#include "ff.h"
#include "xparameters.h"
#include "RNA35b.h"
#include "RNA35b_emxAPI.h"


/**
 * Main code
 * @function    main()
 *
 * @param       none
 *
 * @return      XST_FAILURE failed execution
 *              XST_SUCCESS successful execution
 */
int main(int argc , char * argv []){
  /*
   * Local declarations.
   */
  XGpio led;
  FRESULT fStatus;
  FATFS fileSystem;
  FIL file;
  int status, i, maxValuePos, fOffset=-1, offset=0, fBytesRead, beatsCounter=0,
      fSize;
  u8 *beatBuffer;
  double maxValue, beatData[NUM_DATA_BEAT], result[NUM_DATA_RESULT];
  emxArray_real_T *inputs, *outputs;

  /*
   * LED's GPIO Initialization
   */
  status = XGpio_Initialize(&led, LED_DEVICE_ID);
  if (status != XST_SUCCESS) {
      return XST_FAILURE;
  }
  XGpio_SetDataDirection(&led, LED_CHANNEL, LED_DIRECTION_MASK);
  XGpio_DiscreteWrite(&led,LED_CHANNEL,LED_READY_STATE);

  /*
   * Introduction
   */
  xil_printf("\r\nHEARTBEAT CLASSIFIER\r\n\r\n");
  xil_printf("Opening and reading %s%s....\r\n", FS_PATH, INPUT_DIR);

  /*
   * Initialize the memory file system
   */
  fStatus = f_mount(&fileSystem, FS_PATH, 0);
  if (fStatus != FR_OK) {
      xil_printf("ERROR: Failed mounting SD memory on %s.\r\n",FS_PATH);
      XGpio_DiscreteWrite(&led,LED_CHANNEL,LED_ERROR_STATE);
      return XST_FAILURE;
  }
  /*
   * Open the data file
   */
  fStatus = f_open(&file, INPUT_DIR , FA_READ);
  if (fStatus) {
      xil_printf("ERROR: Failed opening %s%s File not found.\r\n",FS_PATH,INPUT_DIR);
      XGpio_DiscreteWrite(&led,LED_CHANNEL,LED_FILE_ERROR_STATE);
      return XST_FAILURE;
  }
  /*
   * Get the file's size
   *    */
  fSize = file.fsize;
  u8 fBuffer[fSize];
  /*
   * Read input data from file to buffer.
   */
  f_lseek(&file, 0);

  fStatus = f_read(&file, (void*)fBuffer, fSize, &fBytesRead);
  if (fStatus || fSize!=fBytesRead) {
      xil_printf(
	  "ERROR: Failed reading file %s%s. %i Bytes have been read.\r\n",
	  FS_PATH,
	  INPUT_DIR,
	  fBytesRead);
      XGpio_DiscreteWrite(&led,LED_CHANNEL,LED_FILE_ERROR_STATE);
      return XST_FAILURE;
  }
  /*
   * Data processing.
   */
  xil_printf("Done! Read %i bytes of Data. The beats classified are:\r\n\r\n",fSize);

  while (1){
      /*
       * Get the data of the next beat to be processed from the file buffer
       * If there aren't more valid data, terminate the loop
       */
      offset=-1;
      do
	beatBuffer[++offset] = fBuffer[++fOffset];
      while(beatBuffer[offset]!='\n');

      offset=0;
      for (i=0; i < NUM_DATA_BEAT; ++i){

	  status = sscanf (beatBuffer+offset, "%lf%n", &beatData[i], &fBytesRead);
	  if(status<=0)
	    break;
	  offset+=fBytesRead;
      }
      if(status<=0)
	break;

      /*
       * Artificial Neural Network (ANN) processing.
       */
      inputs = emxCreateWrapper_real_T(beatData, NUM_DATA_BEAT, 1);
      outputs = emxCreateWrapper_real_T(result, NUM_DATA_RESULT, 1);

      RNA35b(inputs, outputs);

      /*
       * Analyze the ANN output data. Find & save the max value in the ANN's
       * output data array and its index.
       */
      for (i=0, maxValue=0.0, maxValuePos=0; i < NUM_DATA_RESULT; ++i){
	  if (outputs->data[i] > maxValue){
	      maxValue = outputs->data[i];
	      maxValuePos = i;
	  }
      }
      /*
       * The beat classification depends on the max value index in
       * the ANN's output data array. After decoding the beat type, send it
       * through UART.
       */
      if (maxValuePos == 0)
	xil_printf("Beat No %i \t N Normal Beat\r\n",++beatsCounter);
      else if (maxValuePos == 1)
	xil_printf("Beat No %i \tS Supraventricular Ectopic Beat\r\n",++beatsCounter);
      else if (maxValuePos == 2)
	xil_printf("Beat No %i \tV Ventricular Ectopic Beat\r\n",++beatsCounter);
      else if (maxValuePos == 3)
	xil_printf("Beat No %i \tF Fusion Beat\r\n",++beatsCounter);
      else if(maxValuePos == 4)
	xil_printf("Beat No %i \tS Unknown Beat\r\n",++beatsCounter);
      /*
       * free ANN input/output memory
       */
      emxDestroyArray_real_T(inputs);
      emxDestroyArray_real_T(outputs);

  }
  /*
   * Close file
   */
  fStatus = f_close(&file);
  if (fStatus) {
      xil_printf("\r\nError closing file %s%s\r\n",FS_PATH,INPUT_DIR);
      XGpio_DiscreteWrite(&led,LED_CHANNEL,LED_FILE_ERROR_STATE);
      return XST_FAILURE;
  }
  /*
   * Final
   */
  xil_printf("\r\nThe program finished successfully\r\n");
  XGpio_DiscreteWrite(&led,LED_CHANNEL,LED_SUCCESS_STATE);
  return XST_SUCCESS;
}

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
 * Main source file
 *
 *
 */

#include "main.hpp"

int main(void)
{
  /*
   * Local declarations.
   */
  XGpio gpio;
  FRESULT fStatus;
  FATFS fileSystem;
  FIL fAnn, fTrain, fTest, fInput;
  int status, mode, newANN = 1;
  u8 *fAnnBuff, *fTrainBuff, *fInputBuff, *fTestBuff;
  UINT fBytesRead;

  /*
   * LED's GPIO Initialization
   */
  status = XGpio_Initialize(&gpio, GPIO_DEVICE_ID);
  if (status != XST_SUCCESS)
    {
      cerr << "ERROR: GPIO failure." << endl;
      return XST_FAILURE;
    }

  XGpio_SetDataDirection(&gpio, LED_CHANNEL, LED_DIRECTION_MASK);
  XGpio_DiscreteWrite(&gpio, LED_CHANNEL, LED_READY_STATE);

  /*
   * Get working mode
   */
  mode = XGpio_DiscreteRead(&gpio, SW_CHANNEL)%2;

  /*
   * Print an introduction
   */
  cout << endl<<"*****ARTIFITIAL NEURONAL NETWORK*****"<<endl;
  if(mode)
    cout << "Back-propagation training for feedforward ANN"<<endl<<endl;
  else
    cout << "Feedforward ANN" << endl << endl;

  /*
   * Initialize the memory file system
   */
  fStatus = f_mount(&fileSystem, FS_PATH, 0);
  if (fStatus != FR_OK)
    {
      cerr<<"ERROR: impossible to mount SD memory on "<<FS_PATH<<endl;
      XGpio_DiscreteWrite(&gpio,LED_CHANNEL,LED_ERROR_STATE);
      return XST_FAILURE;
    }

  /*
   * Open files
   */
  cout << "Loading data..." << endl;

  fStatus = f_open(&fAnn, ANN_FILE_DIR , FA_READ);
  if (fStatus)
    {
      cerr << "ERROR: ANN configuration file not found in " << FS_PATH <<
	  ANN_FILE_DIR << endl;
      XGpio_DiscreteWrite(&gpio, LED_CHANNEL ,LED_FILE_ERROR_STATE);
      return XST_FAILURE;
    }

  if (mode)
    {
      fStatus = f_open(&fTrain, TRAIN_FILE_DIR , FA_READ);
      if (fStatus)
	{
	  cerr << "ERROR: Training file not found in " << FS_PATH <<
	      TRAIN_FILE_DIR << endl;
	  XGpio_DiscreteWrite(&gpio, LED_CHANNEL, LED_FILE_ERROR_STATE);
	  return XST_FAILURE;
	}

      fStatus = f_open(&fTest, TEST_FILE_DIR , FA_READ);
      if (fStatus)
	{
	  cerr << "ERROR: Test file not found in " << FS_PATH <<
	      TEST_FILE_DIR << endl;
	  XGpio_DiscreteWrite(&gpio, LED_CHANNEL, LED_FILE_ERROR_STATE);
	  return XST_FAILURE;
	}
    }
  else
    {
      fStatus = f_open(&fInput, IN_FILE_DIR , FA_READ);
      if (fStatus)
	{
	  cerr << "ERROR: Inputs file not found in " << FS_PATH <<
	      ANN_FILE_DIR << endl;
	  XGpio_DiscreteWrite(&gpio, LED_CHANNEL ,LED_FILE_ERROR_STATE);
	  return XST_FAILURE;
	}
    }

  /*
   * Read files & allocate buffers
   */
  fAnnBuff = new u8[fAnn.fsize];
  f_lseek(&fAnn, 0);
  fStatus = f_read(&fAnn, (void*)fAnnBuff, fAnn.fsize, &fBytesRead);
  if (fStatus || fAnn.fsize!=fBytesRead)
    {
      cerr << "ERROR: Failed reading file "<< FS_PATH << ANN_FILE_DIR
	  << ". "<< fBytesRead << " bytes have been read."<<endl;
      XGpio_DiscreteWrite(&gpio,LED_CHANNEL,LED_FILE_ERROR_STATE);
      return XST_FAILURE;
    }


  if(mode)
    {
      fTrainBuff = new u8[fTrain.fsize];
      f_lseek(&fTrain, 0);
      fStatus = f_read(&fTrain, (void*)fTrainBuff, fTrain.fsize, &fBytesRead);
      if (fStatus || fTrain.fsize!=fBytesRead)
	{
	  cerr << "ERROR: Failed reading file "<< FS_PATH << TRAIN_FILE_DIR
	      << ". "<< fBytesRead << " bytes have been read."<<endl;
	  XGpio_DiscreteWrite(&gpio,LED_CHANNEL,LED_FILE_ERROR_STATE);
	  return XST_FAILURE;
	}

      fTestBuff = new u8[fTest.fsize];
      f_lseek(&fTest, 0);
      fStatus = f_read(&fTest, (void*)fTestBuff, fTest.fsize, &fBytesRead);
      if (fStatus || fTest.fsize!=fBytesRead)
	{
	  cerr << "ERROR: Failed reading file "<< FS_PATH << TEST_FILE_DIR
	      << ". "<< fBytesRead << " bytes have been read."<<endl;
	  XGpio_DiscreteWrite(&gpio,LED_CHANNEL,LED_FILE_ERROR_STATE);
	  return XST_FAILURE;
	}
    }
  else
    {
      fInputBuff = new u8[fInput.fsize];
      f_lseek(&fInput, 0);
      fStatus = f_read(&fInput, (void*)fInputBuff, fInput.fsize, &fBytesRead);
      if (fStatus || fInput.fsize!=fBytesRead)
	{
	  cerr << "ERROR: Failed reading file "<< FS_PATH << IN_FILE_DIR
	      << ". "<< fBytesRead << " bytes have been read."<<endl;
	  XGpio_DiscreteWrite(&gpio,LED_CHANNEL,LED_FILE_ERROR_STATE);
	  return XST_FAILURE;
	}
    }

  /*
   * scan and store the data
   */
  cout << "0% "<<endl;

  status = sscanf (fAnnBuff)
      exception


  return 0;
}

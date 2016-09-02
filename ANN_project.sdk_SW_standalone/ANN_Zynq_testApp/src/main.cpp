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
 * Main code to train, validate and test some feed-fordware ANN examples.
 *
 * Source code
 *
 *
 */

#include "main.h"

/*
 * Undefine "str" macro to avoid overloading the String-stream's method.
 */
#undef str

int main(void)
{
  int i,j, k, numLayer, *layerSize, numRowTrain, numRowVal, numRowTest, numRow,
  ite, maxIte, minIte, numOut, numIn, *goodOut, *badOut, goodOutTotal, status,
  netOut;
  UINT fSize, fBRead;
  double **dIn, **dTarget, mcee, minMcee, lastMcee, thMcee, *maxIn, *minIn;
  bool bad;
  char *fBuffer;
  stringstream sBuffer;
  FIL fAnn, fTarget, fIn, fTrain;
  FATFS fatfs;
  FRESULT fStatus;
  XTime time1, time2;
  XGpio leds;

  /*
   * Initialize GPIO's LEDs
   *
   * The application will show different light signals in function of the
   * running state
   */
  status = XGpio_Initialize(&leds, XPAR_AXI_GPIO_0_DEVICE_ID);
  if (status != XST_SUCCESS)
    {
      cerr<<endl<<endl<<endl<<"Error initializing LEDs"<<endl;
      return XST_DEVICE_NOT_FOUND;
    }
  XGpio_SetDataDirection(&leds, 1, 0x0);

  /*
   * Print an introduction
   */
  cout<<endl<<endl<<endl
      <<"ANN test Application"<<endl
      <<"####################"<<endl<<endl;

  /*
   * Mount SD and create File System to open configuration and data files
   */
  cout<<"Creating File System and opening files... "<<flush;

  fStatus = f_mount(&fatfs, FILE_SYS_PATH, 1);
  if (fStatus != FR_OK)
    {
      cerr<<endl<<"Error mounting SD memory on "<<FILE_SYS_PATH<<endl;
      return XST_FAILURE;
    }

  fStatus = f_open(&fAnn, ANN_FILE_DIR , FA_READ);
  if (fStatus)
    {
      cerr<<endl<<"Error opening "<<FILE_SYS_PATH<<ANN_FILE_DIR
	  <<" File not found."<<endl;
      return XST_FAILURE;
    }
  f_lseek(&fAnn, 0);

  fStatus = f_open(&fTarget, TARGET_FILE_DIR , FA_READ);
  if (fStatus)
    {
      cerr<<endl<<"Error opening "<<FILE_SYS_PATH<<TARGET_FILE_DIR
	  <<" File not found."<<endl;
      return XST_FAILURE;
    }
  f_lseek(&fTarget, 0);

  fStatus = f_open(&fIn, IN_FILE_DIR , FA_READ);
  if (fStatus)
    {
      cerr<<endl<<"Error opening "<<FILE_SYS_PATH<<IN_FILE_DIR
	  <<" File not found."<<endl;
      return XST_FAILURE;
    }
  f_lseek(&fIn, 0);

  fStatus = f_open(&fTrain, TRAIN_FILE_DIR , FA_READ);
  if (fStatus)
    {
      cerr<<endl<<"Error opening "<<FILE_SYS_PATH<<TRAIN_FILE_DIR
	  <<" File not found."<<endl;
      return XST_FAILURE;
    }
  f_lseek(&fTrain, 0);

  cout<<"DONE!"<<endl;


  /*
   * ANN configuration
   *
   * Load ANN parameters such as number of layers and layers' sizes from their
   * file. Allocate required memory to save these data and other variables
   *
   * Check documentation for more information about file format
   */
  cout<<"Loading ANN configuration..."<<flush;
  XGpio_DiscreteWrite(&leds, 1, 0b1000);

  /*
   * Load ANN configuration from file
   */
  fSize = fAnn.fsize;
  fBuffer = new char[fSize];
  fStatus = f_read(&fAnn, (void*)fBuffer, fSize, &fBRead);
  if (fStatus || fSize!=fBRead)
    {
      cerr<<endl<<"Error reading file "<<FILE_SYS_PATH<<ANN_FILE_DIR<<". "
	  <<fBRead<<" Bytes have been read."<<endl;
      return XST_FAILURE;
    }

  try
  {
      /*
       * Storage loaded data on a string-stream
       */
      sBuffer<<fBuffer;

      /*
       * Load Number of Layers
       */
      sBuffer>>numLayer;

      /*
       * Allocate Layers Sizes Array and load them
       */
      layerSize = new int[numLayer];

      for (i=0; i<numLayer; ++i)
	{
	  sBuffer>>layerSize[i];
	}

      /*
       * Get number of network outputs & inputs
       */
      numOut = layerSize[numLayer-1];
      numIn = layerSize[0];

      /*
       * Allocate and initialize to 0 statistical variables of ANN test
       */
      goodOut = new int[numOut]();
      badOut = new int[numOut]();

      /*
       * Allocate and initialize input coding variables
       */
      maxIn = new double[numIn];
      minIn = new double[numIn];
      for(i=0; i<numIn; ++i)
	{
	  maxIn[i] = CODEC_MIN;
	  minIn[i] = CODEC_MAX;
	}
  }
  catch (exception &e)
  {
      cerr<<endl<<"Error setting up ANN:"<<endl<<e.what()<<endl
	  <<"Are all parameters correct?"<<endl;
      return XST_FAILURE;
  }

  /*
   * Close file and delete buffer
   */
  fStatus = f_close(&fAnn);
  if (fStatus)
    {
      cerr<<endl<<"Error closing file "<<FILE_SYS_PATH<<ANN_FILE_DIR<<endl;
      return XST_FAILURE;
    }
  delete[] fBuffer;
  sBuffer.str("");

  cout<<"DONE!"<<endl;


  /*
   * Training configuration
   *
   * Load training parameters such as threshold mcee or max iterations.
   *
   * Check documentation for more information about file format
   */
  cout<<"Loading Training configuration..."<<flush;
  XGpio_DiscreteWrite(&leds, 1, 0b1100);

  /*
   * Load Training configuration from file
   */
  fSize = fTrain.fsize;
  fBuffer = new char[fSize];
  fStatus = f_read(&fTrain, (void*)fBuffer, fSize, &fBRead);
  if (fStatus || fSize!=fBRead)
    {
      cerr<<endl<<"Error reading file "<<FILE_SYS_PATH<<TRAIN_FILE_DIR<<". "
	  <<fBRead<<" Bytes have been read."<<endl;
      return XST_FAILURE;
    }

  try
  {
      /*
       * Storage data loaded on a string-stream
       */
      sBuffer<<fBuffer;

      /*
       * Load training parameters
       */
      sBuffer>>thMcee>>maxIte>>numRowTrain>>numRowVal>>numRowTest;

      /*
       * Calculate number of total samples
       */
      numRow = numRowTrain + numRowVal + numRowTest;

  }
  catch (exception &e)
  {
      cerr<<endl<<"Error setting up Training parameters:"<<endl<<e.what()<<endl
	  <<"Are all data correct?"<<endl;
      return XST_FAILURE;
  }

  /*
   * Close file and delete buffer
   */
  fStatus = f_close(&fTrain);
  if (fStatus)
    {
      cerr<<endl<<"Error closing file "<<FILE_SYS_PATH<<TRAIN_FILE_DIR<<endl;
      return XST_FAILURE;
    }
  delete[] fBuffer;
  sBuffer.str("");

  cout<<"DONE!"<<endl;


  /*
   * Input data
   *
   * Load the input data for the network and find maximum and minimum values of
   * each type of input to codify all data later
   *
   * Check documentation for more information about file format
   */
  cout<<"Loading input samples data..."<<flush;
  XGpio_DiscreteWrite(&leds, 1, 0b1110);

  /*
   * Load inputs from file
   */
  fSize = fIn.fsize;
  fBuffer = new char[fSize];
  fStatus = f_read(&fIn, (void*)fBuffer, fSize, &fBRead);
  if (fStatus || fSize!=fBRead)
    {
      cerr<<endl<<"Error reading file "<<FILE_SYS_PATH<<IN_FILE_DIR<<". "
	  <<fBRead<<" Bytes have been read."<<endl;
      return XST_FAILURE;
    }
  try
  {
      /*
       * Storage data loaded on a string-stream
       */
      sBuffer<<fBuffer;

      /*
       * Allocate input buffer
       */
      dIn = new double*[numRow];
      for(i=0; i<numRow; ++i)
	{
	  dIn[i] = new double[numIn];
	}

      /*
       * Load all data and find maximums and minimums
       */
      for(i=0; i<numRow; ++i)
	{
	  for(j=0; j<numIn; ++j)
	    {
	      sBuffer>>dIn[i][j];

	      if(dIn[i][j]>maxIn[j])
		{
		  maxIn[j] = dIn[i][j];
		}
	      if(dIn[i][j]<minIn[j])
		{
		  minIn[j] = dIn[i][j];
		}
	    }
	}
  }
  catch (exception &e)
  {
      cerr<<endl<<"Error loading:"<<endl<<e.what()<<endl
	  <<"Are all parameters correct?"<<endl;
      return XST_FAILURE;
  }

  /*
   * Close file and delete buffer
   */
  fStatus = f_close(&fIn);
  if (fStatus)
    {
      cerr<<endl<<"Error closing file "<<FILE_SYS_PATH<<IN_FILE_DIR<<endl;
      return XST_FAILURE;
    }
  delete[] fBuffer;
  sBuffer.str("");

  cout<<"DONE!"<<endl;


  /*
   * Target data
   *
   * Load the target outputs of each input sample data
   *
   * Check documentation for more information about file format
   */
  cout<<"Loading target samples data..."<<flush;
  XGpio_DiscreteWrite(&leds, 1, 0b1111);

  /*
   * Load targets from file
   */
  fSize = fTarget.fsize;
  fBuffer = new char[fSize];
  fStatus = f_read(&fTarget, (void*)fBuffer, fSize, &fBRead);
  if (fStatus || fSize!=fBRead)
    {
      cerr<<endl<<"Error reading file "<<FILE_SYS_PATH<<TARGET_FILE_DIR<<". "
	  <<fBRead<<" Bytes have been read."<<endl;
      return XST_FAILURE;
    }

  try
  {
      /*
       * Storage data loaded on a string-stream
       */
      sBuffer<<fBuffer;

      /*
       * Allocate target buffer
       */
      dTarget = new double*[numRow];
      for(i=0; i<numRow; ++i)
	{
	  dTarget[i] = new double[numOut];
	}

      /*
       * Load all data
       */
      for(i=0; i<numRow; ++i)
	{
	  for(j=0; j<numOut; ++j)
	    {
	      sBuffer>>dTarget[i][j];
	    }
	}
  }
  catch (exception &e)
  {
      cerr<<endl<<"Error loading:"<<endl<<e.what()<<endl
	  <<"Are all parameters correct?"<<endl;
      return XST_FAILURE;
  }

  /*
   * Close file and delete buffer
   */
  fStatus = f_close(&fTarget);
  if (fStatus)
    {
      cerr<<endl<<"Error closing file "<<FILE_SYS_PATH<<TARGET_FILE_DIR<<endl;
      return XST_FAILURE;
    }
  delete[] fBuffer;
  sBuffer.str("");

  /*
   * Unmount file system
   */
  fStatus = f_mount(NULL, FILE_SYS_PATH, 1);
  if (fStatus != FR_OK)
    {
      cerr<<endl<<"Error unmounting SD memory"<<endl;
      return XST_FAILURE;
    }

  cout<<"DONE!"<<endl;



  /*
   * Codify the inputs data and normalize all of them to 1.
   *
   * Check documentation for more information
   */
  cout<<"Coding input data..."<<flush;
  for(i=0; i<numIn; ++i)
    {
      /*
       * Calculate Slope
       */
      double a = (CODEC_MAX-CODEC_MIN)/(maxIn[i]-minIn[i]);

      /*
       * Calculate y-intercept
       */
      double b = CODEC_MIN - a*minIn[i];

      /*
       * Apply the Straight Line equation to this type of input data
       */
      for(j=0; j<numRow; ++j)
	{
	  dIn[j][i] = dIn[j][i]*a + b;
	}
    }
  /*
   * Free coding variables memory.
   */
  delete[] maxIn;
  delete[] minIn;

  cout<<"DONE!"<<endl;
  XGpio_DiscreteWrite(&leds, 1, 0b0000);
  /*
   * Start to measure training time and create the Training instance
   * (It will create an own ANN to be trained)
   *
   */
  cout<<"Training a new feed-forward Neural Network..."<<flush;
  XTime_GetTime(&time1);
  Training trainIns(numLayer, layerSize);

  /*
   * layerSize isn't still useful
   */
  delete[] layerSize;

  /*
   * TRAINING PROCESS:
   *
   * Main steps summary:
   * 1- Back-propagation
   * 2- Validation
   * 3- Results check
   * 4- Update training parameters
   */
  ite=0;
  minIte=0;
  minMcee=999;
  lastMcee=999;
  while(1)
    {
      /*
       * iterations counter
       */
      ++ite;

      /*
       * 1º Step. Back-propagation
       *
       * Apply Back-propagation with each training sample
       */
      for(i=0; i<numRowTrain; ++i)
	{
	  trainIns.backpropagation(dIn[i], dTarget[i]);
	}

      /*
       * 2º Step. Validation
       *
       * Validate the training. Calculate the Mean Cross Entropy Error (MCEE)
       * with some validation samples.
       */
      mcee=0;
      for(i=numRowTrain; i<numRowTrain+numRowVal; ++i)
	{
	  trainIns.feedforward(dIn[i]);
	  mcee+=trainIns.CEE(dTarget[i]);
	}
      mcee /= numRowVal;

      /*
       * Save the lower MCEE achieved
       */
      if(mcee<minMcee)
	{
	  minMcee = mcee;
	  minIte = ite;
	}

      /*
       * 3º Step: Results check
       *
       * Check if minimum MCEE or maximum iterations are achieved and stop
       * training if someone is. Print the result after finishing training.
       *
       *Stop time if the train is over
       */
      if(mcee<=thMcee)
	{
	  XTime_GetTime(&time2);
	  cout<<"DONE!"<<endl<<endl
	      <<"##  TRAINING RESULTS:"<<endl
	      <<"# Threshold Mean Cross Entropy Error achieved in "<<ite
	      <<" iterations"<<endl;
	  break;
	}
      if(ite>=maxIte)
	{
	  XTime_GetTime(&time2);
	  cout<<"DONE!"<<endl<<endl
	      <<"##  TRAINING RESULTS:"<<endl
	      <<"# Threshold Mean Cross Entropy Error not achieved"<<endl
	      <<"# Minimum Validation MCEE found at iteration No "<<minIte
	      <<" with a value of "<<minMcee<<endl;
	  break;
	}

      /*
       * 4º Step: Update training parameters
       *
       * If the training runs again, update the Learning Rate and Momentum
       */
      trainIns.updateLRandM(mcee,lastMcee);
      lastMcee=mcee;

      /*
       * Control the LEDs to indicate the trainer is working
       */
      if(ite%2)
	{
	  XGpio_DiscreteWrite(&leds, 1, 0b0100);
	}
      else
	{
	  XGpio_DiscreteWrite(&leds, 1, 0b0010);
	}
    }
  XGpio_DiscreteWrite(&leds, 1, 0b0000);

  /*
   * last trainer information to print
   */
  cout<<"# Validation MCEE = "<<mcee<<endl;
  if((time2-time1)<COUNTS_PER_SECOND)
    {
      cout<<"# Training time = "<<(double)(time2-time1)*1000000/COUNTS_PER_SECOND
	  <<" microsec"<<endl<<endl;
    }
  else
    {
      cout<<"# Training time = "<<(double)(time2-time1)/COUNTS_PER_SECOND
	  <<" sec"<<endl<<endl;
    }
  /*
   * TESTING PROCESS
   */
  cout<<"Testing ANN..."<<flush;
  /*
   * Start timing and test
   */
  XTime_GetTime(&time1);
  ite=0;
  mcee=0;
  k=0;
  goodOutTotal=0;
  for(i=numRowTrain+numRowVal; i<numRow; ++i)
    {
      /*
       * iteration counter
       */
      ++ite;

      /*
       * Feed-forward sample
       */
      trainIns.feedforward(dIn[i]);

      /*
            * Check whether the classification has been correctly done
            */
           netOut = trainIns.getNetOut();

           bad=false;
           for(j=0; j<numOut; ++j)
     	{
     	  if(dTarget[i][j])
     	    {
     	      k=j;
     	      if(netOut!=j)
     		{
     		  bad=true;
     		}
     	    }
     	}

      /*
       * Count bad and good results.
       */
      if(bad)
	{
	  ++badOut[k];
	}
      else
	{
	  ++goodOut[k];
	  ++goodOutTotal;
	}

      /*
       * Calculate MCEE of all the test
       */
      mcee+=trainIns.CEE(dTarget[i]);
    }
  /*
   * Finish test
   */
  mcee = mcee/numRowTest;
  XTime_GetTime(&time2);

  /*
   * Print the test results
   */
  cout<<"DONE!"<<endl<<endl
      <<"##  TEST RESULTS:"<<endl;
  for(i=0; i<numOut; ++i)
    {
      cout<<"# Class No "<<i<<" => Good = "<<goodOut[i]<<" Bad = "
	  <<badOut[i]<<" ("<<goodOut[i]*100/(badOut[i]+goodOut[i])<<"%)"<<endl;
    }
  cout<<"# Test MCEE = "<<mcee<<endl;
  cout<<"# Classification accuracy = "<<goodOutTotal*100/numRowTest<<"%"<<endl;
  if((time2-time1)*1000<COUNTS_PER_SECOND)
    {
      cout<<"# Test time = "<<(double)(time2-time1)*1000000/COUNTS_PER_SECOND
	  <<" microsec."<<endl<<endl;
    }
  else
    {
      cout<<"# Test time = "<<(double)(time2-time1)*1000/COUNTS_PER_SECOND
	  <<" millisec."<<endl<<endl;
    }

  /*
   * END
   *
   * Free all dynamic memory (the object will be destroyed automatically) and
   * Turn on all LEDs
   */
  cout<<"Ending program..."<<flush;

  delete[] goodOut;
  delete[] badOut;
  for(i=0; i<numRow; ++i)
    {
      delete[] dIn[i];
      delete[] dTarget[i];
    }
  delete[] dIn;
  delete[] dTarget;

  XGpio_DiscreteWrite(&leds, 1, 0b1111);

  cout<<"DONE!"<<endl;


  return XST_SUCCESS;
}

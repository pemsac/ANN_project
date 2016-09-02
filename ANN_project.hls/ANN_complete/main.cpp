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
 * Main code to train, validate and test a feed-forward ANN
 *
 * Source code
 *
 *
 */

#include "main.h"



int main(void)
{
  int i,j, k, numRowTrain, numRowVal, numRowTest, numRow, ite, maxIte, minIte,
  numOut, numIn, *goodOut, *badOut, goodOutTotal;
  iword_t numLayer, *layerSize, netOut;
  fword_t **dIn, **dTarget, mcee, minMcee, lastMcee, thMcee, *maxIn, *minIn;
  bool bad;
  fstream fAnn, fTarget, fIn, fTrain;


  /*
   * Open configuration and data files
   */
  printf("Loading data... ");
  try
  {
      fAnn.open(ANN_FILE_DIR, fstream::in);
      fAnn.seekg(0, ios::beg);
      fTarget.open(TARGET_FILE_DIR, fstream::in);
      fTarget.seekg(0, ios::beg);
      fIn.open(IN_FILE_DIR, fstream::in);
      fIn.seekg(0, ios::beg);
      fTrain.open(TRAIN_FILE_DIR, fstream::in);
      fTrain.seekg(0, ios::beg);
  }
  catch (fstream::failure &e)
  {
      printf("\r\n*****TEST BENCH FAILED!!*****\r\n");
      printf("\r\nError opening some file:\r\n%s\r\n",e.what());
      return(1);
  }


  /*
   * ANN configuration
   *
   * Load ANN parameters such as number of layers and layers' sizes from their
   * file. Allocate required memory to save these data and other variables
   *
   * Check documentation for more information about file format
   */
  try
  {
      /*
       * Load Number of Layers
       */
      fAnn>>numLayer;

      /*
       * Allocate Layers Sizes Array and load them
       */
      layerSize = new iword_t[numLayer];

      for (i=0; i<numLayer; ++i)
	{
	  fAnn>>layerSize[i];
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
      maxIn = new fword_t[numIn];
      minIn = new fword_t[numIn];
      for(i=0; i<numIn; ++i)
	{
	  maxIn[i] = CODEC_MIN;
	  minIn[i] = CODEC_MAX;
	}

      /*
       * Close file
       */
      fAnn.close();
  }
  catch(fstream::failure &e)
  {
      printf("\r\n*****TEST BENCH FAILED!!*****\r\n");
      printf("\r\nError reading ANN configuration file:\r\n%s\r\n",e.what());
      return(1);
  }
  catch (exception &e)
  {
      printf("\r\n*****TEST BENCH FAILED!!*****\r\n");
      printf("\r\nError setting up ANN:\r\n%s\r\nAre all parameters correct?\r\n",
	     e.what());
      return(1);
  }


  /*
   * Training configuration
   *
   * Load training parameters such as threshold mcee or max iterations.
   *
   * Check documentation for more information about file format
   */
  try
  {
      /*
       * Load training parameters
       */
      fTrain>>thMcee>>maxIte>>numRowTrain>>numRowVal>>numRowTest;

      /*
       * Calculate number of total samples
       */
      numRow = numRowTrain + numRowVal + numRowTest;

      /*
       * Close the file
       */
      fTrain.close();
  }
  catch (fstream::failure &e)
  {
      printf("\r\n*****TEST BENCH FAILED!!*****\r\n");
      printf("\r\nError reading training configuration file:\r\n%s\r\n",e.what());
      return(1);
  }


  /*
   * Input data
   *
   * Load the input data for the network and find maximum and minimum values of
   * each type of input to codify all data later
   *
   * Check documentation for more information about file format
   */
  try
  {
      /*
       * Allocate input buffer
       */
      dIn = new fword_t*[numRow];
      for(i=0; i<numRow; ++i)
	{
	  dIn[i] = new fword_t[numIn];
	}

      /*
       * Load all data and find maximums and minimums
       */
      for(i=0; i<numRow; ++i)
	{
	  for(j=0; j<numIn; ++j)
	    {
	      fIn>>dIn[i][j];

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

      /*
       * CLose file
       */
      fIn.close();
  }
  catch (exception &e)
  {
      printf("\r\n*****TEST BENCH FAILED!!*****\r\n");
      printf("\r\nError reading Input data file:\r\n%s\r\n",e.what());
      return(1);
  }


  /*
   * Target data
   *
   * Load the target outputs of each input sample data
   *
   * Check documentation for more information about file format
   */
  try
  {
      /*
       * Allocate target buffer
       */
      dTarget = new fword_t*[numRow];
      for(i=0; i<numRow; ++i)
	{
	  dTarget[i] = new fword_t[numOut];
	}

      /*
       * Load all data
       */
      for(i=0; i<numRow; ++i)
	{
	  for(j=0; j<numOut; ++j)
	    {
	      fTarget>>dTarget[i][j];
	    }
	}

      /*
       * Close file
       */
      fTarget.close();
  }
  catch (exception &e)
  {
      printf("\r\n*****TEST BENCH FAILED!!*****\r\n");
      printf("\r\nError reading Target configuration file:\r\n%s\r\n",e.what());
      return(1);
  }

  printf("DONE!\r\n");


  /*
   * Codify the inputs data and normalize all of them to 1.
   *
   * Check documentation for more information
   */
  printf("Coding input data...");
  for(i=0; i<numIn; ++i)
    {
      /*
       * Calculate Slope
       */
      fword_t a = (CODEC_MAX-CODEC_MIN)/(maxIn[i]-minIn[i]);

      /*
       * Calculate y-intercept
       */
      fword_t b = CODEC_MIN - a*minIn[i];

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

  printf("DONE!\r\n");

  /*
   * Create the Training instance (It will create an own ANN to be trained)
   */

  printf("Training a new feed-forward Neural Network...");

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
	  mcee+=trainIns.CEE(dIn[i], dTarget[i]);
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
       */
      if(mcee<=thMcee)
	{
	  printf("DONE!\r\n\r\n");
	  printf("Threshold Mean Cross Entropy Error achieved in %i iterations\r\n",
		 ite);
	  printf("Validation MCEE = %f\r\n\r\n",mcee);
	  break;
	}
      if(ite>=maxIte)
	{
	  printf("DONE!\r\n\r\n");
	  printf("WARNING: Threshold Mean Cross Entropy Error not achieved\r\n");
	  printf("Minimum Validation MCEE found at iteration No %i with a value of %f\r\n",
		 minIte, minMcee);
	  printf("Validation MCEE = %f\r\n\r\n", mcee);
	  break;
	}

      /*
       * 4º Step: Update training parameters
       *
       * If the training runs again, update the Learning Rate and Momentum
       */
      trainIns.updateLRandM(mcee,lastMcee);
      lastMcee=mcee;
    }

  /*
   * TESTING PROCESS
   */
  printf("Testing ANN...");
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
       * Add inputs to ANN
       */
      for(j=0; j<numIn; ++j)
	{
	  ANN(4,j,0,0,dIn[i][j]);
	}

      /*
       * Feedforward
       */
      ANN(5,0,0,0,0);

      /*
       * Get Output
       */
      netOut = (int)ANN(7,0,0,0,0);
      /*
       * Check whether the classification has been correctly done
       */
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
    }

  /*
   * Print the test results
   */
  printf("DONE!\r\n\r\nResults:");
  for(i=0; i<numOut; ++i)
    {
      printf("Results of output No %i => Good = %i  Bad = %i (%i)\r\n", i,
	     goodOut[i], badOut[i], goodOut[i]*100/(goodOut[i]+badOut[i]));
    }
  printf("Classification accuracy = %i\r\n", goodOutTotal*100/numRowTest);
  printf("\r\n");



  /*
   * END
   *
   * Free all dynamic memory (the object will be destroyed automatically)
   */
  printf("Ending program...");
  delete[] layerSize;
  delete[] goodOut;
  delete[] badOut;
  for(i=0; i<numRow; ++i)
    {
      delete[] dIn[i];
      delete[] dTarget[i];
    }
  delete[] dIn;
  delete[] dTarget;
  printf("DONE!\r\n");

  /*
   * Test result check
   */
  if(goodOutTotal*100/numRowTest < TEST_ACC)
    {
      printf("\r\n*****TEST BENCH FAILED!!*****\r\n");
      printf("Minimum accuracy percentage not achieved\r\n");
      return(1);
    }
  printf("\r\n*****TEST BENCH PASSED!!*****\r\n");
  return(0);
}




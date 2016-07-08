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

int main(int argc, char *argv[])
{
  /*
   * Local variables
   */
#ifdef TRAINING_MODE
  int reTrain = 0, numRow;
  double **trainMat, sqerr;
  fstream fTrain;
#else
  fstream fInput, fOutput;
  int numIn, numOut;
#endif
  fstream fAnn;
  int numLayer, *layerSize, i, j, k, count;
  double ***weight, *input, *output;

#ifdef TRAINING_MODE
  /*
   * Parse main arguments (only training mode)
   */
  if (argc>1 && argv[1]=="-r")
    reTrain=1;
#endif

  /*
   * Print an introduction
   */
  cout<<endl<<"*****ARTIFITIAL NEURONAL NETWORK*****"<<endl;
#ifdef TRAINING_MODE
  cout<<"Back-propagation training for feedforward ANN"<<endl<<endl;
#else
  cout<<"Feedforward ANN"<<endl<<endl;
#endif

  /*
   * Open files
   */
  cout<<"Loading data..."<<endl;
  try
  {
      fAnn.open(ANN_FILE_DIR, fstream::in);
      fAnn.seekg(0, ios::beg);
#ifdef TRAINING_MODE
      fTrain.open(TRAIN_FILE_DIR, fstream::in);
      fTrain.seekg(0, ios::beg);
#else
      fInput.open(IN_FILE_DIR, fstream::in);
      fInput.seekg(0, ios::beg);
      fOutput.open(OUT_FILE_DIR, fstream::out);
      fOutput.seekg(0, ios::beg);
#endif
  }
  catch (exception e)
  {
      cerr<<"Error opening file:"<<endl;
      cerr<<e.what()<<endl<<endl;
      return 1;
  }

  /*
   *
   * LOAD DATA
   * *********
   *
   * from the files. Allocate memory before copy them.
   * Close files after doing it.
   */
  try
  {
      /*
       * Load Number of ANN layers
       */
      fAnn>>numLayer;

      /*
       * Load ANN Layers sizes
       */
      layerSize = new int[numLayer];

      for (i=0; i<numLayer; ++i)
	fAnn>>layerSize[i];

      /*
       * Load weights matrix (Not required for new ANN training)
       */
#ifdef TRAINING_MODE
      if(reTrain)
	{
#endif
	  weight = new double**[numLayer];
	  for (i=1; i<numLayer; ++i)
	    weight[i] = new double*[layerSize[i]];
	  for (i=1; i<numLayer; ++i)
	    for (j=0; j<layerSize[i]; ++j)
	      weight[i][j] = new double[layerSize[i-1]+1];

	  for (i=1; i<numLayer; ++i)
	    for (j=0; j<layerSize[i]; ++j)
	      for (k=0; k<layerSize[i-1]+1; ++k)
		fAnn>>weight[i][j][k];
#ifdef TRAINING_MODE
	}
      /*
       * Load Training matrix (only in training mode)
       */
      fTrain>>numRow;

      trainMat = new double*[numRow];
      for(i=0; i<numRow; ++i)
	trainMat[i] = new double[layerSize[0]+layerSize[numLayer-1]];

      for(i=1; i<numRow; ++i)
	for(j=0; j<layerSize[0]+layerSize[numLayer-1]; ++j)
	  fTrain>>trainMat[i][j];

      /*
       * END of loading data. Close training and ANN files.
       */
      fTrain.close();
#endif
      fAnn.close();
  }
  catch (exception e)
  {
      cerr<<"Error reading file:"<<endl;
      cerr<<e.what()<<endl<<endl;
      return 1;
  }

  /*
   *
   * TRAINING
   * ********
   *
   * (only in training mode)
   */
#ifdef TRAINING_MODE
  /*
   * Create training instance
   */
  cout<<"Training..."<<endl;
  Training train(numLayer, layerSize, TRAIN_MOMENTUM, TRAIN_LEARN_RATE);

  /*
   * Free memory
   */
  if(reTrain)
    {
      for(i=1; i<numLayer; ++i)
	for(j=0; j<layerSize[i]; ++j)
	  delete[] weight[i][j];
      for(i=1; i<numLayer; ++i)
	delete[] weight[i];
      delete[] weight;
    }

  delete[] layerSize;

  /*
   * training...
   */
  sqerr = train.backpropagation(trainMat, numRow, TRAIN_MAX_INTER,
                                TRAIN_MAX_SQR_ERR);
  /*
   * Print the result
   */
  cout<<"OK! error = "<<sqerr<<endl<<"Saving to file..."<<endl;

  /*
   * Reopen ANN file and update it with the new one
   */
  try
  {
      fAnn.open(ANN_FILE_DIR, fstream::out | fstream::trunc);
      fAnn.seekg(0, ios::beg);

      fAnn<<train.getNumLayer();

      for (i=0; i<numLayer; ++i)
	fAnn<<train.getLayerSize(i);

      for (i=1; i<numLayer; ++i)
	for (j=0; j<layerSize[i]; ++j)
	  for (k=0; k<layerSize[i-1]+1; ++k)
	    fAnn<<train.getWeight(i, j, k);

      fAnn.close();
  }
  catch(exception e)
  {
      cerr<<"Error writing ANN file:"<<endl;
      cerr<<e.what()<<endl<<endl;
      return 1;
  }


#else

  /*
   *
   * ANN PROCESSING
   * **************
   *
   * Create ANN instance
   */
  cout<<"Creating ANN..."<<endl;

  ANN ann(numLayer, layerSize, weight);

  /*
   * Free memory
   */
  for(i=1; i<numLayer; ++i)
    for(j=0; j<layerSize[i]; ++j)
      delete[] weight[i][j];
  for(i=1; i<numLayer; ++i)
    delete[] weight[i];
  delete[] weight;

  delete[] layerSize;

  /*
   * Prepare the process
   */
  numOut = ann.getNumOut();
  numIn = ann.getNumIn();

  input = new double[numIn];
  output = new double[numOut];

  /*
   * Process all the input data and print the output.
   */
  count=0;
  while(!fInput.eof())
    {
      ++count;
      cout<<"Entry No "<<count<<":"<<endl;
      fOutput<<"Entry No "<<count<<":"<<endl;
      for (i=0; i<numIn; ++i)
	fInput>>input[i];

      output = ann.feedforward(input);

      for (i=0; i<numIn; ++i)
	{
	  cout<<output[i]<<endl;
	  fOutput<<output[i]<<endl;
	}

      cout<<endl;
      fOutput<<endl;
    }

  /*
   * End the program
   */
  try
  {
      fOutput.close();
      fInput.close();
  }
  catch (string msg)
  {
      cerr<<"Error closing the files: "<<msg<<endl<<endl;
      return 1;
  }
  delete[] input;
  delete[] output;
#endif
  cout<<"DONE!"<<endl;

  return 0;
}

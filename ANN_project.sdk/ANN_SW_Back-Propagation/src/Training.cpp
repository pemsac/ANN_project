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
 * Back-propagation training for feedforward ANN
 * Source file
 *
 *
 */

#include "Training.h"



Training::Training ()
{
  /*
   * Empty
   */
}



Training::Training(int numLayer, int *layerSize, double momentum,
                   double learnRate)
{
  int i, j, k;
  double ***weight;
  /*
   * Memory allocation.
   * Take into account the first layer's neurons (input) don't have neither
   * weights nor delta error
   */
  _deltaErr = new double*[numLayer];
  for(i=1; i<numLayer; ++i)
    _deltaErr[i] = new double[layerSize[i]];

  weight = new double**[numLayer];
  for(i=1; i<numLayer; ++i)
    weight[i]=new double*[layerSize[i]];
  for(i=1; i<numLayer; ++i)
    for(j=0; j<layerSize[i]; ++j)
      weight[i][j] = new double[layerSize[i-1]+1];

  _prevWeight = new double**[numLayer];
  for(i=1; i<numLayer; ++i)
    _prevWeight[i]=new double*[layerSize[i]];
  for(i=1; i<numLayer; ++i)
    for(j=0; j<layerSize[i]; ++j)
      _prevWeight[i][j] = new double[layerSize[i-1]+1];

  /*
   * Save random weights in the matrix
   */
  for(i=1; i<numLayer; ++i)
    for(j=0; j<layerSize[i]; ++j)
      for(k=0; k<layerSize[i-1]+1; ++k)
	weight[i][j][k] = (double)(rand())/(RAND_MAX/2) - 1;

  /*
   * Previous weights initialization
   */
  for(i=1; i<numLayer; ++i)
    for(j=0; j<layerSize[i]; ++j)
      for(k=0; k<layerSize[i-1]+1; ++k)
	_prevWeight[i][j][k] = 0;

  /*
   * Data copy and untrained ANN creation.
   */
  _learnRate = learnRate;

  _momentum = momentum;

  _ann = ANN(numLayer, layerSize, weight);
}



Training::Training(int numLayer, int *layerSize, double ***weight,
                   double momentum, double learnRate)
{
  int i, j, k;
  /*
   * Memory allocation.
   * Take into account the first layer's neurons (input) don't have neither
   * weights nor delta error
   */
  _deltaErr = new double*[numLayer];
  for(i=1; i<numLayer; ++i)
    _deltaErr[i] = new double[layerSize[i]];

  _prevWeight = new double**[numLayer];
  for(i=1; i<numLayer; ++i)
    _prevWeight[i]=new double*[layerSize[i]];
  for(i=1; i<numLayer; ++i)
    for(j=0; j<layerSize[i]; ++j)
      _prevWeight[i][j] = new double[layerSize[i-1]+1];

  /*
   * Previous weights initialization
   */
  for(i=1; i<numLayer; ++i)
    for(j=0; j<layerSize[i]; ++j)
      for(k=0; k<layerSize[i-1]+1; ++k)
	_prevWeight[i][j][k] = 0;

  /*
   * Data copy and untrained ANN creation.
   */
  _learnRate = learnRate;

  _momentum = momentum;

  _ann = ANN(numLayer, layerSize, weight);
}



Training::~Training ()
{
  int i, j;
  /*
   * Free all dynamic memory
   */
  for(i=1; i<_ann.getNumLayer(); ++i)
    for(j=0; j<_ann.getLayerSize(i); ++j)
      delete[] _prevWeight[i][j];
  for(i=1; i<_ann.getNumLayer(); ++i)
    delete[] _prevWeight[i];
  delete[] _prevWeight;

  for(i=1; i<_ann.getNumLayer(); ++i)
    delete[] _deltaErr[i];
  delete[] _deltaErr;

  delete &_ann;
}



double Training::backpropagation(double **trainMat, int numInputs,
                                 int maxRepeat, int minSquareErr)
{
  double sum;
  int i, j, k, q;
  /*
   * Control the number of repeats made
   */
  for ( i=0; i<maxRepeat; ++i){
      /*
       * Process with the current ANN the next input array.
       */
      _ann.feedforward(trainMat[i%numInputs]);

      /*
       * Get OUTPUT LAYER's DELTA ERRORS:
       */
      for(j=0; j<_ann.getLayerSize(_ann.getNumLayer()-1); ++j){
	  /*
	   * Output Delta Error = Result * (1 - Result) * (Real Result - Result)
	   */
	  _deltaErr[_ann.getNumLayer()-1][j] =
	      _ann.getResult(j) *
	      (1 - _ann.getResult(j)) *
	      (trainMat[i%numInputs][_ann.getLayerSize(0)+j] - _ann.getResult(j));
      }
      /*
       * Get HIDDEN LAYER's DELTA ERRORS:
       *
       * From the last layer...
       */
      for(j=_ann.getNumLayer()-2; j>0; --j){
	  for(k=0; k<_ann.getLayerSize(j); ++k){
	      /*
	       *  summatory of (delta errors)*(weight) of the next layer
	       */
	      sum=0.0;
	      for(q=0; q<_ann.getLayerSize(j+1); ++q){
		  sum += _deltaErr[j+1][q] * _ann.getWeight(j+1, q, k);
	      }
	      /*
	       * delta error = output * (1 - output) * summatory
	       */
	      _deltaErr[j][k] = _ann.getOutput(j, k) * (1 - _ann.getOutput(j, k)) * sum;

	      /*
	       * ME HE KEDADO AKIIII
	       */
	  }
      }

      bp->bpgt(data[i%8], &data[i%8][3]);

      if( bp->mse(&data[i%8][3]) < Thresh) {
	  cout<<"Network Trained. Threshold value achieved in "<<i<<" iterations."<<endl;
	  cout<<"MSE:  "<<bp->mse(&data[i%8][3])<<endl;
	  break;
      }
      if ( i%(num_iter/10) == 0 )
	cout<<"MSE:  "<<bp->mse(&data[i%8][3])<<" ... Training..."<<endl;
  }
}


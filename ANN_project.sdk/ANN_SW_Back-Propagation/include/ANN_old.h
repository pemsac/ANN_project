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
 * Back-propagation trainer for feedforward ANN
 * Header file
 *
 *
 */

/*
 * Header guard
 */
#ifdef ANN_h
#define ANN_h

/*
 * Feedforward ANN class.
 */
class ANN{
  /*
   * Private variables
   */
private:
  double **ouputs, **deltaError, ***weights, learningRate, momentum;
  int numLayers;

  int *sizeLayers;


  double ***prevWeight;

  double sigmoid(double in);

public:

  ~ANN();

  //	initializes and allocates memory
  ANN(int nl,int *sz,double b,double a);

  //	backpropogates error for one set of input
  void bpgt(double *in,double *tgt);

  //	feed forwards activations for one set of inputs
  void ffwd(double *in);

  //	returns mean square error of the net
  double mse(double *tgt) const;

  //	returns i'th output of the net
  double Out(int i) const;
};

#endif

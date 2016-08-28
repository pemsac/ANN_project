/**
 *
 * Carlos III University of Madrid.
 *
 * Master Final Thesis: Heartbeat classifier based on ANN (Artificial Neural
 * Network).
 *
 * Hardware implementation in High Level Synthesis (HLS) and Vivado IP
 * Integrator for Zybo platform (Zynq-7000 APSoC, xc7z010clg400-1 Part)
 *
 * Author: Pedro Marcos Solórzano
 * Tutor: Luis Mengibar Pozo (Tutor)
 *
 *
 * Sigmoid activation function for HLS implementation.
 *
 * Source file
 *
 *
 */

#include "sigmoid.h"



void sigmoid(bool conf, const data_t num, data_t *out)
{
  if(conf)
    {
      if(test_var)
	{
	  delete test_var;
	}
      test_var = new data_t[3];
    }
  // return 1/(1+exp(-num));
  test_var[0]+=num;
  test_var[1]+=num*2;
  test_var[2]+=num*3;

  out[0] = test_var[0];
  out[1] = test_var[1];
  out[2] = test_var[2];

}

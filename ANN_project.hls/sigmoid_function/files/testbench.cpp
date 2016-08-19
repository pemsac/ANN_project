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
 * Testbench for HLS implemented Sigmoid function
 *
 * Source file
 *
 *
 */

#include "testbench.h"
int main (void)
{
  /*
   * Check the correct results of the sigmoid function from software and
   * hardware simulated
   */
//  if (test(0))
//    {
//      return 1;
//    }
//  if (test(-1))
//    {
//      return 1;
//    }
//  if (test(10))
//    {
//      return 1;
//    }
//  if (test(-1.234556789))
//    {
//      return 1;
//    }
//  if (test(100000000000))
//    {
//      return 1;
//    }
//  if (test(-5.987654321))
//    {
//      return 1;
//    }

  data_t *result;
  result = new data_t[3];

  sigmoid(1,10, result);
  cout<<result[0]<<"  "<<result[1]<<"  "<<result[2]<<endl;
  sigmoid(0,1, result);
  cout<<result[0]<<"  "<<result[1]<<"  "<<result[2]<<endl;
  sigmoid(0,5, result);
  cout<<result[0]<<"  "<<result[1]<<"  "<<result[2]<<endl;
  sigmoid(1,3, result);
  cout<<result[0]<<"  "<<result[1]<<"  "<<result[2]<<endl;

  /*
   * If all test passed, return 0
   */
  return 0;
}

//int test(const data_t num)
//{
//  data_t smoidHW, smoidSW;
//  /*
//   * Get the sigmoid values from software and hardware simulated.
//   */
//  smoidSW = 1/(1+exp(-num));
//  smoidHW = sigmoid(num);
//
//  /*
//   * Check the results
//   */
//  if(smoidHW != smoidSW)
//    {
//      cerr<<"Error! Sigmoid("<<num<<") = "<<smoidSW<<" (SW) != "
//	  <<smoidHW<<" (HW)"<<endl;
//      return 1;
//    }
//
//  /*
//   * If they are correct...
//   */
//  cout<<"Sigmoid("<<num<<") OK"<<endl;
//  return 0;
//}

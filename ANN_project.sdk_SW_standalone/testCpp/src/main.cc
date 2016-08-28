/*
 * Empty C++ Application
 */
#include <iostream>
#include "xtime_l.h"
using namespace std;
int main()
{
  XTime time1, time2;
  int count=1;

  XTime_GetTime(&time1);
  while(1)
    {
      XTime_GetTime(&time2);
      if((time2-time1)>(COUNTS_PER_SECOND*count))
	{
	  cout<<count<<" segundos"<<endl;
	  count++;
	}
    }

  return 0;
}

/*
 * Empty C++ Application
 */
#include <iostream>
#include <ctime>
#include <stdio.h>
#include <xil_printf.h>
using namespace std;
int main()
{
	clock_t time1, time2;
	int count=1;

	time1 = clock();
	while(1)
	{
		time2 = clock();
		if(time2-time1>CLOCKS_PER_SEC*count)
		{
			cout<<count<<" segundos"<<endl;
			count++;
		}
	}

	return 0;
}

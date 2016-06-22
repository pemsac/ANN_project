/*
 * Empty C++ Application
 */

#include <iostream>
#include <fstream>
#include "ff.h"

using namespace std;

int main()
{
  FATFS fileSystem;
  FRESULT fStatus;
  char num1[10];

  fStatus = f_mount(&fileSystem, "0:/", 0);
  if (fStatus != FR_OK)
    {
      cerr<<"ERROR"<<endl;
      return 0;
    }

  ifstream file;
  file.open("test.txt");

  if (!file)
    cout << "error opening file" << endl;
  else
    {
      cout << "Hello world" << endl;
      file >> num1;
      cout << num1 << endl;
    }

  return 0;
}

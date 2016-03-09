// reading a text file
#include <iostream>
#include <fstream>
#include <string>

#include "mapContacts.h"

using namespace std;

int main () {
  string line;
  ifstream myfile ("sample.adi");
  if (myfile.is_open())
  {
    while ( getline (myfile,line) )
    {
      cout << line << '\n';
    }
    myfile.close();
  }

  else cout << "Unable to open file"; 

  return 0;
}
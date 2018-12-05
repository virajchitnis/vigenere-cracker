/* Author: Viraj R Chitnis
 * Date: 05/12/18
 * Copyright (c) 2018 Viraj Chitnis. All Rights Reserved.
 */

#include <iostream>
#include <fstream>
#include <string>

using namespace std;

int main(int argc, char** argv) {
  string file_name;
  if (argc <= 1) {
    cout << "Enter file name> ";
    cin >> file_name;
  }
  else {
    file_name = argv[1];
  }

  ifstream infile;
	infile.open(file_name);
  string message;
  while(!infile.eof()) {
    getline(infile, message);
    cout << message;
  }
	infile.close();

  return 0;
}

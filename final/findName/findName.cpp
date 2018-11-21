/*
Justin Baum
Final Project
November 21 2018
O'Keefe
*/

// https://www.geeksforgeeks.org/command-line-arguments-in-c-cpp/ Used this mostly
#include <string>
#include <iostream>
#include <cstdlib>
using namespace std;

int main(int argc, char *argv[]) {
	string args = "";
	for(int i = 1; i < argc; i++) {
		args += " ";
		args += argv[i];
	}
	string command = "./findName.sh" + args + "\0";
	system(command.c_str());
	return 0;
}

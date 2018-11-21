CC=gcc
CXX=g++

findName: findName.o
	g++ -g findName.o -o findName

findName.o: findName.cpp
	g++ -c -g findName.cpp

clean:
	rm -f findName *.o


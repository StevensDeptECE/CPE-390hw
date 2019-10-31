CXX	:= g++ -std=c++11 -g -O2 # debugging and optimization on

hw3:  hw3.o add.o
	$(CXX) hw3.o add.o -o hw3  #link the two .o files together into a program
hw3.o: hw3.cc
	$(CXX) -c hw3.cc   # compile only
	$(CXX) -S hw3.cc   # generate assembler hw1.s for you to read

add.o: add.s
	$(CXX) add.s

clean:
	rm *.o hw3


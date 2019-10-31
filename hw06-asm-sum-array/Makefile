CXX	:= g++ -std=c++11 -g -O2 # debugging and optimization on

hw6:  hw6.o add.o
	$(CXX) hw6.o add.o -o hw6  #link the two .o files together into a program
hw6.o: hw6.cc
	$(CXX) -c hw6.cc   # compile only
	$(CXX) -S hw6.cc   # generate assembler hw1.s for you to read

add.o: add.s
	$(CXX) add.s

clean:
	rm *.o hw6


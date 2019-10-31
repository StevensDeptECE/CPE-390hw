CXX	:= g++ -std=c++11 -g -O2 # debugging and optimization on

all: hw3setup hw3

hw3setup: hw3.o cppadd128.o
	$(CXX) hw3.o cppadd128.o -o hw3setup

# the homework is to write add128.s to add two 128 bit numbers
hw3:  hw3.o add128.s
	$(CXX) hw3.o add128.o -o hw3  #link the two .o files together into a program
hw3.o: hw3.cc
	$(CXX) -c hw3.cc   # compile only
	$(CXX) -S hw3.cc   # generate assembler hw1.s for you to read

cppadd128.o: cppadd128.cc
	$(CXX) -c cppadd128.cc   # compile only
	$(CXX) -S cppadd128.cc   # generate the assembler to look at

add128.o: add128.s
	as add128.s	# run the assembler and generate the .o file

#note: do not delete add.s, that's your source code!
#note: deleting *.exe below is under windows.  On linux you must delete hw2 and hw2setup
clean:
	rm cppadd128.s *.o *.exe hw3 hw3setup


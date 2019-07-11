CXX	:= g++ -std=c++11 -g -O2 # debugging and optimization on

all: hw4

# the homework is to add 5 numbers by calling a function with 5 parameters that are passed on the stack
hw4:  hw4.o add5.o
	$(CXX) hw4.o add5.o -o hw4  #link the two .o files together into a program
hw4.o: hw4.cc
	$(CXX) -c hw4.cc   # compile only
	$(CXX) -S hw4.cc   # generate assembler hw1.s for you to read

add5.o: add5.s
	as add5.s	# run the assembler and generate the .o file

#note: do not delete add.s, that's your source code!
#note: deleting *.exe below is under windows.  On linux you must delete hw2 and hw2setup
clean:
	rm hw4.s *.o *.exe hw4


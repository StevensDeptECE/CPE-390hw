CXX	:= g++ -std=c++11 -g -O2 # debugging and optimization on

all: hw5

# the homework is to add 5 numbers by calling a function with 5 parameters that are passed on the stack
hw5:  hw5.o add5.o
	$(CXX) hw5.o add5.o -o hw5  #link the two .o files together into a program
hw5.o: hw5.cc
	$(CXX) -c hw5.cc   # compile only
	$(CXX) -S hw5.cc   # generate assembler hw1.s for you to read

add5.o: add5.s
	as add5.s	# run the assembler and generate the .o file

#note: do not delete add.s, that's your source code!
#note: deleting *.exe below is under windows.  On linux you must delete hw2 and hw2setup
clean:
	rm hw5.s *.o *.exe hw5


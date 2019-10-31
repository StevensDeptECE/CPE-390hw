CXX	:=	g++ --std=c++11 -g -O2
all: hw4setup hw4

# build the code with just C++ so you can see what the code should look like
# you can make your assembler code faster though
hw4setup: hw4.cc cppadd.cc
	 $(CXX) hw4.cc cppadd.cc -o hw4setup

hw4:  hw4.cc add.s
	$(CXX) hw4.cc add.s -o hw4  #link the two .o files together into a program

clean:
	rm hw4 hw4setup *.o

CXX	:= g++ -std=c++11 -g -O2 # debugging and optimization on

all: hw4setup hw4

hw4setup: hw4.o cppdotproduct.o
	$(CXX) hw4.o cppdotproduct.o -o hw4setup

# Your homework is to calculate the dot product of two double precision 3d vectors
hw4:  hw4.o dotproduct.s
	$(CXX) hw4.o dotproduct.o -o hw4
clean:
	rm cppdotproduct.s *.o *.exe hw4 hw4setup


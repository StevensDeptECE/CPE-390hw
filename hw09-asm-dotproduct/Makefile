CXX	:= g++ -std=c++11 -g -O2 # debugging and optimization on

all: hw9setup hw9

hw9setup: hw9.cc cppdotproduct.cc
	$(CXX) hw9.cc cppdotproduct.cc o hw9setup

# Your homework is to calculate the dot product of two double precision 3d vectors
hw9:  hw9.cc dotproduct.s
	$(CXX) hw9.cc dotproduct.s -o hw9

clean:
	rm cppdotproduct.s *.o *.exe hw9 hw9setup


CXX	:=	g++ -g -std=C++11

hw2: main.o funcs.o
	$(CXX) main.o funcs.o -o hw2

main.o: main.cc
	$(CXX) -c $<

funcs.o: funcs.cc
	$(CXX) -c $<

#include <iostream>
#include <vector>

using namespace std;

vector<int*> mylistofpointers;

void addMeToList(int n) {
	mylistofpointers.push_back(&n); // add a pointer to the number every time
}

uint64_t sum(uint32_t n) {
	uint64_t* p = new uint64_t[n]; // allocate a chunk of memory
	for (uint32_t i = 0; i < n; i++)
		p[i] = i+1; // fill the memory with numbers
	uint64_t sum = 0;
	for (uint32_t i = 0; i < n; i++)
		sum += p[i]; // sum it up just as an example
	return sum; // return the answer
}

int main() {
	// first try to build a list of the numbers
	for (int i = 0; i < 10; i++)
		addMeToList(i);

	for (int i = 0; i < mylistofpointers.size(); i++)
		cout << *mylistofpointers[i] << ' '; // print each number?

	//	constexpr uint32_t big = 1000000000;
	//	for (uint32_t trials = 0; trials < 100; trials++)
	//	cout << sum(big) << '\n';
}
	

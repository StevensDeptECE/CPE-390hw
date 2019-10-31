#include "BigNum.hh"

using namespace std;

int main() {
	BigNum b1(3); // 0 0 0 3
	BigNum b2(5); // 0 0 0 5
	BigNum b3;
	add128(b3, b1, b2); // b3 = b1 + b2
	/* should add:
		 b1 0 0 0 3
     b2 0 0 0 5
     b3 0 0 0 8
	 */
	cout << b3 << '\n'; // print out the answer!!

	const uint32_t ULONG_MAX = 4294967295;
	BigNum b5(ULONG_MAX);
	BigNum b6(1);
	BigNum b7;
	add128(b7, b5, b6);
	/* should add:
		 b5 0 0 0 4294967295
     b6 0 0 0 1
     b7 0 0 1 0
	 */
	cout << b7 << '\n'; // print out the answer!! 0,0,1,0
}

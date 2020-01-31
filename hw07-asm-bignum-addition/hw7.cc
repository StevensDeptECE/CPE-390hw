#include <iostream>
#include <cstdint>
using namespace std;

void add128(uint32_t c[4], uint32_t a[4], uint32_t b[4]);
void print(uint32_t x[4]) {
  cout << x[0] << ' ' << x[1] << ' ' << x[2] << ' ' << x[3] << '\n';
}
int main() {
	uint32_t b1[4] = {0, 0, 0, 3};
	uint32_t b2[4] = {0, 0, 0, 5};
	uint32_t b3[4];
	//	BigNum b1(3); // 0 0 0 3
	//	BigNum b2(5); // 0 0 0 5
	//	BigNum b3;
	add128(b3, b1, b2); // b3 = b1 + b2
	/* should add:
		 b1 0 0 0 3
     b2 0 0 0 5
     b3 0 0 0 8

		 load [r1, #12]  <-- this is the 3
     load [r2, #12]  <-- 5
		 add them    (adds)
		 store here [r0, #12]  <-- this is where the answer goes
		 
[rx, #8]
		 next one, same thing, but add with carry adcs

	 */
	print(b3); // print out the answer!!

	uint32_t b4[] = {0,0,0, ULONG_MAX};
	uint32_t b5[] = {0,0,0, 1};
	uint32_t b6[4]; // {0,0,1,0}
	add128(b6, b4, b5); // b7 = b4 + b5
	print(b6);

	
#if 0
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
	#endif
}

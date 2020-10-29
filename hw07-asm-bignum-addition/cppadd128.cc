#include "BigNum.hh"

void add128(uint32_t dest[], const uint32_t a[], const uint32_t b[]) {
	dest[3] = a[3] + b[3];
	dest[2] = a[2] + b[2];
	dest[1] = a[1] + b[1];
	dest[0] = a[0] + b[0];
}

#if 0
BigNum operator + (const BigNum& left, const BigNum& right) {
  BigNum ans;
	ans.d = left.d + right.d; // look up how to do carry ARM   ADD WITH CARRY ADC
	ans.c = left.c + right.c;// + carry;
	ans.b = left.b + right.b;// + carry;
	ans.a = left.a + right.a;// + carry;
	return ans;
}
#endif

#include <iostream>
using namespace std;

int highestPowerGreaterThan(int n) {
	n = n | (n >> 16) | (n >> 8) | (n >> 4) | (n >> 2) | (n >> 1);
	return n+1;
}

int pow2(int n);

int fastpow(int n);

int main() {
	int n;
	cin >> n;
	cout << highestPowerGreaterThan(n) << '\n';

	cout << pow2(n) << '\n';
	cout << fastpow(n) << '\n';
	return 0;
}

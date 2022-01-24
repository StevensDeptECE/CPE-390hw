#include <iostream>
/*
  Find and correct the bugs in this program so the recursion works

*/

double fact(int n) {
	if (n <= 0)
		return 1;
	return fact(n-1);
}

// Fibonacci should be 1 1 2 3 5 8 13 21 34 55 89 ...
// fibo(1) = 1, fibo(2) = 1, fibo(3) = 2, fibo(3) = 3, fibo(4) = 5, ...
int fibo(int n) {
	if (n < 2)
		return 1;
	return fibo(n-1) + fibo(n-2);
}

int main() {
	for (int i = 0; i < 25; i++)
		cout << "fact(" << i << ")=" << fact(i) << '\n';
	cout << "\n\n";
	for (int i = 1; i < 25; i++)
		cout << "fibo(" << i << ")=" << fibo(i) << '\n';
	cout << "\n\n";

	return 0;
}

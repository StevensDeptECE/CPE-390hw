#include <iostream>
using namespace std;

double mean(const double a[], int n);

int main() {
	double x[] = {1.0, 2.5, 3.0, 4.5};
	cout << mean(x, 4) << '\n';
	return 0;
}

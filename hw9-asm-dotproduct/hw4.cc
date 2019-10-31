#include <iostream>
using namespace std;

extern double dotproduct(double a[], double b[]);
int main() {
	double a[] = {1.0, 2.0, 3.0};
	double b[] = {2.5, 3.2,-1.0};
	//calculate a dot b = 1.0*2.5 + 2.0*3.2+ 3.0*-1.0 should be: 5.9
	cout << dotproduct(a,b) << '\n';
}

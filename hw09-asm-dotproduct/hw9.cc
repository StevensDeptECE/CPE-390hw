#include <iostream>
using namespace std;

extern double dot(double a[], double b[]);
int main() {
	//            r0      r0+8    r0+16
	double a[] = {1.0,    2.0,    3.0};

	//            r1      r1+8    r1+16
	double b[] = {2.5,    3.2,   -1.0};
	//calculate a dot b = 1.0*2.5 + 2.0*3.2+ 3.0*-1.0 should be: 5.9
	cout << dot(a,b) << '\n';
}

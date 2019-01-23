#include <iostream>
using namespace std;
#include "Vec3d.hh"

int main() {
	Vec3d a(1.0,2.0,3.0);
	Vec3d b(-1.5,2.0,1.5);
	cout << a + b << '\n';     //
	cout << a.magSq() << '\n';
	cout << a.mag() << '\n';
}

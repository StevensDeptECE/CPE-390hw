#include <iostream>
using namespace std;

class Fraction {

};

// complete the class Fraction above so that the main below works
int main() {
	Fraction a(1,2); // num = 1, den = 2
	Fraction b(1,3); // num = 1, den = 3
	Fraction c = a + b; // use operator overloading to make this look built in
	cout << c << '\n'; // print out the fraction
}


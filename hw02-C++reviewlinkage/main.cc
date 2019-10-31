#include "Fraction.hh"

// compute the hypotenuse given the two sides
double hypot(double a, double b);

// compute the average of the two values
double mean(double a, double b);

int main() {
  cout << hypot(3, 4) << '\n';
  cout << hypot(4.0, 5.0) << '\n';
  cout << mean(1.0, 2.0) << '\n';
}

// compute the hypotenuse given the two sides
double hypotenuse(double a, double b);

// compute the average of the two values
double mean(double a, double b);

/* compute the number of combinations of n objects chosen r at a time
  choose(n,r) = n!/(r! (n-r)!)
*/
double choose(int n, int r);

int main() {
  cout << hypotenuse(3, 4) << '\n';
  cout << hypotenuse(4.0, 5.0) << '\n';
  cout << mean(1.0, 2.0) << '\n';
	cout << choose(n,r);
}

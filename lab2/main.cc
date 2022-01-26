int main() {
  cout << "gcd(12, 18)=" << gcd(12, 18) << '\n';
  cout << "gcd(1025, 3025)=" << gcd(1025, 3025) << '\n';
  cout << "isPrime(5)=" << isPrime(9) << '\n';
  cout << "isPrime(9)=" << isPrime(9) << '\n';
  cout << "isPrime(1001)=" << isPrime(1001) << '\n';
	cout << "isPrime(2601)=" << isPrime(9) << '\n';
  cout << "isPrime(1013)=" << isPrime(1001) << '\n';
	
  cout << "countPrimes(1,100): " << countPrimes(1, 100) << '\n';
  cout << "countPrimes(1,10000): " << countPrimes(1, 10000) << '\n';

	collatz(5); // should print out 5 16 8 4 2 1
	collatz(40); // should print out 40 20 10 5 16 8 4 2 1
	collatz(17);
	
  double x[] = {10, 20, 30, 40, 50, 60};
	constexpr int n = sizeof(x)/sizeof(double); 
	cout << mean(x, n) << '\n'; // should print 35

	double y[] = {1.0, 2.0, 3.0, 4.0};
	cout << mean(y, sizeof(y)/sizeof(double)) << '\n'; // should print 2.5

	int a[] = {3, 4, 1, 2, -2};
	cout << prod(a, sizeof(a)/sizeof(int)) << '\n';

	int b[] = {2, 4, 8, -2, -4};
	cout << prod(b, sizeof(b)/sizeof(int)) << '\n';

	demean(x, n); // should subtract the mean from each element
	for (int i = 0; i < n; i++)
		cout << x[i] << ' ';
	cout << '\n';

	int c[] = {1, 2, 3, 4, 5, 6, 7, 8, 9};
  range_reverse(c, 9, 2, 4);

	//you should print out the array c
  for (int i = 0; i < sizeof(c)/sizeof(int); i++)
		cout << c[i] << ' '; // should print 1 2 5 4 3 6 7 8 9
	cout << '\n';
	
	cout << "hypot(3,4)=" << hypot(3, 4) << '\n'; // should print 5
  cout << "hypot(4,5)=" << hypot(4, 5) << '\n';
	cout << "mean(3.0,sqrt(8.0)) = " << mean(3.0,sqrt(8.0)) << '\n';
	
  cout << "mean(1,4)=" << mean(1, 4) << '\n';

  cout << "if sqrt(3**2 +4**2) is a whole number?: " << pythagTriple(3, 4)
       << endl;
  cout << "if sqrt(2**2 +3**2) is a whole number?: " << pythagTriple(2, 3)
       << endl;

  cout << areaOfTriangle(0,0, 10,0, 10,5) << '\n'; // should be approx 25
	cout << areaOfTriangle(0,0, 5,3, 2,6) << '\n';

 return 0;
}

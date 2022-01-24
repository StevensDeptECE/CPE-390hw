/*
	Author:
  cite:
	pledge

 */




/*
	Write a recursive function to solve the 3n+1 problem
	You can use any function name you like.

	The 3n+1 problem starts with a number n
	if n is even, divide by 2, if n is odd, multiply by 3 and add 1.
	Repeat until n=1 and stop.

	Your function should return the number of times it takes to arrive at 1 and print each number along the way.
	for example if we call the function f, f(5) -> f(16) -> f(8) -> f(4) -> f(2) -> f(1), the answer return should be 6

  f(13) ->40 -> 20 -> 10 -> 5 so f(13) = 3 + 6 = 9

	Please change the name f to some more meaningful function name.
*/

int main() {
	int n;
	cout << "please enter n for 3n+1 problem:";
	cin >> n;
	cout << "completed in " << f(n) << " iterations\n";
}

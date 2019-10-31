#include <iostream>
using namespace std;
/*
  write your code up here. Each function implements one call in main.

  


 */



int main() {
  int a[] = {3, 4, 2, 1};
  cout << sum(a, 4) << '\n'; // add up all the elements. This can be does as an int

  // compute the average which is sum / n. The division must be done as floating point (double)
  // Note in this case the average should be 2.5
  cout << mean(a, 4) << '\n';

  // find the biggest element.
  // suggested algorithm: Start with the first, and for each element after, if it is bigger, replace
  cout << max(a, 4) << '\n';

}

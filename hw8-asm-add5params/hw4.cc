#include <iostream>

/* this function has more than 4 parameters so they will be pushed on the stack
 */
extern int add5(int a, int b, int c, int d, int e);

int main() {
  cout << add5(5, 4, 3, 2, 1) << '\n';
}

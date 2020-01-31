#include <iostream>
using namespace std;

void add(int* c, const int* a, const int* b, int n);

int main() {
  const int n = 5;
	int a[n] = {5, 4, 3, 2, 1};
  int b[n] = {3, 2, 1, 5, 9};
  int c[n];
  add(c, a, b, n);
  for (int i = 0; i < n; i++)
    cout << c[i] << '\t';
  cout << '\n';
}

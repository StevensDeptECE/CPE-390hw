/*
        AUTHOR
        CITE
        PLEDGE

        In general, data in objects should be private so no one else can
        touch it or depend on it.  However, for the limited special case of
        math objects, we all know what a 3d vector is (x,y,z), and that
        definition has been stable for a long time and will not change.
        So we can cheat and just make it public which makes it a bit simpler.
        Anyone who wants x,y,z can just ask about them.

 */

#include <iostream>
using namespace std;

class vec3d {
public:
  double x, y, z; // we will cheat and make these public.
  // write constructor, methods add() and mag() and friend operator +
};

// complete the class Fraction above so that the main below works
int main() {
  const vec3d a(1.0, 2.0, 3.0); // x=1,y=2,z=3
  const vec3d b(2.0, -.5, 1.2); // x=2,,y=-.5,z=1.2
  const vec3d c = a.add(b);     // call a method (member function) add
  cout << c << '\n';            // print it out using operator <<
  const vec3d d = a + b; // use operator overloading to make this look built in
  cout << d << '\n';     // both printed values should be the same

  cout << "length=" << a.mag() << '\n';
}

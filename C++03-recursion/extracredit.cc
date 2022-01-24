/*
  AUTHOR
        CITE

        PLEDGE

        Find the bug that crashes this recursive flood fill algorithm

        + 50 points if you do this exercise in addition to the required
  assignment

        + 100 points if you do this using a stack and a loop not recursively

        + 100 if you write an algorithm that is significantly faster by
        pushing whole rows rather than individual pixels or some other
        clever scheme.
*/
#include <iostream>
#define STB_IMAGE_WRITE_IMPLEMENTATION
#include "include/stb_image_write.h"

#define STB_IMAGE_IMPLEMENTATION
#include "include/stb_image.h"

constexpr int width = 64, height = 64; // 64 x 64 bitmap for this exercise
constexpr int black = 0x000000FF, white = 0xFFFFFFFF, red = 0xFF0000FF,
              green = 0x00FF00FF;

/*
  floodfill should start at the x,y location and recursively replace every
  pixel that is the starting color to the replacement color.
  The termination condition is when the pixel you are on is not the background
  color. otherwise, change the color, and then call recursively for neighbors to
  north, south, east and west.

  Unfortunately the stack is limited to 4Mb by
  default, Since each call will require at least 32 bytes (probably more) you
  will run out since you can only get recursion depth of 4Mb/32 or worse of
  each stack frame is bigger.

  The solution to this problem is to make your own stack using the library
  #include <stack>
  https://www.cplusplus.com/reference/stack/stack/stack/

  You should go in a while loop until the stack is empty.
  Start by putting the first point on the stack
  Then every time pull one pixel off the stack, change its color,
  and find whether its neighbors to the north, south, east or west
  are the right color. If they are push them on the stack
  This has the advantage of being significantly faster than recursion.

  If you want to get much more efficient, you could try to not push
  every one on the stack individually. That's a lot more work and more
  complicated, but could be quite a bit faster. One scheme might be to
  try to extend left and right until you find a pixel of a different
  color. The
 */
void floodfill(uint32_t bitmap[height][width], int x, int y,
               uint32_t startcolor, uint32_t replacecolor) {}

int main() {
  uint32_t bitmap[height][width] = {black}; // bitmap starts all black
  for (int i = 10; i < width - 10; i++) {
    bitmap[10][i] = white;
    bitmap[height - 10][i] = white;
  }

  for (int i = 10; i < height - 10; i++) {
    bitmap[i][10] = white;
    bitmap[i][width - 10] = white;
  }

  for (int i = 45; i <= 56; i++)
    for (int j = 49; j <= 55; j++)
      bitmap[i][j] = red;

  for (int i = 5; i <= 15; i++)
    for (int j = 20; j <= 40; j++)
      bitmap[i][j] = red;

  /* replace every black pixel by green until you hit a different color like
           the white border or the red rectangles
  */
  floodfill(bitmap, 30, 40, black, green);
  stbi_write_png("test.png", width, height, 4, bitmap, width * 4);
}

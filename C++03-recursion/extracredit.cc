/*
  AUTHOR
	CITE

	PLEDGE

	Find the bug that crashes this recursive flood fill algorithm

	+ 50 points if you do this exercise in addition to the required assignment

	+100 if you write an algorithm that is significantly faster by
	pushing whole rows rather than individual pixels or some other
	clever scheme.
*/
#include <iostream>
#include "stb_image.h"

constexpr int width = 640, height=480; // 640 x 480 bitmap for this exercise


/*
	floodfill should start at the x,y location and recursively replace every
	pixel that is the starting color to the replacement color.
	The function does this by calling itself recursively for its neighbors to
	north, south, east and west.
	Unfortunately the stack is limited to 4Mb by default,
	Since each call will require at least 32 bytes (probably more)
	you will run out since you can only get recursion depth of 4Mb/32 or
	worse of each stack frame is bigger.

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
							 uint32_t startcolor, uint32_t replacecolor) {
  if (bitmap[y][x] == startcolor) {
		bitmap[y][x] = replacecolor;
		if (x > 0)
			floodfill(bitmap, x-1, y, startcolor, replacecolor);
		if (x < width-1)
			floodfill(bitmap, x+1, y, startcolor, replacecolor);
		if (y > 0)
			floodfill(bitmap, x, y-1, startcolor, replacecolor);
		if (y < height-1)
			floodfill(bitmap, x, y+1, startcolor, replacecolor);
	}
}
							 


int main() {
	constexpr black = 0x0, white = 0xFFFFFF, red = 0xFF0000;
	uint32_t bitmap[height][width] = {black}; // bitmap starts all black
  for (int i = 10; i < width-10; i++) {
		bitmap[10][i] = white;
		bitmap[height-10][i] = white;
	}

	for (int i = 10; i < height-10; i++) {
		bitmap[i][10] = white;
		bitmap[i][width-10] = white;
	}

	for (int i = 60; i <= 90; i++)
		for (int j = 120; i <= 180; j++)
			bitmap[i][j] = red;

	for (int i = 60; i <= 90; i++)
		for (int j = 120; i <= 180; j++)
			bitmap[i][j] = red;

	/* replace every black pixel by green until you hit a different color like
		 the white border or the red rectangles
	*/
	floodfill(bitmap, 30, 40, black, green);
	
}

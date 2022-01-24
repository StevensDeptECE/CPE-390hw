#pragma once

#include <cstdint>

class Bitmap {
private:
  uint32_t w, h;
  uint32_t* pixels;
public:
  Bitmap(uint32_t w, uint32_t h, uint32_t defaultColor) : w(w), h(h), pixels(new uint32_t[w*h]) {
    for (uint32_t i = 0; i < w*h; i++)
      pixels[i] = defaultColor;
  }
  ~Bitmap() {
    delete [] pixels;
  }

  // no copying of bitmap objects is supported
  Bitmap(const Bitmap& orig) = delete;
  Bitmap& operator =(const Bitmap& orig) = delete;

  void write(const char filename[]);
  void read(const char filename[]);

  void horizLine(uint32_t x1, uint32_t x2, uint32_t y, uint32_t color);
  void vertLine(uint32_t y1, uint32_t y2, uint32_t x, uint32_t color);
  
   // use Bresenham algorithm: https://en.wikipedia.org/wiki/Bresenham's_line_algorithm
  void line(uint32_t x1, uint32_t y1, uint32_t x2, uint32_t y2, uint32_t color);

   // use Wu's algorithm: https://en.wikipedia.org/wiki/Xiaolin_Wu%27s_line_algorithm
  void antialiasedLine(uint32_t x1, uint32_t y1, uint32_t x2, uint32_t y2, uint32_t color);

  // this should draw just the edge of the rectangle, 1 pixel wide
  void rect(uint32_t x, uint32_t y, uint32_t w, uint32_t h, uint32_t color);

  // this should fill the rectangle in the desired color
  void fillRect(uint32_t x, uint32_t y, uint32_t w, uint32_t h, uint32_t color);

  // this should combine the edge and the fill above. Do not fill the rectangle then draw the edge on top, make it efficient!
  void rect(uint32_t x, uint32_t y, uint32_t w, uint32_t h, uint32_t strokeColor, uint32_t fillColor);

  // draw the edge of a circle. You do not have to use anti-aliasing
  void circle(uint32_t x, uint32_t y, uint32_t r, uint32_t color);

    // fill a circle.
  void fillCircle(uint32_t x, uint32_t y, uint32_t r, uint32_t color);

  // this should combine the edge and the fill above drawing a circle with fill and edge
  void circle(uint32_t x, uint32_t y, uint32_t r, uint32_t strokeColor, uint32_t fillColor);

  // draw a grid of lines starting at top-left corner (x0,y0) with size (w,h) divided evenly into nx and ny grid boxes
  void grid(uint32_t x0, uint32_t y0, uint32_t w, uint32_t h, uint32_t nx, uint32_t ny);


  // copy a rectangle of dots from another bitmap into the location whose top-left is (dest_x, dest_y)
  void copy(const Bitmap& other, uint32_t x, uint32_t y, uint32_t w, uint32_t h, uint32_t dest_x, uint32_t dest_y);
}
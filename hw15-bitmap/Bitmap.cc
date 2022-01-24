#define STB_IMAGE_WRITE_IMPLEMENTATION
#include "stb_image_write.h"

#define STB_IMAGE_IMPLEMENTATION
#include "stb_image.h"

#include "Bitmap.h"

void Bitmap::write(const char filename[]) {
  stbi_write_png(filename, w, h, 4, pixels, w * 4);
}

void Bitmap::read(const char filename[]) {
  
}
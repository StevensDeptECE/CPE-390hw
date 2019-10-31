#include <iostream>
using namespace std;

void crypt(char* dest, const char* src, uint32_t len, const char* key);

void print(const char msg[], uint32_t len) {
  for (uint32_t i = 0; i < len; i++) {
    if (buffer[i] < 32)
      cout << '^' << (int)buffer[i];
    else
      cout << buffer[i];
  }
}
      
int main() {
  const char* msg = "this is my secret message";
  const int len = sizeof(msg);
  const char* key = "DOV";

  char buffer[256];
  crypt(buffer, msg, len, key); // encrypt or decrypt the msg into buffer
  print(buffer, len);

  crypt(buffer, msg, len, key); // encrypt or decrypt the msg into buffer
}

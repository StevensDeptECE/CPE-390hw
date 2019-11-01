#include <iostream>
using namespace std;

/*
  The Dovcrypt algorithm is simple but not very secure.
  To encrypt or decrypt, xor each byte of the secret message with a byte of the key.
  Each time, advance the index into the key to use the next byte. If you reach the end of the key
  start at the beginning again.

  For example, to encrypt the message:

  hello there

  with the key: Dov

  xor the message below with the letter shown directly below:

  hello there
  DovDovDovDo

  The result will be fairly unreadable to the casual observer.

  To get the original message back, xor the encrypted message in the same way.
 */

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

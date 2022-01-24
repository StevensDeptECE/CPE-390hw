#include <iostream>
using namespace std;

uint8_t checksum(const char msg[]);

//send the checksum and then the string that generated it
void sendMessage(char buffer[], const char msg[]);

//receive a checksum byte, and a message, and verify that the checksum is correct
void recvMessage(const char msg[]);
int main() {
  const char* msg = "ABC"; // checksum = 65 + 66 + 67 = 198
  char buffer[256];
  sendMessage(buffer, msg);  // buffer should contain 198 A B C

  bool status = recvMessage(buffer); // return true if the checksum matches the buffer
  cout << "Message received, status=" << status << " msg=" << buffer + 1 << '\n';

  buffer[0] = 200; // wrong checksum
  buffer[1] = 'T';
  buffer[2] = 'e';
  buffer[3] = 's';
  buffer[4] = 't';
  buffer[5] = '\0';

  status = recvMessage(buffer);
  cout << status << '\n'; // this should print false because the checksum does not match the message
  

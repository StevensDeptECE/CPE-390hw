int main() {
	int answer = setBit(5, 8);
	// take the number 5 000000000000000000000000000000101 and set bit 8 from the right (rightmost bit is position 0)
	//                   000000000000000000000000100000000
	// (use OR)
	//                   000000000000000000000000100000101
	// result should be 256 + 5 = 261
	cout << answer << '\n';

	// for the following tests figure out what the answer should be, make sure your code is right!
	cout << setBit(17, 9) << '\n'; 
	cout << setBit(1, 31) << '\n';

/* Same as above but this time clear the bit. This can be done by anding with the inverse
 */
answer = clearBit(1023, 5);
// 1023 = 00000000000000000000001111111111
// 1 =    00000000000000000000000000000001
// shift left to position 5
//        00000000000000000000000000100000
// invert 11111111111111111111111111011111
// AND    00000000000000000000001111011111
cout << answer << '\n';

// tests
	cout << clearBit(0x000F8F8F, 7) << '\n'; 
	cout << clearBit(0x8A5A5A5A, 31) << '\n';

/*
Note: There is an ARM instruction that combines and and not. 
It is called BIC (bit clear)
*/

	answer = flip(0xF0008000,15); // flip the 15th bit
// start with the number
// 1111 0000 0000 0000 1000 0000 0000 0000
// shift a 1 as usual from the right to the 15th position
// 0000 0000 0000 0000 1000 0000 0000 0000
// this time use XOR. If the bit is 1, then 1 XOR 1 becomes 0
// if the bit is 0, then 0 xor 1 becomes 1
  cout << hex << answer << '\n'; // should be 0xF00000000
  answer = flip(answer,15); // now it should be back to the original
  cout << hex << answer << '\n';


// wipe out the last 3 hex digits of the first number by anding with the second
// then replace with the numbers 0x123
  answer =  replaceBits(0xF0F0A5A5, 0xFFFFF000, 0x123);
  cout << hex << answer << '\n'; // should be 0xF0F0A123


//loop and function practice (C++)

/* choose(n,r) = n! / (r! (n-r)!)
for choose(52, 6) = 52! / (6! 46!)
These numbers are huge so instead of overflowing cancel 46 factorial so that you calculate:
  52 * 51 * 50 * 49 * 48 * 47
  ---------------------------
  6 * 5 * 4 * 3 * 2 * 1

of course, use a loop,  you cannot count on the numbers being 52 and 6
Hint: using a double is still useful in case someone has a big number like
choose(55, 27) which doesn't cancel as much.

 */
cout << dec << choose(52, 6) << '\n';
cout << dec << choose(54, 5) << '\n';
}

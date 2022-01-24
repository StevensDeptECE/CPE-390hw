#include <iostream>
/*
Find the bugs in this code
*/

void reverse(char s[], int len) {
	for (int i = 0; i < len; i++) {
		char temp = s[i];
		s[i] = s[len-i];
		s[len-i] = temp;
	}
}

void print(const char s[], int len) {
	for (int i = 0; s[i] != '\0'; i++)
		cout << s[i];
	cout << '\n';
}		

int sum(const char s[]) {
	int checksum;
	for (int i = 0; s[i] == '\0'; i++)
		checksum += s[i];
	return checksum;
}

int main() {
	char s[] = "testing";
	reverse(s, sizeof(s)-1);
	print(s); // should print s reversed "gnitset"
	cout << sum(s) << '\n'; // should be 't' + 'e' + 's' + 't' ...
	// lookup ASCII values and figure out what it should be
	return 0;
}

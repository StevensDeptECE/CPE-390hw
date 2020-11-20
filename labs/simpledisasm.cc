#include <iostream>
#include <fstream>
using namespace std;

uint32_t getBits(uint32_t val, uint32_t pos, uint32_t size) {
  return (val >> pos) & ((1 << size)-1);
}

const char* conditionCode[16] = {
															"",
															"",
															"",
															"",
															"",
															"",
															"",
															"",
															"",
															"",
															"",
															"",
															"",
															"",
															"",
															""
};

const char* opCodeDataProcessing[16] =
	{
	 "", // 0000
	 "",    // 0001
	 "",    // 0010
	 "",    // 0011
	 "",    // 0100
	 "",    // 0101
	 "",    // 0110
	 "",    // 0111
	 "",    // 1000
	 "",    // 1001
	 "",    // 1010
	 "",    // 1011
	 "",    // 1100
	 "",    // 1101
	 "",    // 1110
	 "",    // 1111
	};

// this function disassembled ARM dataprocessing instructions, and, add, etc.
// that is, when you complete it.
void disasm(uint32_t instr) {
	const uint32_t TODO = 0;
  uint32_t cond = TODO;
	uint32_t opcode = TODO;
	uint32_t rn = TODO;
	uint32_t rd = TODO;
	uint32_t rm = TODO;
	const char sbit[] = ""; // placeholder. You do not have to support s-bit
	cout << opCodeDataProcessing[opcode] << conditionCode[cond] << sbit <<
		"   r" << rd << ", r" << rn << ", " << rm << '\n';	
}


int main() {
	disasm(0xe0010002);
	disasm(0xe1843005);
	disasm(0xa0825007);
	disasm(0x10825007);
}

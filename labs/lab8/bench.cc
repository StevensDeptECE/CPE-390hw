#include <iostream>
#include <iomanip>
#include <cmath>
#include <cstdint>
using namespace std;

void f();

/*
You must write these 5 functions in assembler elsewhere and link them in
*/

// write this in assembler! count from 0 to n-1
uint32_t a1(uint32_t n);

// write this in assembler! count from n down to 0
uint32_t a2(uint32_t n);

// write this in assembler! Read the first element of the array n times
uint32_t readArray(const int a[], int n);

// write this in assembler! Read the entire array of n elements                 
uint32_t readArray(const int a[], int n);
                                                                                
// write this in assembler! Write zero to the entire array of n elements        
uint32_t writeArray(int a[], int n);
                                           


// count up and call function f n times
uint32_t b1(uint32_t n) {
	for (int i = 0; i < n; i++)
		f();
	return 0;
}

// count down and call function f n times
uint32_t b2(uint32_t n) {
	for (; n > 0; n--) {
		f();
	}
	return 0;
}

// compute the sum from 0 to n-1 counting up
uint32_t b3(uint32_t n) {
	uint32_t sum = 0;
	for (int i = 0; i < n; i++)
		sum += i;
	return sum;
}

// compute the sum from 0 to n-1 counting up
uint64_t b3b(uint64_t n) {
	uint64_t sum = 0;
	for (int i = 0; i < n; i++)
		sum += i;
	return sum;
}

// compute the sum from n down to 1 counting down
uint32_t b4(uint32_t n) {
	uint32_t sum = 0;
	for (; n > 0; n--)
		sum += n;
	return sum;
}

// compute the product from 1 to n
uint32_t b5(uint32_t n) {
	uint32_t prod = 1;
	for (int i = 1; i <= n; i++)
		prod *= i;
	return prod;
}

// compute n divisions
uint32_t b6(uint32_t n) {
	uint32_t div = 100200301;
	for (int i = 1; i <= n; i++)
		div /= i;
	return div;
}

// sum n modulo
uint32_t b7(uint32_t n) {
	uint32_t sum = 0;
	for (int i = 1; i <= n; i++)
		sum += i % 100200301;
	return sum;
}


// sum the elements in the array
uint64_t array1(const uint32_t x[], uint32_t n) {
	uint64_t sum = 0;
	for (int i = 0; i < n; i++)
		sum += x[i];
	return sum;
}

// sum the elements in the array backwards
uint64_t array2(uint32_t x[], uint32_t n) {
	uint64_t sum = x[0];
	for (n--; n > 0; n--)
		sum += x[n];
	sum += x[0];
	return sum;
}

/*
  write code to compute sum but not in sequential order
     read x[0], x[2], ... x[n-1]              first sum even elements
     then read x[1], x[3], ... x[n-1]         then sum odd elements

 */
uint64_t array3(uint32_t x[], uint32_t n) {
	uint64_t sum = 0;




  return sum;
}


/*
	write a function that sums in 4 parts
  sum elements x[0], x[4], x[8] ... 
	sum elements x[1], x[5], x[9] ...
	sum elements x[2], x[6], x[10] ...
	sum elements x[3], x[7], x[11] ...
 */
uint64_t array4(uint32_t x[], uint32_t n) {
  uint64_t sum = 0;



  
	return sum;
}

/* 
  same but now 32 different chunks
*/
uint64_t array5(uint32_t x[], uint32_t n) {
  uint64_t sum = 0;
	const uint32_t chunk = 32;
	for (uint32_t i = 0; i < chunk; i++) {
		for (uint32_t j = i; j < n; j += chunk)
      sum += x[j];
	}
	return sum;
}

/* 
  same but now 1024 different chunks
  doing it in separate parts should still be a very small percentage 
	of the effort
	for 40 million elements, there are approximately 40k elements in each group
	So if this is a lot slower, it's not because of the nested loop
*/
uint64_t array6(uint32_t x[], uint32_t n) {
  uint64_t sum = 0;
	const uint32_t chunk = 1024;
	for (uint32_t i = 0; i < chunk; i++) {
		for (uint32_t j = i; j < n; j += chunk)
			sum += x[j];
	}
	return sum;
}

// write zeros into an array
uint64_t array7(uint32_t x[], uint32_t n) {
	for (int i = 0; i < n; i++)
		x[i] = 0;
	return 0;
}

// write zeros backwards
uint64_t array8(uint32_t x[], uint32_t n) {
	for (n-1 ; n > 0; n--)
		x[n] = 0;
	x[0] = 0;
	return 0;
}


/*
	write a function that sets elements x[0], x[2], x[4] ... = 0
	then goes back and sets the odd elements x[1], x[3], x[5] .. = 0
	compare the speed of sequential access to the speed of writing out of order
*/
uint64_t array9(uint32_t x[], uint32_t n) {

  
	return 0;
}



// benchmark  function with an integer parameter n times. Execute 5 trials
template<typename Func>
void benchmark1(const char msg[], Func f, uint32_t n) {
	for (uint32_t trials = 0; trials < 5; trials++) {
		clock_t t0 = clock();
		uint64_t res = f(n);
		clock_t t1 = clock();
		cout << setw(12) << msg << setw(18) << res << '\t' << (t1-t0) << '\n';
	}
}

/*
 Execute an array function n times, and repeat numTrials times because on the
 Raspberry pi we can't write enough memory.
 Do the same test on the PC so you can compare between the two meaningfully
*/
template<typename Func>
void benchmark2(const char msg[], Func f, uint32_t n, uint32_t numTrials) {
	uint32_t* p = new uint32_t[n]; // allocate a big chunk of memory
	for (int i =  0; i < n; i++) // fill the array with values
		p[i] = i;
	clock_t t0 = clock();
	uint32_t res = 0;
	for (uint32_t trials = 0; trials < numTrials; trials++) {
		res += f(p, n); // force the optimizer to do the work
	}
	clock_t t1 = clock();
	cout << setw(12) << msg << setw(18) << res << '\t' << (t1-t0) << '\n';
	delete [] p;
}

int main() {
	/*
		Note: you might have to make n bigger on the PC for accuracy
		because it's faster	than the Raspberry pi
	*/
	const uint32_t n = 100000000; // 100 million
                                                                             
  /*                                                                            
    to benchmark your loop functions, uncomment the code below                  
   */
	
  // benchmark1("a1", a1, n);                                                  
  // benchmark1("a2", a2, n);                                                  
	benchmark1("b1", b1, n);
	benchmark1("b2", b2, n);
	benchmark1("b3", b3, n);
	benchmark1("b3b", b3b, n);
	benchmark1("b4", b4, n);
	benchmark1("b5", b5, n);
	benchmark1("b6", b6, n);
	benchmark1("b7", b7, n);


	// this is the size for array problems on the pi
	const uint32_t narray = 40000000; // 40 million

	 // this should take enough time ( a couple of seconds)
	// to get meaningful results on on the pi. You might need more on PC
	const uint32_t numTrials = 100;
	// benchmark2("readOneLocation", readOneLocation, narray, numTrials);              	// benchmark2("readArray", readArray, narray, numTrials);                        // benchmark("writeArray", writeArray, array, numTrials);

	benchmark2("array1", array1, narray, numTrials);
	benchmark2("array2", array2, narray, numTrials);

	// YOU MUST COMPLETE array3, it is not finished!
	//	benchmark2("array3", array3, narray, numTrials);


	
	// these are for later
	//	benchmark2("array4", array4, narray, numTrials);
	//	benchmark2("array5", array5, narray, numTrials);
	//	benchmark2("array6", array6, narray, numTrials);
}

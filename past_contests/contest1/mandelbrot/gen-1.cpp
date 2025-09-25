#include "testlib.h"
#include <iostream>

using namespace std;

int main(int argc, char *argv[]) {
	registerGen(argc, argv, 1);

	/* Read number from command line. */
	int n = opt<int>(1);
	long long zc_range = opt<int>(2);

	cout << n << endl;

	for (int i = 0; i < n; i++){
		// keeps 
		long long z = rnd.next(1LL, zc_range);
		long long c = rnd.next(1LL, zc_range);

		long long result = z;
		long long max_iterations = 0;

		while(result < ((long long)1e18 - c) / result){
			result = result * result + c;
			max_iterations++;
		}

		long long it = rnd.next(0LL, max_iterations);

		cout << z << " "
		 << c << " "
		 << it << endl;
	}
}


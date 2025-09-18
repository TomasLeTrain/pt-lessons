#include "testlib.h"
#include <iostream>

using namespace std;

int main(int argc, char *argv[]) {
	registerGen(argc, argv, 1);

	/* Read number from command line. */
	int n = opt<int>(1);

	println(n);

	for (int i = 0; i < n; i++){
		println(rnd.next(1, 1000), rnd.next(1,1000));
	}
}

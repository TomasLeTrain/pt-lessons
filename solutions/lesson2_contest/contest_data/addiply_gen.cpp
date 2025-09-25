#include "testlib.h"
#include <iostream>

using namespace std;

void writeTest(int test) {
    startTest(test);

	println(rnd.next(1, 10000), rnd.next(1, 10000));
}

int main(int argc, char *argv[]) {
	registerGen(argc, argv, 1);

	int n = opt<int>(1);

    for (int i = 1; i <= n; i++)
        writeTest(i);
}

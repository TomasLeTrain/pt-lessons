#include "testlib.h"
#include <iostream>

using namespace std;

void writeTest(int test) {
	int n = rnd.next(1, 1000);
	vector<int> a(n);
	vector<int> b(n);
	for(int i = 0;i < n;i++){
		a[i] = rnd.next(1,10000);
		b[i] = rnd.next(1,10000);
	}

	println(n);
	println(a);
	println(b);
}

int main(int argc, char *argv[]) {
	registerGen(argc, argv, 1);

	int n = opt<int>(1);

	println(n);

    for (int i = 1; i <= n; i++)
        writeTest(i);
}

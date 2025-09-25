#include "testlib.h"
#include <iostream>

using namespace std;

void writeTest(int test) {
    startTest(test);

	int n = opt<int>(2);
	int m = opt<int>(3);
	int k = opt<int>(4);

	println(n,m,k);

	for(int i =0;i < n;i++){
		println(rnd.next(-100, 100),rnd.next(-100, 100));
	}

	for(int i =0;i < m;i++){
		int sx = rnd.next(-1000, 999);
		int sy = rnd.next(-1000, 999);

		int dx = rnd.next(1, 1000 - sx);
		int dy = rnd.next(1, 1000 - sy);

		println(sx, sy, sx+dx, sy+dy);
	}

	for(int i =0;i < k;i++){
		int ox = rnd.next(-100, 100);
		int oy = rnd.next(-100, 100);
		int r = rnd.next(1, 100);

		println(ox,oy,r);
	}
}

int main(int argc, char *argv[]) {
	registerGen(argc, argv, 1);

	int n = opt<int>(1);

    for (int i = 1; i <= n; i++)
        writeTest(i);
}

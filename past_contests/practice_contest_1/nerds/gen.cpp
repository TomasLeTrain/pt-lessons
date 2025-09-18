#include "testlib.h"
#include <iostream>

using namespace std;

int main(int argc, char *argv[]) {
	registerGen(argc, argv, 1);

	/* Read number from command line. */
	int r = opt<int>(1);
	int t = opt<int>(2);
	int m = opt<int>(3);

	println(t);

	for (int i = 0; i < t; i++){
		int n = rnd.next(1, m);

		println(n);

		vector<char> cc = {'S','M','L','J'};

		vector<int> a(n);
		for(int j = 0;j < n;j++){
			int c = rnd.next(0, 3);

			cout << rnd.next(1, 100) << cc[c];
			if(j != n-1)
				cout << " ";
		}
		cout << endl;
	}
}

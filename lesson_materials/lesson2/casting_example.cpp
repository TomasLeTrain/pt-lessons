#include <bits/stdc++.h>

using namespace std;

int main(){
	double decimal_num = 4.69;

	int number1 = decimal_num;

	// what does this output?
	cout << number1 << endl;
}

// this actually becomes:
int main(){
	double decimal_num = 4.69;

	int number1 = int(decimal_num);

	// what does this output?
	cout << number1 << endl;
}

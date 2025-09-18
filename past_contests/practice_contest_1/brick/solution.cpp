#include <bits/stdc++.h>

using namespace std;

int solve(){
	int n,w; cin >> n >> w;

	// answer is the integer division (also known as the floor of the division) of n and w
	// we don't have to convert to doubles for this,
	// as dividing two integers already gives equals integer division
	cout << n / w << endl;
}

int main(){
	int tc; cin >> tc;
	while(tc--){
		solve();
	}
}

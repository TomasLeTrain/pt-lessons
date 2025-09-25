#include <bits/stdc++.h>

using namespace std;

using ll = long long;

// official editorial is also here:
// https://codeforces.com/blog/entry/145832

void solve(){
	ll n,k; cin >> n >> k;
	for(int i = 0;i < n;i++){
		// all a's are independent from each other
		ll a; cin >> a;
		// make it so every term is divisble by (k + 1)
		cout << a + k * (a % (k + 1)) << " ";
	}
	cout << endl;
}

int main(){
	int tc; cin >> tc;
	while(tc--) solve();
}

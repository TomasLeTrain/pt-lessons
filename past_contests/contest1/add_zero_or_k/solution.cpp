#include <bits/stdc++.h>

using namespace std;

using ll = long long;

void solve(){
	ll n,k; cin >> n >> k;
	for(int i = 0;i < n;i++){
		ll a; cin >> a;
		cout << a + k * (a % (k + 1)) << " ";
	}
	cout << endl;
}

int main(){
	int tc; cin >> tc;
	while(tc--) solve();
}

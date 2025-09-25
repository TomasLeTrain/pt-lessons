#include <bits/stdc++.h>

using namespace std;

using ll = long long;

void solve(){
	ll n; cin >> n;

	ll res = 0;

	for(int i = 0 ;i < n;i++){
		ll a; cin >> a;
		char c; cin >> c;

		if(c == 'S'){
			res += a * 100;
		}else if(c == 'M'){
			res += a * 250;
		}else if(c == 'L'){
			res += a * 500;
		}else if(c == 'J'){
			res += a * 1000;
		} else{
			assert(false);
		}
	}
	cout << res << endl;

}

int main(){
	int tc; cin >> tc;
	while(tc--) solve();
}

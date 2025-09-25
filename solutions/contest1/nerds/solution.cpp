#include <bits/stdc++.h>

using namespace std;

void solve(){
	int n; cin >> n;

	int res = 0;

	for(int i = 0 ;i < n;i++){
		int a; cin >> a;
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
			cout << c << endl;
			assert(false);
		}
	}
	cout << res << endl;

}

int main(){
	int tc; cin >> tc;
	while(tc--) solve();
}

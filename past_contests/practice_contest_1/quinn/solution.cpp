#include <bits/stdc++.h>

using namespace std;

void solve(){
	int n,l; cin >> n >> l;
	vector<int> a(n);

	for(int i = 0;i < n;i++){
		cin >> a[i];
	}

	bool res = true;
	for(int i = 0;i < n;i++){
		// this value is greater than time limit
		if(a[i] > l){
			res = false;
			break;
		}
	}
	if(res) cout << "OBEDIENT" << endl;
	else cout << "NAUGHTY" << endl;
}

int main(){
	int tc; cin >> tc;
	while(tc--) solve();
}

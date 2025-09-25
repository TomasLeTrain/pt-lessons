#include <bits/stdc++.h>

using namespace std;

using ll = long long;

void solve(){
	int n,k; cin >> n >> k;

	vector<int> a(n);

	for(int i = 0;i < n;i++){
		cin >> a[i];
	}
	int count = 0;
	for(int i = 0;i < n;i++){
		if(a[i] >= a[k-1] && a[i] > 0) count++;
	}
	cout << count << endl;
}

int main(){
	int tc = 1;
	// cin >> tc;
	while(tc--){
		solve();
	}
}

#include <bits/stdc++.h>

using namespace std;

void solve(){
	int n; cin >> n;
	vector<int> a(n),b(n);
	for(int i = 0;i < n;i++) cin >> a[i];
	for(int i = 0;i < n;i++) cin >> b[i];

	int cnt = 0;

	for(int i = 0; i < n;i++){
		if(a[i] % 2 == 0 && b[i] % 2 == 0){
			cnt++;
		}
	}
	 
	cout << cnt << endl;
}

int main(){
	int tc; cin >> tc;
	while(tc--) solve();
}

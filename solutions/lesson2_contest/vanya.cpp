#include <bits/stdc++.h>

using namespace std;

void solve(){
	int n,h; cin >> n >> h;

	vector<int> a(n);

	for(int i = 0;i < n;i++){
		cin >> a[i];
	}
	int cnt = 0;
	for(int i = 0;i < n;i++){
		if(a[i] <= h) cnt++;
		else cnt += 2;
	}
	cout << cnt << endl;
}

int main(){
	solve();
}

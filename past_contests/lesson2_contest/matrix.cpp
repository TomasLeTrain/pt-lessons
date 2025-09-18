#include <bits/stdc++.h>

using namespace std;

using vi = vector<int>;

void solve(){
	int n; cin >> n;

	vector<vi> a(n, vi(n));

	for(int i = 0;i < n;i++){
		for(int j = 0;j < n;j++){
			cin >> a[i][j];
		}
	}

	int res = 0;

	for(int i = 0;i < n;i++){
		for(int j = 0;j < n;j++){
			// diagonals
			if(i == j || i == (n-1) - j) res += a[i][j];
			// second diagonals
			else if( i - 2 == j || j - 2 == i) res += a[i][j]; 
			// center rows
			else if(i == (n-1)/2 || j == (n-1)/2) res += a[i][j]; 
		}
	}
	cout << res << endl;
}

int main(){
	solve();
}

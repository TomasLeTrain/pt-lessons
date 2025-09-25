#include <bits/stdc++.h>

using namespace std;

const int MOD = 1e9 + 7;

vector<int> a;
vector<int> dp;

int n,x;

int rec(int left){
	if(left < 0) return 0;
	if(dp[left] != -1) return dp[left];

	int res = 0;

	for(int i = 0; i < n;i++){
		res = (res + rec(left - a[i])) % MOD;
	}
	return dp[left] = res;
}

int main(){
	cin >> n >> x;

	a.resize(n);

	for(int i = 0; i < n;i++){
		cin >> a[i];
	}

	dp.assign(x+1,-1);
	dp[0] = 1;

	cout << rec(x) << endl;
}

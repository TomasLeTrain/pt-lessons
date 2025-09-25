#include <bits/stdc++.h>

using namespace std;

int n,x;
vector<int> a;
vector<int> dp;

const int INF = 1e9 + 5;

int rec(int l){
	if(l < 0) return INF;
	if(dp[l] != -1) return dp[l];

	int res = INF;

	for(int i = 0;i < n;i++)
		res = min(res, rec(l - a[i]) + 1);

	return dp[l] = res;
}


int main(){
	cin >> n >> x;
	a.resize(n);
	for(int i = 0;i < n;i++) cin >> a[i];

	dp.assign(x+1, -1);
	dp[0] = 0;

	auto res = rec(x);
	if(res == INF) cout << -1 << endl;
	else cout << res << endl;
}

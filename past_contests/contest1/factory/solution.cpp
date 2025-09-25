#include <bits/stdc++.h>

using namespace std;

using ll = long long;

bool check(vector<ll>& k, ll time, int n, ll t){
	ll products_made = 0;

	for(int i = 0;i < n;i++){
		products_made += time / k[i];
		if(products_made >= t) return true;
	}
	return false;
}

int main(){
	int n, t; cin >> n >> t;
	vector<ll> k(n);
	for(int i = 0;i < n;i++){
		cin >> k[i];
	}

	// binary search to find optimal time

	ll l = 0, r = 1e18;

	while(l < r){
		ll mid = l + (r - l) / 2;
		if(check(k,mid,n,t)){
			r = mid;
		}else{
			l = mid + 1;
		}
	}
	cout << l << endl;
}

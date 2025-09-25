#include <bits/stdc++.h>

using namespace std;

using ll = long long;

int main(){
	ll n,k; cin >> n >> k;

	vector<ll> a(n);

	for(int i = 0; i < n;i++){
		cin >> a[i];
	}

	auto check = [&](ll m) -> bool {
		// try to partition so that the maximum sum is m
		ll curr_sum = 0;
		ll splits = 0;
		for(int i = 0;i < n;i++){
			if(a[i] > m) return false;
			if(curr_sum + a[i] > m){
				curr_sum = 0;
				splits++;
			}
			curr_sum += a[i];
		}
		if(curr_sum > 0) splits++;

		return splits <= k;
	};

	ll l = *max_element(a.begin(),a.end()),
	   r = accumulate(a.begin(),a.end(),0LL);
	while(l < r){
		ll m = l + (r - l) / 2;
		if(check(m)){
			r = m;
		}else{
			l = m + 1;
		}
	}
	cout << l << endl;
}

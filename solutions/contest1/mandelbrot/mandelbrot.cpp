#include <bits/stdc++.h>
using namespace std;

using ll = long long;

void solve() {
    ll z, c, r;
    cin >> z >> c >> r;

    for(int i = 0;i < r;i++){
        z = z * z + c;
    }

    cout << z << endl;
}

int main(){
    int tc;
    cin >> tc;
    while(tc--){
        solve();
    }
}

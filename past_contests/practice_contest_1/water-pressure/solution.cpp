#include <bits/stdc++.h>

using namespace std;

int main(){
  long long n; cin >> n;
  // 100 and 100.0 are not the same!
  // since 100.0 is a double the n gets automatically casted to a double
  cout << n / 100.0 << endl;

  // another could solution would be:
  // cout << (double(n) / 100 << endl;
  // here its important to cast before dividing, otherwise the result might
  // still use integer division and be wrong
}

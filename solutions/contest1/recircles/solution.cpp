#include <bits/stdc++.h>

using namespace std;

using pii = pair<int,int>;
using vii = vector<pii>;

bool inRect(pii num, pii r1, pii r2){
	return r1.first <= num.first && num.first <= r2.first
	    && r1.second <= num.second && num.second <= r2.second;
}

bool inCircle(pii num, pii origin, int radius){
	int x = origin.first - num.first;
	int y = origin.second - num.second;
	return radius * radius >= x * x + y * y;
}

void solve(){
	int n,m,k; cin >> n >> m >> k;

	vii points(n);

	vector<vii> rects(m, vii(2));

	vii circles(k);
	vector<int> rad(k);

	for(int i = 0;i < n;i++){
		cin >> points[i].first >> points[i].second;
	}

	for(int i = 0;i < m;i++){
		// get first bound
		cin >> rects[i][0].first >> rects[i][0].second;
		// get second bound
		cin >> rects[i][1].first >> rects[i][1].second;
	}
	for(int i = 0;i < k; i++){
		cin >> circles[i].first >> circles[i].second >> rad[i];
	}


	// for each point check number of rectangles and number of circles
	for(int i = 0;i < n;i++){
		int num_rects = 0, num_circles = 0;
		for(int j = 0; j < m;j++){
			if(inRect(points[i],rects[j][0],rects[j][1])){
				num_rects++;
			}
		}
		for(int j = 0; j < k;j++){
			if(inCircle(points[i],circles[j],rad[j])){
				num_circles++;
			}
		}
		cout << num_rects << " " << num_circles << endl;
	}
}

int main(){
	solve();
}

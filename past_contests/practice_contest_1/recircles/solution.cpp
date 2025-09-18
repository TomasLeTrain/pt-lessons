#include <bits/stdc++.h>

using namespace std;

// pair represents a data structure that can hold two values 
// in this case it represents (x,y) coordinates

// point
using pii = pair<int,int>;
// vector of points
using vii = vector<pii>;

// checks if p is inside rectangle defined by points r1 and r2 
bool inRect(pii p, pii r1, pii r2){
	// x coords
	return r1.first <= p.first && p.first <= r2.first
	// y coords
	    && r1.second <= p.second && p.second <= r2.second;
}

// checks if p is inside circle at the origin and radius
bool inCircle(pii p, pii origin, int radius){
	int x = origin.first - p.first;
	int y = origin.second - p.second;
	// formula for checking points inside circle is:
	// r >= sqrt( x^2 + y^2 )
	// however we can square both sides and the inequality remains true,
	// so we don't have to convert to doubles, leaving:
	// r * r >= x^2 + y^2
	return radius * radius >= x * x + y * y;
}

int main(){
	int n,m,k; cin >> n >> m >> k;

	vii points(n);

	// rectangles are held 2 lists of vectors, each holding one point of the rectangle
	vector<vii> rects(m, vii(2));

	// origins of circles
	vii circles(k);
	// radiuses of circles
	vector<int> rad(k);

	for(int i = 0;i < n;i++){
		// get points
		cin >> points[i].first >> points[i].second;
	}

	for(int i = 0;i < m;i++){
		// get first rectangle point
		cin >> rects[i][0].first >> rects[i][0].second;
		// get second rectangle point
		cin >> rects[i][1].first >> rects[i][1].second;
	}
	for(int i = 0;i < k; i++){
		cin >> circles[i].first >> circles[i].second >> rad[i];
	}

	// for each point check number of rectangles and number of circles
	for(int i = 0;i < n;i++){
		int num_rects = 0, num_circles = 0;
		for(int j = 0; j < m;j++){
			// check if its inside rectangle
			if(inRect(points[i],rects[j][0],rects[j][1])){
				num_rects++;
			}
		}
		for(int j = 0; j < k;j++){
			// check if its inside circle
			if(inCircle(points[i],circles[j],rad[j])){
				num_circles++;
			}
		}
		cout << num_rects << " " << num_circles << endl;
	}
}

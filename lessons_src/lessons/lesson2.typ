#import "@preview/slydst:0.1.4": *

#let title_color = rgb("e93920")

// default colors
#let bg_color = rgb("1b1817")
#let fg_color = rgb("f0f0f0")

#let dark_fg = rgb("676767")

// contrast colors
#let contrast_bg_color = rgb("303030")

// themes
#let normal_theme = "../themes/brogrammer.tmTheme"
#let contrast_theme = "../themes/halcyon_contrast.tmTheme"

// used to compile the slides for when presenting, since the projector is not very good
// #let contrast = true
#let contrast = false

#set raw(theme: if (contrast) {contrast_theme} else {normal_theme})

#set page(fill: if(contrast) {contrast_bg_color} else {bg_color})
#set text(fill: fg_color)

// set size of code
#show raw: set text(size: 9pt)

#let codeBlock(other_content,body) = layout(size => {
  let default-body-size = measure(body)
  let h = size.height - other_content
  let height-scaling-factor = (h / default-body-size.height);
  let width-scaling-factor = (size.width /
    default-body-size.width);
  let scaling-factor = calc.min(height-scaling-factor,width-scaling-factor);

  scale(x: scaling-factor * 100%, y:
    scaling-factor * 100%, origin:
    top+left,reflow:true, body)
})

#show: slides.with(
  title: "Vectors, Casting, and Templates",
  subtitle: "Lesson #2",
  date: "09/11/2025",
  authors: ("TCHS Programming Team"),
  layout: "medium",
  ratio: 4/3,

  title-color: title_color
)

== Setup
Create a codeforces account at

#text(15pt,fill:blue.darken(10%))[
  https://codeforces.com
]

Once you have an account join the group by using
the following url:

#text(15pt,fill:blue.darken(10%))[
]

Also open the compiler to write code:

#text(15pt,fill:blue.darken(10%))[
  https://ide.usaco.guide
]

// = Casting
== casting
We can use variables with other variables of the same type.
This means that, for example, we cannot compare
```cpp int``` and ```cpp double``` directly. To do
this, we need to use *casting*.

```cpp
double decimal_num = 4.69;

int number1 = decimal_num;

// what does this output?
cout << number1 << endl;
```

#v(1fr)

What is actually happening is the following:
```cpp
double decimal_num = 4.69;

int number1 = int(decimal_num);

// what does this output?
cout << number1 << endl;
```

== casting - Continued
```cpp
int big_num = 500;

// 1e9 (or for any x -> 1ex for that matter) is
// actually a double
if(big_num < 1e9){
}

// so this if statement gets converted to:
if(double(big_num) < 1e9){
}

// since this is not desirable we can manually cast
// the double:
if(big_num < (int)1e9){
}
```

= Vectors

== Vectors - Concept
// visual drawn here
#align(center)[
  #rect(
    width:4in,
    height:3in,
    fill:rgb("a0a0a0")
  )
]

== Vectors - usage
Initializing vectors can be done like the
following:

#codeBlock(21pt)[
  ```cpp
// where T is a data type
vector<T> my_list; // starts out empty - contains no elements)
vector<T> my_list2(n); // starts with empty n elements
vector<T> my_list3(n,default_val); // starts with n-elements,
//all equal to default_val

vector<int> num_list;
vector<string> string_list;
vector<double> double_list; // etc...

// starts out with 5 elements, however each of them are considered empty
vector<int> empty_list(5);

// starts out with 5 elements, and all of them are equal to pi
vector<double> another_list(5,3.14567);

// T can even be another vector!
vector<vector<int>> num_list_2d(20, vector<int>(40, -5) );
// here num_list_2d is a list of 20 vectors, each of
// which has 40 elements all equal to -5
```
]


== Vectors - Looping through
#codeBlock(-13pt)[
```cpp
vector<int> l = {1,2,3,4,5,6,7};

for(int i = 0;i < l.size();i++){
  // can access the current value by using l[i],
  // for example:
  cout << l[i] << " ";
}
cout << endl; // prints the end line

// if the index isn't needed then a
// for-each for loop can be used
for(int x : l){
  cout << x << " ";
}
cout << endl;


// for loop using iterators
for(auto it = l.begin(); it != l.end();it++){
  // value can be accessed at *it:
  cout << *it << " ";
}
cout << endl;

```
]

For 2d vectors similar syntax can be used: 
#codeBlock(0pt)[
```cpp
int rows = 100;
int cols = 200;

vector<vector<int>> dp(rows, vector<int>(cols, 0));

// this is for example how you can print a 2d list:
for(int row = 0;row < rows;row++){
  for(int col = 0;col < cols;col++){
    cout << dp[row][col] << " ";
  }
  cout << endl;
}
```
]


== Vectors - Methods
Vectors support lots of methods:
#align(center)[
  #table(
  columns:2,
  rows:auto,
  stroke: dark_fg,
    [*method*], [*comment*],
    [```cpp push_back(T value)```], [ add a value to the end of the list. ],
    [```cpp size()```], [ Returns the number of elements in the vector. ],
    // [```cpp clear()```], [ Clears all elements
    // from the list. ],
    [```cpp front()```], [ Returns the first element of the vector ],
    [```cpp back()```], [ Returns the last element of the vector ],
    [```cpp erase(iterator)```], [ Erases value at some index\* ],
    [```cpp empty()```], [ Returns true if empty,
    otherwise returns false.],
  )
]
#grid(columns:2,
  column-gutter: 20pt,
[
```cpp
vector<int> l = {10,20,30,50,20};
l.push_back(-10);
l.erase(l.begin() + 2);
cout << l.size() << endl;
for(int x : l)
  cout << x << " ";
```
],[
  ```rust
  output:
  5
  10 20 50 20 -10
  ```
])


= Programming Problems' structure / related topics

== Reading in a list / lists
// A common pattern is reading in a list of numbers:
#codeBlock(-20pt)[
  ```cpp
// --- first approach --- //
int n;
cin >> n; // read in number of elements

// list starts empty
vector<int> nums;

// read in elements
for(int i = 0;i < n;i++){
  int tmp; cin >> tmp;
  nums.push_back(tmp); // adds each element into the list
}

// --- second approach (recommended) --- //
int n;
cin >> n; // read in number of elements

// create a list with n elements
// NOTE: you must initialize the list with n-elements before reading them in,
// otherwise you will get an error!
vector<int> nums(n);

// read in elements
for(int i = 0;i < n;i++){
  cin >> nums[i];
}
```
]


== Test cases

Input for each test case is two numbers:
// Input is two numbers:
#align(center)[
  #table(
    inset:6pt,
    rows:2,
    columns: 2,
    stroke: dark_fg,
    [*Single test case*],[*Multiple Test cases*],
    [
    ```rust
2 3 // test case #1
```],
    [
    ```rust
3 // number of test cases
2 3 // test case #1
6 7 // text case #2
4 1 // test case #3
    ```
  ]
  )
]

Input for each test case is a list:
#align(center)[
  #table(
    // inset:6pt,
    rows:2,
    columns: 2,
    stroke: dark_fg,
    [*Single test case*],[*Multiple Test cases*],
align(left)[
```rust
5
1 2 5 3 4
```
],
    [
```rust
2 // number of test cases
5 // start of test case 1
1 2 5 3 4
3 // start of test case 2
1 2 3
```
  ]
  )
]

== Code Templates
Some code can often be annoying to type over
and over, so we can make templates to make
writing solutions easier

== Code Template

#codeBlock(-10pt)[
  ```cpp
#include <bits/stdc++.h>
using namespace std;

// the list of shortcuts will likely grow over the year
using ll = long long;
using vi = vector<int>;

void solve(){
  // same as `long long long_num;`
  ll long_num = (ll)1e16;
  // same as `vector<int> list_of_nums;`
  vi list_of_nums;

  // both are the same:
  vector<vector<int>> list_2d(10, vector<int>(40, 30) );
  vector<vi> list_2d(10, vi(40, 30) );
}

int main(){
  int tc = 1;
  cin >> tc; // comment this out if its only one test case
  while(tc--){
    solve();
  }
}
  ```
]

// == things to know when presenting
// - first ask who have used lists, 2d lists, and
// vectors in specific
//
// - mention that my goals is to introduce topics, but
//   that they are responsible for actually practicing
// and researching what I cannot cover
//
// - functions
//
// - topics for next lesson:
// - pairs
// - sets
// - time complexity

== Miscellaneous
- Practice competition
  - planning to have it this coming Tuesday

- feedback on slides
  - theme

- next meeting
  - sets / hash maps
  - functions / recursion

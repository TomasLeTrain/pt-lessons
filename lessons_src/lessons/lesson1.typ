#import "@preview/slydst:0.1.4": *

#show: slides.with(
  title: "Introduction to the PT / C++ Programming",
  subtitle: "Lesson #1",
  date: "09/04/2025",
  authors: ("TCHS Programming Team"),
  layout: "small",
  ratio: 4/3,
)

= Part 1: C++ Programming

== Compiler and IDE
During lessons we will be using the following platform to write code:

#text(22pt,blue.darken(35%))[https://ide.usaco.guide]

== Speedrunning C++: Hello World
```cpp
#include <bits/stdc++.h>

using namespace std;

int main(){
    cout << "Hello World!" << endl;
}
```

== Speedrunning C++: Variables
Variables consist of two things: 
- Data type
- name

examples:
```cpp
data_type name;

// can also "initialize" a variable with a value
data_type name = value;
```

== Speedrunning C++: Variable examples:
```cpp
#include <bits/stdc++.h>
using namespace std;

int main(){
  int some_number;
  int year = 2025;
  long long big_value = 1e18; //equivalent to 10^18
  double decimal_number = 5.67;
  string last_name = "foster";
  char random_letter = 'p';
  bool its_thursday = true;
}
```

== Speedrunning C++: Printing Values
```cpp
#include <bits/stdc++.h>
using namespace std;

int main(){
  int year = 2025;

  cout << year << endl;
  // or
  cout << year;
  cout << endl;
}
// output(with either method): 2025
```

==  Speedrunning C++: Input
```cpp
#include <bits/stdc++.h>
using namespace std;

int main(){
  int year;
  // NOTE: pay attention to the direction of the arrows!
  
  // get input into year
  cin >> year;

  // output the year * 2
  cout << "twice the year is: " << year * 2 << endl;
}
// input: 2031
// output: twice the year is: 4062
```

#show raw: set text(size: 7pt)

== Speedrunning C++: Multiple Inputs
```cpp
#include <bits/stdc++.h>
using namespace std;

int main(){
  int year;
  // can initialize variables of the same type by separating by commas
  int num1, num2, num3;

  // can be on the same line or on different lines
  cin >> num1 >> num2;
  cin >> num3;

  // outputs sum of all given nums
  cout << "sum of numbers is: " << num1 + num2 + num3 << endl;
}
// input: 20 40 3
// output: sum of numbers is: 63
```

== Speedrunning C++: if statements
```cpp
if(condition){
  // executes something
else if(another_condition){
  // executes if another condition
}else{
  // executes something else
}
```

== Speedrunning C++: while/for loops
```cpp
while(condition){
  // do something
}

// for example:
int i = 0;
while(i < n){
  // do something
  i++;
}
// in fact this is effectively a for loop
```

== Speedrunning C++: for loops
```cpp
// made of three parts:
//   defines varaible
//   defines the condition
//   defines how the variable gets updated every iteration
for(int i = 0;i < n;i++){
  // do something
}
```

== Speedrunning C++: practice
take the input of two numbers, then output their sum and their multiplication

#show raw: set text(size: 12pt)

#grid(
  columns:(1fr,1fr),
  align:center,
  gutter: 3pt,
  [
    ```rust
    example input:
    10 8
    ```
  ],
  [
  ```rust
  example output:
  18 80
  ```
  ]
)

= Part 2: Programming Problems

#set text(size: 10.4pt)
== First programming problems
This problem is from codeforfces, google "codeforces 231A" and click on the first result to see it in your computer.

=== Problem Statement
One day three best friends Petya, Vasya and Tonya decided to form a team and take part in programming contests. Participants are usually offered several problems during programming contests. Long before the start the friends decided that they will implement a problem if at least two of them are sure about the solution. Otherwise, the friends won't write the problem's solution.

This contest offers n problems to the participants. For each problem we know, which friend is sure about the solution. Help the friends find the number of problems for which they will write a solution.
Input

#set text(size: 11.4pt)
=== Input
The first input line contains a single integer n (1 ≤ n ≤ 1000) — the number of problems in the contest. Then n lines contain three integers each, each integer is either 0 or 1. If the first number in the line equals 1, then Petya is sure about the problem's solution, otherwise he isn't sure. The second number shows Vasya's view on the solution, the third number shows Tonya's view. The numbers on the lines are separated by spaces.
Output

=== Output
Print a single integer — the number of problems the friends will implement on the contest.


#grid(
  columns:(1fr,1fr),
  align:center,
  gutter: 3pt,
  [
    ```rust
    example input:
    3
    1 1 0
    1 1 1
    1 0 0
    ```
  ],
  [
  ```rust
  example output:
  2
  ```
  ]
)

== Solution
#show raw: set text(size: 8pt)
```cpp
#include <bits/stdc++.h>
using namespace std;

int main(){
  int n; cin >> n;

  int implemented_problems = 0;

  for(int i = 0;i < n;i++){
    int a,b,c;
    cin >> a >> b >> c;
    if(a + b + c >= 2){
      implemented_problems++;
    }
  }
  cout << implemented_problems << endl;
}
```

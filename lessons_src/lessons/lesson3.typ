#import "@preview/slydst:0.1.4": *
#import "../utils.typ" : *

#show: applyTheme.with()

#context [

#show: slides.with(
  title: "Problem Practice and misc. topics",
  subtitle: "Lesson #3",
  date: "09/25/2025",
  authors: ("TCHS Programming Team"),
  layout: "medium",
  ratio: 4/3,

  title-color: getTheme().title_color
)

#setContrast(true)

== Setup
If you haven't, create a codeforces account at

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

The pdf for lessons will also be available here:

#text(15pt,fill:blue.darken(10%))[
]


= Lesson 2 Practice Problems 
== Addiply
=== Problem
Given two numbers, a and b, print $a + b$ and $a * b$.

=== Input
There is one line of input,
where two numbers $a$ and $b$ $(1 <= a, b <= 10^4)$ are given.

=== Output
Output $a + b$
and $a * b$ separated by a space.

== Addiply (Solution)
Perform the addition and multiplication as stated in the problem 

== Addiply (Multiple Testcases)
=== Problem
Given two numbers, a and b, print $a + b$ and $a * b$.

=== Input
Each test contains multiple test cases. The first line contains the number of test
cases $t$ $(1 <= t <= 10^4)$.
$t$-lines follow, where each line represents each test case.

Each test case contains 2 numbers $a$ and $b$ $(1 <= a, b <= 10^4)$ are given.

=== Output
For each test case, output $a + b$ and $a * b$ separated by a space.

== Addiply (Multiple Testcases)
=== Problem
Given two numbers, a and b, print $a + b$ and $a * b$.

=== Input
Each test contains multiple test cases. The first line contains the number of test
cases $t$ $(1 <= t <= 10^4)$.
$t$-lines follow, where each line represents each test case.

Each test case contains 2 numbers $a$ and $b$ $(1 <= a, b <= 10^4)$ are given.

=== Output
For each test case, output $a + b$ and $a * b$ separated by a space.

== Addiply (Solution)
Perform the addition and multiplication as stated in the problem, but also do so for
each test case

== Addiply (Solution)
Perform the addition and multiplication as stated in the problem 


== Minimize!
=== Problem
You are given two integers $a$ and $b$ $(a≤b)$. Over
all possible integer values of $c$ $(a≤c≤b)$, find
the minimum value of $(c−a)+(b−c)$.
=== Input
The first line contains $t$ $(1≤t≤55)$ — the number of test cases.

Each test case contains two integers a and $b$ $(1≤a≤b≤10)$.

=== Output
For each test case, output the minimum possible
value of $(c−a)+(b−c)$ on a new line.

== Minimize! (Solution)
Through simple manipulation we can see that:

$ (c - a) + (b - c) $
$ c - a + b - c $
$ - a + b $
$ b - a $

meaning that the value of $c$ doesn't affect the
final result in any way!

This just means the answer is $b - a$.


== List Conundrum
=== Problem
Given two lists, $a$ and $b$, print the number of even pairs.

Even pairs occur when at some index $i$, both $a_i$ and $b_i$ are even.

=== Input
Each test contains multiple test cases. The
first line contains the number of test cases
$t$ $(1≤t≤10^4)$. $t$-lines follow, where each line represents each test case.

Each test case starts with a single integer $n$
$(1≤n≤10^4)$, which denotes the length of both lists. The next line contains the lists a, and then line after that contains the list b.

=== Output
output the result.

== List Conundrum! (Solution)
The hardest part about this problem is getting
the input

To figure out if a number is even or not, we can
use the logic:

#text(15pt)[
```cpp
if(num % 2 == 0){
  // number is even
}else{
  // number is odd
}
```
]


= Practice Contest 1

== Water Pressure
=== Problem
Let us assume that water pressure depends only on depth and is $x/100$ megapascal at
a depth of $x$ meters.

What is the water pressure in megapascals at a depth of D meters?

=== Input
Each test contains one integer, $D$ $(1 <= D <= 10000)$.

=== Output
Print the answer. Your output will be considered correct when its absolute or
relative error from our answer is at most $10^(−4)$.

== Water Pressure (solution)
Get the number, then cast it to double and perform the operation 

*Important:* you have to cast the number _before_ performing the
division, otherwise it will perform integer division and give a wrong answer.

== Brick
=== Problem
We have a truck, which can carry at most $N$ kilograms.

We will load bricks onto this truck, each of which weighs $W$
kilograms. At most how many bricks can be loaded?

=== Input
Each test contains multiple test cases. The first line contains the number of test
cases $t$ $(1≤t≤2∗105)$. $t$-lines follow, where each line represents each test case.

Each test case includes two integers $N$ and $W$ $(1≤N,W≤1000)$, representing the number of kilograms the truck can carry and the weight of each brick in kilograms, respectively.

=== Output
For each test case print an integer representing the maximum number of bricks that can be loaded onto the truck.

== Brick (solution)
We can see that the solution is equal to the _floor_ of the division, which is also
equal to integer division.

== Mandelbrot
=== Problem
...

=== Input
Each test contains multiple test cases. The first line contains the number of test
cases $t$ $(1≤t≤2∗105)$. $t$
-lines follow, where each line represents each test case.

Each test case contains 3 integers $z$,$c$,$r$ $(1≤z≤109,1≤c≤109,0≤r≤109)$
, representing the starting $z$ value, the $c$ value and the number of iterations, respectively.

=== Output
For each test case, output one integer $z_r$ representing, the value of $z$ after $r$
iterations.

It is guaranteed that $z_r$
over all test cases will be smaller than $10^18$.

== Brick (solution)
The problem is actually quite simple despite the long description.
This is because the problem only gives integers, not complex numbers or any other
math nonsense.

It is also guaranteed that the input fits within $10^18$, so we can simply simulate
the problem!

== Foster's Nerds
=== Problem
...

=== Input
...

=== Output
For each test case, output a single integer: the total number of Nerds Mr. Foster receives.

== Foster's Nerds (Solution)
We can simulate the different bags with simple logic.

The hardest part of the problem is separating the integer from the character:
- One option is take it as a
  string, then try and get the number and character from the string, or
- just use `cin` to take in the character and number separately



]

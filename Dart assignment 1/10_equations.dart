/*
Problem Statement : 
Write arrow functions for the following equations:
A=a2+b4
Z=p2+5t+A
*/

import 'dart:math';

void main() {
  int A(a, b) => pow(a, 2) + pow(b, 4) as int;
  int Z(p, t) => pow(p, 2) + 5 * t + A(2, 3) as int;

  print(Z(4, 5));
}

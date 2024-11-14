/*
Problem Statement : 
Write arrow functions for the following equations:
A =x2 + 2xy+p.Z
Z = a2 + 4.B2 – 8b + 2a
B =n2+qn+1
*/

import 'dart:math';

void main() {
  int B(n, q) => pow(n, 2) + q * n + 1 as int;
  int Z(a, b) => (pow(a, 2) + 4 * pow(B(1, 2), 2) - 8 * b + 2 * a) as int;
  int A(x, y, p) => (pow(x, 2) + 2 * x * y + p * Z(4, 5)) as int;

  print(A(4, 5, 6));
}

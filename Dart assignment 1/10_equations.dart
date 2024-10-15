import 'dart:math';

void main() {
  int A(a, b) => pow(a, 2) + pow(b, 4) as int;
  int Z(p, t) => pow(p, 2) + 5 * t + A(2, 3) as int;

  print(Z(4, 5));
}

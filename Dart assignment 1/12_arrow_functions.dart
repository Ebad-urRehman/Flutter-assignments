// Suppose the equation is:
// Z = x2 + 4y2 – 8N2

// Where N is represented by a separate equation:
// N = p2 + q2
// Solve ‘Z’ with arrow function, such that you need to define the arrow function N within
// the body of Z.

import 'dart:math';

void main() {
  int Z(x, y, p, q) {
    int N(p, q) => pow(p, 2) + pow(q, 2) as int;
    return pow(x, 2) + 4 * pow(y, 2) - 8 * N(3, 4) as int;
  }

  print(Z(3, 4, 6, 2));
}

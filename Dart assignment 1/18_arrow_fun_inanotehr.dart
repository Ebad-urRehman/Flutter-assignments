/*
Problem Statement :
Write an example of defining an arrow function within another arrow function.
*/

void main() {
  var func = (a) => (b, c) => a + b + c;
  print(func(3)(4, 5));
}

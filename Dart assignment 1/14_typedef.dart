/*
Problem Statement :
Create a small calculator application using typedef functions performing these operations, add,
subtract, multiply, and divide.
*/

void main() {
  int add(int a, int b) => a + b;
  int subtract(int a, int b) => a - b;
  int multiply(int a, int b) => a * b;
  int divide(int a, int b) => a ~/ b;

  print(performOperation(add, 3, 4));
  print(performOperation(subtract, 3, 4));
  print(performOperation(multiply, 3, 4));
  print(performOperation(divide, 3, 4));
}

typedef twoNumberOperation = int Function(int a, int b);

int performOperation(twoNumberOperation operation, int x, int y) {
  return operation(x, y);
}

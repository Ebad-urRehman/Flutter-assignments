/*
Problem Statement : 
Suppose we have two numbers a=10 and b=20. You need to swap the numbers without using any
third temporary variable, or any arithmetic or logical operators.
*/

void main() {
  // method 1
  int a = 5;
  int b = 6;
  a = a + b - (b = a); // with operators

  // alternatively (method 2)
  (a, b) = (b, a); // simple method without any arthimatic or logical operators

  /* dart expressions evaluated from left to write and we can use multiple
  assignment operators in a line so first a is assigned to b then a-b(the one
  assigned equal to a returns 0, thus b remains and assign to a)  
  */
}

void main() {
  int a = 5;
  int b = 6;
  a = a + b - (b = a);

  /* dart expressions evaluated from left to write and we can use multiple
  assignment operators in a line so first a is assigned to b then a-b(the one
  assigned equal to a returns 0, thus b remains and assign to a)  
  */
}

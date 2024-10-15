void main() {
  var func = (a) => (b, c) => a + b + c;
  print(func(3)(4, 5));
}

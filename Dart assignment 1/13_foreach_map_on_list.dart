void main() {
  var fruits = ['apples', 'bananas', 'oranges'];
  List<String> modifiedList =
      fruits.map((str) => '${str.toUpperCase()} fruit').toList();
  print(modifiedList);
}

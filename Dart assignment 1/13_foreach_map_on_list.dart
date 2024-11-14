/*
Problem Statement :
Given the following list: ['apples', 'bananas', 'oranges'];
Append a string with each element of the list and capitalize each element of list. Use a combination
of map and forEach function.
*/

void main() {
  var fruits = ['apples', 'bananas', 'oranges'];
  List<String> modifiedList =
      fruits.map((str) => '${str.toUpperCase()} fruit').toList();
  print(modifiedList);
}

/*
Problem Statement : 
Suppose we have initialized a list of 4 integers. You need to sum the elements of the list without
using any loops or calling list elements through their indexes.
*/

void main() {
  List<int> listOfIntegers = [1, 2, 3, 4];
  var sum = listOfIntegers.reduce((value, element) => value + element);
  print(sum);
  // value here is showing the total sum of preivous elements and element is the next element to be added.
}

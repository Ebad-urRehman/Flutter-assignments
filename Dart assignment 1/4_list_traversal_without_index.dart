void main() {
  List<int> listOfIntegers = [1, 2, 3, 4];
  var sum = listOfIntegers.reduce((value, element) => value + element);
  print(sum);
  // value here is showing the total sum of preivous elements and element is the next element to be added.
}

void main() {
  var listOfIntegers = [10, 20, 30, 40];
  var dict = {};

  for (var i = 0; i < listOfIntegers.length; i++) {
    dict['Item ${i}'] = listOfIntegers[i];
  }
  print(dict);
}

/*
Problem Statement : 
Initialize a list of integers, 10, 20, 30, 40. Create another list using the first list, such that at its
initialization, the new list is initialized like this: Item 1: 10, Item 2: 20, Item 3: 30, Item 4: 40.
*/

void main() {
  var listOfIntegers = [10, 20, 30, 40];
  var dict = {};

  for (var i = 0; i < listOfIntegers.length; i++) {
    dict['Item ${i}'] = listOfIntegers[i];
  }
  print(dict);
}

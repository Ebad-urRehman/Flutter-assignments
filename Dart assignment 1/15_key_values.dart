void main() {
  List<Map<String, String>> myArray = [
    {'name': 'ali', 'age': '45'},
    {'name': 'noman', 'age': '34'},
  ];
  for (var item in myArray) {
    print('Keys of item are ${item.keys}');
    print('Values of item are ${item.values}');
    print('Value of the array ${item}');
  }
}
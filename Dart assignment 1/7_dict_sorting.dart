void main() {
  List<Map> listOfMaps = [
    {"position": 10, "name": "Jawad"},
    {"position": 33, "name": "Faisal"},
    {"position": 4, "name": "Zahid"},
    {"position": 6, "name": "Ali"},
    {"position": 9, "name": "Noman"},
    {"position": 4, "name": "Ben"},
  ];

  listOfMaps.sort((first, second) {
    int position_comparison = first['position'].compareTo(second['position']);
    // .cmpareTo return 0 when equal 1 or -1 other wise
    // so if position are equal then check according to the name
    if (position_comparison == 0) {
      return first['name'].compareTo(second['name']);
    } else {
      return position_comparison;
    }
  });

  print(listOfMaps);
}

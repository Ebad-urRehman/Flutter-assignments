/*
Problem Statement : 
Initialize a list of Map with the following items:
{"name":"Ali", "age":45, "marks":32 },
{"name":"Noman", "age":32, "marks":23 },
{"name":"Faisal", "age":41, "marks":43 },
{"name":"Noman", "age":11, "marks":43 },
{"name":"Faisal", "age":8, "marks":43 },
Print those records whose age is greater than 30 and whose name is either Noman or Faisal
*/

void main() {
  List<Map> listOfMaps = [
    {"name": "Ali", "age": 45, "marks": 32},
    {"name": "Noman", "age": 32, "marks": 23},
    {"name": "Faisal", "age": 41, "marks": 43},
    {"name": "Noman", "age": 11, "marks": 43},
    {"name": "Faisal", "age": 8, "marks": 43},
  ];
  // method 1
  for (var listItem in listOfMaps) {
    if (listItem['name'] == 'Noman' ||
        listItem['name'] == 'Faisal' && listItem['age'] > 30) {
      print(listItem);
    }
  }

  // method foreach
  listOfMaps.forEach((listItem) {
    if (listItem['name'] == 'Noman' ||
        listItem['name'] == 'Faisal' && listItem['age'] > 30) {
      print(listItem);
    }
  });

  // using where
  var fitered_list = listOfMaps.where((item) {
    return item['name'] == 'Noman' ||
        item['name'] == 'Faisal' && item['age'] == 30;
  });
  print(fitered_list);
}

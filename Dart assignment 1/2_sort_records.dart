class Person {
  String name;
  int age;
  Person(this.name, this.age);
}

void main() {
  List<Person> listOfPersons = [
    Person('Ibad-ur-Rehman', 21),
    Person('Zeeshan', 21),
    Person('Amir', 31),
    Person('Hashir', 22),
    Person('Ibrar', 21),
  ];
  listOfPersons.sort((first, second) => first.name.compareTo(second.name));

  for (var object in listOfPersons) {
    print('sorted wrt Name list : ${object.name} ${object.age}');
  }

  // sort w.r.t. age
  listOfPersons.sort((first, second) => first.age.compareTo(second.age));
  for (var object in listOfPersons) {
    print('sorted wrt ages list : ${object.name} ${object.age}');
  }
}

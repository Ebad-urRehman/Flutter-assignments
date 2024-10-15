void main() {
  List<Student> myObjects = [];
  myObjects.add(Student(name: "Ali", age: 45, marks: 32));
  myObjects.add(Student(name: "Faisal", age: 41, marks: 43));
  myObjects.add(Student(name: "Noman", age: 11, marks: 43));
  myObjects.add(Student(name: "Faisal", age: 8, marks: 43));

  List<Student> selectedStudents = myObjects
      .where((student) =>
          (student.name == 'Noman' || student.name == 'Faisal') &&
          student.age > 30)
      .toList();

  selectedStudents.forEach((student) => student.displayInfo());
}

class Student {
  String name;
  int age;
  int marks;
  Student({required this.name, required this.age, required this.marks});

  void displayInfo() {
    print("${this.name}'s age ${age} is greater than 30");
  }
}

/*
Problem Statement :
Given the following list of objects (name, age, marks), you need to write
myObjects.where().forEach() function, so that the name, age, and marks of those students are

printed on screen whose age is greater than 25 and marks are greater than equal to 50, and name is
Alice or Bob
myObjects.add(Student(name: 'Alice', age: 25, marks: 55));
myObjects.add(Student(name: 'Bob', age: 30, marks: 50));
myObjects.add(Student(name: 'Alice', age: 27, marks: 40));
myObjects.add(Student(name: 'Charlie', age: 22, marks: 45));
*/

void main() {
  List<Student> myObjects = [];
  myObjects.add(Student(name: 'Alice', age: 25, marks: 55));
  myObjects.add(Student(name: 'Bob', age: 30, marks: 50));
  myObjects.add(Student(name: 'Alice', age: 27, marks: 40));
  myObjects.add(Student(name: 'Charlie', age: 22, marks: 45));

  List<Student> selectedStudents = myObjects
      .where((student) =>
          (student.name == 'Bob' || student.name == 'Alice') &&
          student.age > 25 &&
          student.marks >= 50)
      .toList();

  selectedStudents.forEach((student) => student.displayInfo());
}

class Student {
  String name;
  int age;
  int marks;
  Student({required this.name, required this.age, required this.marks});

  void displayInfo() {
    print(
        "${this.name}'s age ${age} is greater than 25 and marks ${marks} are greater than equal to 50");
  }
}

import 'dart:io';

void main() {
  var listOfStudents = [
    Student(01, 'Ibad-ur-Rehman', 21, 3.8, 5, DateTime(2022, 10, 20)),
    Student(20, 'Ibrar', 21, 3.8, 5, DateTime(2022, 10, 20)),
    Student(05, 'Hashir', 21, 3.8, 5, DateTime(2022, 10, 20)),
    Student(38, 'Zeeshan', 21, 3.8, 5, DateTime(2022, 10, 20)),
  ];

  var listOfTeachers = [
    Teacher(
        123, 'Teacher1', 30, 500000, 'Professor', 'CS', DateTime(2014, 10, 20)),
    Teacher(203, 'Teacher2', 30, 500000, 'Professor', 'Physics',
        DateTime(2013, 10, 20)),
    Teacher(
        890, 'Teacher3', 30, 500000, 'Professor', 'AI', DateTime(2012, 10, 20)),
  ];
  print('\n\n\n-----list of Teachers \n');
  for (var teacher in listOfTeachers) {
    teacher.displayInfo();
  }
  print('\n\n\n-----list of Students \n');
  for (var student in listOfStudents) {
    student.displayInfo();
  }
  print('\n\n\n-----list of students having gpa greater than 3.7\n');
  var moreGPAStudents = listOfStudents.where((student) => student.cgpa > 3.7);
  for (var student in moreGPAStudents) {
    student.displayInfo();
  }
  print('''\n\n\n-----\n
  Search Students or teachers via ID's :
  Students : 
  01
  20
  05
  38

  Teachers :
  123
  203
  890
''');
  var input = stdin.readLineSync();
  var id = int.tryParse(input ?? '');
  Student? studentToPrint = listOfStudents
      .firstWhere((student) => student.id == id, orElse: () => null);
  Teacher? teacherToPrint = listOfTeachers
      .firstWhere((teacher) => teacher.id == id, orElse: () => null);
  studentToPrint.displayInfo();
  teacherToPrint.displayInfo();
}

class Person {
  int id;
  String name;
  int age;
  Person(this.id, this.name, this.age);

  void displayInfo() {
    print('Person id ${id} and name ${name} has age ${age}');
  }
}

class Student extends Person {
  double cgpa;
  int semester;
  DateTime admissionDate;

  Student(int id, String name, int age, this.cgpa, this.semester,
      this.admissionDate)
      : super(id, name, age);

  @override
  void displayInfo() {
    print(
        'Student having id ${this.id} has name ${this.name}, cgpa ${this.cgpa}, semester ${this.semester}');
  }
}

class Teacher extends Person {
  double salary;
  String designation;
  String department;
  DateTime joinedDate;

  Teacher(int id, String name, int age, this.salary, this.designation,
      this.department, this.joinedDate)
      : super(id, name, age);
}

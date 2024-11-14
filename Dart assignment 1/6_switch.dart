/*
Problem Statement : 
Suppose you have a range of numbers, and their respective grades:
10 – 30, grade E
31 – 50, grade D
51 – 70, grade C
71 – 90, grade B
91 – 100, grade A
Write a switch – case statement, that takes the marks and show the grade.
*/

import 'dart:io';

void main() {
  var marks;

  print('Enter your marks to check grade : ');
  marks = stdin.readLineSync();

  switch (int.parse(marks)) {
    case var x when (0 <= x && x <= 9):
      print('Grade F');
      break;
    case var x when (10 <= x && x <= 30):
      print('Grade E');
      break;
    case var x when (31 <= x && x <= 50):
      print('Grade D');
      break;
    case var x when (51 <= x && x <= 70):
      print('Grade C');
      break;
    case var x when (71 <= x && x <= 90):
      print('Grade B');
      break;
    case var x when (91 <= x && x <= 100):
      print('Grade A');
      break;
    default:
      print('Invalid Marks');
  }
}

void simplerApproach({required int marks}) {
  String grade;

  switch (marks ~/ 10) {
    case 10:
    case 9:
      grade = 'A';
      break;
    case 8:
    case 7:
      grade = 'B';
      break;
    case 6:
    case 5:
      grade = 'C';
      break;
    case 4:
    case 3:
      grade = 'D';
      break;
    case 2:
    case 1:
    case 0:
      grade = 'E';
      break;
    default:
      grade = 'Invalid marks';
  }
  print('Grade is %=${grade}');
}


// simpler approach explained 
/*Integer division ~/ marks by 10 gives us the integer value between 1 and 10 indicating
marks between 1 and 100, and then we can use 10 cases to store correct value of grade and print it.*/
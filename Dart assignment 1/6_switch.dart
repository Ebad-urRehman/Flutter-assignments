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

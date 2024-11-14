/*
Problem Statement :
Suppose we have an Dart object { 'name': 'Devin', 'hairColor': 'brown' }
Write code to change value of hairColor using spread syntax (...) three dots.
*/

void main() {
  var newHairColor = 'Black';

  var person = {'name': 'Devin', 'hairColor': 'brown'};
  person = {...person, 'hairColor': newHairColor};
  print(person);
}

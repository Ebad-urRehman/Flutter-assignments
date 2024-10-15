void main() {
  var newHairColor = 'Black';

  var person = {'name': 'Devin', 'hairColor': 'brown'};
  person = {...person, 'hairColor': newHairColor};
  print(person);
}

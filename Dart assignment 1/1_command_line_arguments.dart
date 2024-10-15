import 'dart:math';

void main(List<String> arguments) {
  if (arguments.isEmpty) {
    print('No arguments');
    return;
  }
  // int values * 100
  for (var arg in arguments) {
    int? intValue = int.tryParse(arg);
    if (intValue != null) {
      print('Integer value is ${intValue}');
      print('Integer value * 100 is ${intValue * 100}');
      continue;
    }

    // double values power to 3
    double? doubleValue = double.tryParse(arg);
    if (doubleValue != null) {
      print('Double value is : ${doubleValue}');
      print('Double value to power of 3 is ${pow(doubleValue, 3)}');
      continue;
    }
    print('String is ${arg}');
    print('Lenght of String is ${arg.length}');
    continue;
  }
}

void main() {
  //named parameter with default value name and nullable value age
  void Greet({String name = 'world', int? age}) {
    print('Aslam u Alaikum ${name} your age is ${age}');
  }

  Greet(name: 'Ibad-ur-Rehman', age: 21);
}

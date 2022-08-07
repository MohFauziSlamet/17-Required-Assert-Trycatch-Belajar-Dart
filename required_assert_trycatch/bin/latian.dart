import 'package:meta/meta.dart';

void main(List<String> args) {
  try {
    var p = Person(name: null);
    print(p.name);
  } catch (e) {
    print(e);
  }
  print('helo');
}

class Person {
  final String name;
  final int age;

  Person({@required this.name, this.age = 24}) {
    assert(name != null, 'You must give person name');
  }
}

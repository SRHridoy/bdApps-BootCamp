import 'animal.dart';

class Dog extends Animal {
  String breed;
  Dog(String name, int age, this.breed) : super(name, age);

  void fetch() => print("Fetch the ball");
  @override
  void eat() {
    print("Dog eats dog food");
    // super.eat();
  }
}

import 'animal.dart';
import 'dog.dart';
import 'bankAccount.dart';

void main() {
  var tiger = Animal('Tiger', 12);
  tiger.eat();

  var d = Dog("Tommy", 4, "labrador");
  d.eat();
  d.fetch();
  var acc = Bankaccount("Umar", 100000000);
  print("${acc.owner}'s balance is ${acc.balance}");
}

import 'dart:async';
import 'dart:io';

void main() {
  List numbers = [1, 2, 3, 4, 5];
  print(numbers);
  List<String> names = ["Hridoy", "Nahiyan", 'Umar'];
  print(names);
  names.add('Nafiza');
  print(names);
  names.remove('Nafiza');
  print(names);
  names.addAll(["Nova", "Tanha", "Rupa", "Sultana", "Nahiyan"]);
  print(names);

  for (var i = 0; i < 5; i++) {
    print("${i + 1}");
  }

  for (var name in names) {
    print(name);
  }

  int i = 0;

  while (i <= 5) {
    print("$i");
    i++;
  }

  do {
    print(i);
    i++;
  } while (i <= 5);

  Map<String, dynamic> student = {
    'name': 'Umar',
    'age': 1,
    'dept': 'Orthopedics',
  };
  print(student['name']);
  print(student['number'] ?? 'warning');
  student.remove('department');
  student.containsKey('name');
  print(student.containsKey('name'));

  Map<int, dynamic> info = {1: 'Hriody'};
  print(info[1]);

  student.forEach((key, value) {
    print("$key is $value");
  });

  student['present address'] = 'Rajshahi';
  print(student);

  Set<String> language = {'dart', 'C', 'C++', 'python'};
  print(language);
  language.add('flutter');
  print(language);

  var a = [1, 2, 3, 4];
  var b = [5, 6, 7, 8];
  var mergerd = [...a, ...b];
  print(mergerd);
}

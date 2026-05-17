import 'dart:io';

void main() {
  const String institutions = "bdApps";
  final DateTime now = DateTime.now();
  print("""=====================
    Institute Name : $institutions
    Date : ${now.toLocal()}
======================
    """);
  var grade;
  int marks;
  String? name;

  stdout.write('Enter your name : ');

  name = stdin.readLineSync()!;
  name = name.trim() ?? "Name not Provided";
  stdout.write("Enter the marks : ");
  marks = int.parse(stdin.readLineSync()!);

  if (marks >= 80) {
    grade = "A+";
  } else if (marks >= 70) {
    grade = "A";
  } else if (marks >= 60) {
    grade = "A-";
  } else if (marks >= 50) {
    grade = "B";
  } else {
    grade = "F";
  }

  print('Your grade is : $grade');
}

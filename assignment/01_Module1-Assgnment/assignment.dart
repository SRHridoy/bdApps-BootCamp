/*
📢 Assignment Announcement – Dart CLI Programming

Dear Programming Club Students,

Your new Dart CLI assignment has been published as part of our Brainstorming Initiative.

Assignment Title:

Programming Club Student Information Management System

Task:

Create a Dart CLI application where 10 students will provide their information. After collecting data from 10 students, the program should stop automatically and display all stored information.

Required Inputs:

- Name
- Details/About
- Present Address
- Permanent Address
- Contact Number
- Age
- height(float)
Concepts You Must Use:

- Variables
- Data Types
- List
- Map
- Loops ("for" / "while")
- User Input
- String Interpolation

Bonus Features (Optional):

- Search student by name
- Sort students by age
- Find the oldest student

📌 Submit your ".dart" file along with a screenshot of the output before the deadline.

Best of luck, everyone.
Happy Coding 🚀
*/

import 'dart:io';

void main() {
  stdout.write("""


---Assignment-01: Programming Club Student Information Management System---

""");
  stdout.writeln(
    "Enter the Programming Club Student Informations one by one : ",
  );

  List<Map<String, dynamic>> students = [];

  for (var i = 0; i < 5; i++) {
    stdout.writeln('Enter student ${i + 1} Info : ');

    String studentName;
    do {
      stdout.writeln('Enter name : ');
      studentName = stdin.readLineSync() ?? "";
      if (studentName.isEmpty) {
        stdout.writeln('Please enter the name : ');
      }
    } while (studentName.isEmpty);

    String about;
    do {
      stdout.writeln('Enter about : ');
      about = stdin.readLineSync() ?? "";
      if (about.isEmpty) {
        stdout.writeln('Please enter the about : ');
      }
    } while (about.isEmpty);

    String presentAddress;
    do {
      stdout.writeln('Enter Present Address : ');
      presentAddress = stdin.readLineSync() ?? "";
      if (presentAddress.isEmpty) {
        stdout.writeln('Please enter present address : ');
      }
    } while (presentAddress.isEmpty);

    String permanentAddress;
    do {
      stdout.writeln('Enter permanent address : ');
      permanentAddress = stdin.readLineSync() ?? "";
      if (permanentAddress.isEmpty) {
        stdout.writeln('Please enter permanent address : ');
      }
    } while (permanentAddress.isEmpty);

    String contactNumber;
    do {
      stdout.writeln('Enter contact number : ');
      contactNumber = stdin.readLineSync() ?? "";
      if (contactNumber.isEmpty) {
        stdout.writeln('Please enter contact number : ');
      } else if (students.any(
        (student) => student['contactNumber'] == contactNumber,
      )) {
        stdout.writeln(
          'This phone number already exists! Please enter a different one : ',
        );
      }
    } while (contactNumber.isEmpty ||
        students.any((student) => student['contactNumber'] == contactNumber));

    int age;
    do {
      stdout.writeln('Enter age : ');
      age = int.parse(stdin.readLineSync() ?? "");
      if (age.isNaN || age.isNegative) {
        stdout.writeln('Please enter age : ');
      }
    } while (age.isNaN || age.isNegative);

    double height;
    do {
      stdout.writeln('Enter height : ');
      height = double.parse(stdin.readLineSync() ?? "");
      if (height.isNaN || height.isNegative) {
        stdout.writeln('Please the height : ');
      }
    } while (height.isNaN || height.isNegative);

    Map<String, dynamic> student = {
      'name': studentName,
      'about': about,
      'presentAddress': presentAddress,
      'permanentAddress': permanentAddress,
      'contactNumber': contactNumber,
      'age': age,
      'height': height,
    };

    students.add(student);
  }

  stdout.writeln('\n\n========== All Students Information ==========\n');

  for (var student in students) {
    stdout.writeln('Name: ${student['name']}');
    stdout.writeln('About: ${student['about']}');
    stdout.writeln('Present Address: ${student['presentAddress']}');
    stdout.writeln('Permanent Address: ${student['permanentAddress']}');
    stdout.writeln('Contact: ${student['contactNumber']}');
    stdout.writeln('Age: ${student['age']}');
    stdout.writeln('Height: ${student['height']}m');
    stdout.writeln('-----------------------------------\n');
  }

  
}

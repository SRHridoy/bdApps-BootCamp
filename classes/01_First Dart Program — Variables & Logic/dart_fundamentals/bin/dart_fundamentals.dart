void main() {
  print("Hello World");
  var studentName = "Umar";
  studentName = "Nahiyan Uamar";
  print(studentName);
  var age = 25;
  print('"$studentName is $age years old.');
  var isMale = true;
  var height = 5.5;
  final String country = "Bangladesh";
  print(country);
  const String city = "Dhaka";
  // city = "Rajshahi";
  final today = DateTime.now();
  String normal = "Hello\nWorld";

  String raw = r"Hello\nWorld";

  String multi = '''
Hello
Flutter
Developer
''';

  print(normal);

  print(raw);

  print(multi);

  String fname = "Sohanur";
  String? lname = null;
  print('Last name : ${lname??'Rahman'}');
}

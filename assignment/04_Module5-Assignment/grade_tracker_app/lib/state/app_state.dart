import 'package:flutter/material.dart';

import '../models/subject.dart';

class AppState extends ChangeNotifier {
  final List<Subject> _subjects = [];
  bool _isDarkMode = false;
  int _currentIndex = 0;

  List<Subject> get subjects => List.unmodifiable(_subjects);

  bool get isDarkMode => _isDarkMode;

  int get currentIndex => _currentIndex;

  ThemeMode get themeMode => _isDarkMode ? ThemeMode.dark : ThemeMode.light;

  int get totalSubjects => _subjects.length;

  double get averageMark {
    if (_subjects.isEmpty) {
      return 0;
    }

    final total = _subjects.map((subject) => subject.mark).reduce((a, b) => a + b);
    return total / _subjects.length;
  }

  String get overallGrade {
    final average = averageMark;
    if (average >= 80) {
      return 'A';
    }
    if (average >= 65) {
      return 'B';
    }
    if (average >= 50) {
      return 'C';
    }
    return 'F';
  }

  List<Subject> get passingSubjects =>
      _subjects.where((subject) => subject.isPassing).toList();

  void addSubject(Subject subject) {
    _subjects.add(subject);
    notifyListeners();
  }

  void removeSubject(Subject subject) {
    _subjects.remove(subject);
    notifyListeners();
  }

  void setCurrentIndex(int index) {
    if (index == _currentIndex) {
      return;
    }

    _currentIndex = index;
    notifyListeners();
  }

  void toggleTheme() {
    _isDarkMode = !_isDarkMode;
    notifyListeners();
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:grade_tracker_app/main.dart';
import 'package:grade_tracker_app/models/subject.dart';
import 'package:grade_tracker_app/state/app_state.dart';

void main() {
  testWidgets('Grade Tracker App smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Verify that the app starts with the Add Subject screen
    expect(find.text('Add Subject'), findsWidgets);
    expect(find.byType(BottomNavigationBar), findsOneWidget);
    expect(find.byIcon(Icons.dark_mode), findsOneWidget);

    // Tap the theme toggle button
    await tester.tap(find.byIcon(Icons.dark_mode));
    await tester.pump();

    // Verify the theme button changed to light mode
    expect(find.byIcon(Icons.light_mode), findsOneWidget);
  });

  testWidgets('AppState manages subjects correctly', (
    WidgetTester tester,
  ) async {
    final appState = AppState();

    // Initially no subjects
    expect(appState.subjects, isEmpty);
    expect(appState.averageMark, 0);

    // Add a subject
    appState.addSubject(Subject(name: 'Math', mark: 85));
    expect(appState.subjects.length, 1);
    expect(appState.subjects.first.grade, 'A');

    // Add another subject
    appState.addSubject(Subject(name: 'English', mark: 60));
    expect(appState.subjects.length, 2);
    expect(appState.averageMark, 72.5);

    // Remove a subject
    appState.removeSubject(appState.subjects.first);
    expect(appState.subjects.length, 1);
  });

  testWidgets('Subject grade calculation', (WidgetTester tester) async {
    expect(Subject(name: 'Test', mark: 85).grade, 'A');
    expect(Subject(name: 'Test', mark: 70).grade, 'B');
    expect(Subject(name: 'Test', mark: 55).grade, 'C');
    expect(Subject(name: 'Test', mark: 40).grade, 'F');
  });
}

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../state/app_state.dart';
import 'add_subject_screen.dart';
import 'subject_list_screen.dart';
import 'summary_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const _screens = [
    AddSubjectScreen(),
    SubjectListScreen(),
    SummaryScreen(),
  ];

  static const _titles = ['Add Subject', 'Subject List', 'Summary'];

  @override
  Widget build(BuildContext context) {
    final appState = context.watch<AppState>();

    return Scaffold(
      appBar: AppBar(
        title: Text(_titles[appState.currentIndex]),
        actions: [
          IconButton(
            onPressed: () => context.read<AppState>().toggleTheme(),
            icon: Icon(
              appState.isDarkMode ? Icons.light_mode : Icons.dark_mode,
            ),
            tooltip: 'Toggle theme',
          ),
        ],
      ),
      body: IndexedStack(index: appState.currentIndex, children: _screens),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: appState.currentIndex,
        onTap: context.read<AppState>().setCurrentIndex,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Add'),
          BottomNavigationBarItem(icon: Icon(Icons.list), label: 'List'),
          BottomNavigationBarItem(
            icon: Icon(Icons.analytics),
            label: 'Summary',
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../state/app_state.dart';

class SubjectListScreen extends StatelessWidget {
  const SubjectListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final subjects = context.watch<AppState>().subjects;
    final colorScheme = Theme.of(context).colorScheme;

    return SafeArea(
      child: subjects.isEmpty
          ? Center(
              child: Text(
                'No subjects yet.',
                style: Theme.of(context).textTheme.titleMedium,
              ),
            )
          : ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: subjects.length,
              itemBuilder: (context, index) {
                final subject = subjects[index];

                return Dismissible(
                  key: ValueKey('${subject.name}-$index'),
                  direction: DismissDirection.endToStart,
                  background: Container(
                    margin: const EdgeInsets.only(bottom: 12),
                    decoration: BoxDecoration(
                      color: colorScheme.errorContainer,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    alignment: Alignment.centerRight,
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Icon(
                      Icons.delete,
                      color: colorScheme.onErrorContainer,
                    ),
                  ),
                  onDismissed: (_) {
                    context.read<AppState>().removeSubject(subject);
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('${subject.name} deleted'),
                      ),
                    );
                  },
                  child: Card(
                    margin: const EdgeInsets.only(bottom: 12),
                    child: ListTile(
                      title: Text(subject.name),
                      subtitle: Text(
                        'Mark: ${subject.mark} • Grade: ${subject.grade}',
                      ),
                      trailing: Text(
                        subject.grade,
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                    ),
                  ),
                );
              },
            ),
    );
  }
}

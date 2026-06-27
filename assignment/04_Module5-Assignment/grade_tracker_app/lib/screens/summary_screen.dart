import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../state/app_state.dart';

class SummaryScreen extends StatelessWidget {
  const SummaryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final state = context.watch<AppState>();
    final colorScheme = Theme.of(context).colorScheme;

    return SafeArea(
      child: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Text(
            'Summary',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          const SizedBox(height: 16),
          _SummaryCard(
            label: 'Total subjects',
            value: state.totalSubjects.toString(),
          ),
          _SummaryCard(
            label: 'Average mark',
            value: state.totalSubjects == 0
                ? '0.0'
                : state.averageMark.toStringAsFixed(1),
          ),
          _SummaryCard(
            label: 'Overall grade',
            value: state.totalSubjects == 0 ? '-' : state.overallGrade,
          ),
          _SummaryCard(
            label: 'Passing subjects',
            value: state.passingSubjects.length.toString(),
          ),
          const SizedBox(height: 8),
          Text(
            'Passing subjects',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const SizedBox(height: 8),
          if (state.passingSubjects.isEmpty)
            Text(
              'No passing subjects yet.',
              style: Theme.of(context).textTheme.bodyMedium,
            )
          else
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: state.passingSubjects
                  .map(
                    (subject) => Chip(
                      label: Text(subject.name),
                      backgroundColor: colorScheme.secondaryContainer,
                      labelStyle: Theme.of(context).textTheme.labelLarge,
                    ),
                  )
                  .toList(),
            ),
        ],
      ),
    );
  }
}

class _SummaryCard extends StatelessWidget {
  const _SummaryCard({
    required this.label,
    required this.value,
  });

  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              label,
              style: Theme.of(context).textTheme.titleMedium,
            ),
            Text(
              value,
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    color: colorScheme.primary,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}

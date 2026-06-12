import 'package:flutter/material.dart';
import 'package:quiz_app/components/elevated_button_widgets.dart';
import 'package:quiz_app/components/list_tile_widgets.dart';
import 'package:quiz_app/components/outline_button_widgets.dart';

class QuestionsScreen extends StatelessWidget {
  const QuestionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final options = ['Framework', 'Database', 'Language', 'IDE'];

    return Scaffold(
      appBar: AppBar(
        elevation: 0,

        title: Text(
          'Quiz',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Question 1/10',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'What is Flutter?',
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 24),

            ...options.map(
              (option) => Padding(
                padding: EdgeInsets.only(bottom: 14.0),
                child: Card(
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                    side: const BorderSide(color: Colors.black12),
                  ),

                  child: ListTileWidgets(
                    leading: Icon(Icons.radio_button_off, color: Colors.black),
                    title: option,
                    onTap: () {},
                    trailingIcon: Icon(Icons.info, color: Colors.black),
                  ),
                ),
              ),
            ),

            Spacer(),
            Row(
              children: [
                Expanded(child: OutlineButtonWidgets()),
                const SizedBox(width: 16),
                Expanded(child: ElevatedButtonWidgets()),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

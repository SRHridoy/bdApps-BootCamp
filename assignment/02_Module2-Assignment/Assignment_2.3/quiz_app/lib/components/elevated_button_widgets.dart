import 'package:flutter/material.dart';

class ElevatedButtonWidgets extends StatelessWidget {
  const ElevatedButtonWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        elevation: 0,
        side: BorderSide(color: Colors.black12),
        padding: EdgeInsets.symmetric(vertical: 14),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      ),
      onPressed: () {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Hello World'),
            duration: Duration(seconds: 1),
          ),
        );
      },
      child: const Text(
        'Next',
        style: TextStyle(
          color: Colors.deepPurpleAccent,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

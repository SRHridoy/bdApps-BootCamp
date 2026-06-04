import 'package:flutter/material.dart';
import 'package:quiz_application/screens/home_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: .center,
          crossAxisAlignment: .center,
          children: [
            Icon(Icons.quiz, size: 100),
            SizedBox(height: 30),
            Text("Quiz", style: TextStyle(fontSize: 20)),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                MaterialPageRoute(builder: (context) => HomePage());
              },
              child: Text("Enter"),
            ),
          ],
        ),
      ),
    );
  }
}

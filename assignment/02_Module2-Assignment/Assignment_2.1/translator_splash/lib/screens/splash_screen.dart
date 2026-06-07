import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final height = size.height;
    final width = size.width;
    return Scaffold(
      backgroundColor: Color(0xffFCFFFC),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,

          children: [
            Text(
              'Make every day \na learning \njourney',
              style: GoogleFonts.googleSans(
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
            SizedBox(height: height * .05),
            Image(image: AssetImage('assets/resource.jpeg')),
            Text(
              'An engaging way to master new languages \nand connect with cultures worldwide',
              style: GoogleFonts.poppins(
                fontSize: 12,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(height: height * .1),
            Container(
              height: height * .08,
              width: width,
              decoration: BoxDecoration(
                color: Color(0xff6A75CE),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Start Learning',
                    style: GoogleFonts.googleSans(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Icon(Icons.arrow_forward_sharp, color: Colors.white),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

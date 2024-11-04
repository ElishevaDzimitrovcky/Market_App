import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'home_page.dart';

class IntroScreen extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 100.0, vertical: 20.0),
              child: Image.asset('lib/images/avocado.png'),
            ),
            Padding(
              padding: const EdgeInsets.all(28.0),
              child: Text("We deliver groceries at your doorstep",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.notoSerif(fontSize: 36, fontWeight: FontWeight.bold)),
            ),
            Text("Fresh items every day",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, color: Colors.grey[700]),
            ),
            const Spacer(),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomePage()));
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(24),
                backgroundColor: const Color.fromARGB(255, 112, 91, 222),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16)
                ),
              ),
              child: const Text("get Started",
              style: TextStyle(color: Colors.white, fontSize: 16),),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
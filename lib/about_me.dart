// lib/about_page.dart
import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Me'),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Profile Picture
            CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage('assets/profile.jpg'),
            ),
            SizedBox(height: 20),

            // Full Name
            Text(
              'Kentaro Masud Mizoguchi',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),

            // NRP
            Text(
              'NRP: 5026211007',
              style: TextStyle(fontSize: 18),
            ),

            SizedBox(height: 20),

            // Fun Fact
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                'Fun Fact: Aku pernah menginap di stasiun kereta Malang!',
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

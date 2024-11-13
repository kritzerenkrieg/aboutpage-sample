import 'package:flutter/material.dart';
import 'package:confetti/confetti.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  late ConfettiController _confettiController;

  @override
  void initState() {
    super.initState();
    // Initialize the confetti controller
    _confettiController = ConfettiController(duration: const Duration(seconds: 3));
  }

  @override
  void dispose() {
    _confettiController.dispose(); // Dispose the confetti controller
    super.dispose();
  }

  // Function to trigger the party pop-up
  void _triggerParty() {
    // Start the confetti animation
    _confettiController.play();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Me'),
      ),
      body: Center(
        child: Stack(
          children: [
            // Party confetti animation
            ConfettiWidget(
              confettiController: _confettiController,
              blastDirectionality: BlastDirectionality.explosive, // Exploding in all directions
              shouldLoop: false, // Don't loop the animation
              colors: const [Colors.red, Colors.green, Colors.blue, Colors.yellow], // Confetti colors
              // Removed createParticlePath to use the default confetti shape
            ),

            // Main content
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Profile Picture
                const CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage('assets/profile.jpg'),
                ),
                const SizedBox(height: 20),

                // Full Name
                const Text(
                  'Kentaro Masud Mizoguchi',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),

                // NRP
                const Text(
                  'NRP: 5026211007',
                  style: TextStyle(fontSize: 18),
                ),

                const SizedBox(height: 20),

                // Fun Fact
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Container(
                    color: Color(0xFF00AEFF), // Pastel blue background
                    padding: EdgeInsets.all(16.0), // Padding inside the container
                    child: Text(
                      'Fun Fact: Aku pernah menginap di stasiun kereta Malang!',
                      style: TextStyle(fontSize: 16, color: Colors.white), // White text
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),

                const SizedBox(height: 20),

                // The card with a shadow and tap interaction
                GestureDetector(
                  onTap: _triggerParty, // Trigger the party pop-up when tapped
                  child: Card(
                    elevation: 5, // Adds shadow to the card
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10), // Rounded corners
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: const [
                          Icon(
                            Icons.party_mode,
                            size: 50,
                            color: Colors.purple,
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Tap here for a party pop-up!',
                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

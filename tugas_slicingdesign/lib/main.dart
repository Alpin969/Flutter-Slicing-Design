import 'package:flutter/material.dart';
import 'pages/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const LandingPage(),
    );
  }
}

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // BACKGROUND NAVY
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              width: double.infinity,
              height: 270,
              decoration: const BoxDecoration(
                color: Color(0xFF172238),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(80),
                  bottomRight: Radius.circular(80),
                ),
              ),
            ),
          ),

          // LOGO
          Positioned(
            top: 200,
            left: 0,
            right: 0,
            child: Center(
              child: Container(
                width: 100,
                height: 100,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 242, 240, 240),
                  shape: BoxShape.circle,
                ),
                child: const Center(
                  child: Icon(Icons.eco, size: 60, color: Color(0xFF96F56D)),
                ),
              ),
            ),
          ),

          // TITLE
          Positioned(
            top: 320,
            left: 0,
            right: 0,
            child: const Center(
              child: Text(
                'Leafboard',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 42,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF111827),
                ),
              ),
            ),
          ),

          // SUBTITLE
          Positioned(
            top: 410,
            left: 0,
            right: 0,
            child: const Center(
              child: Text(
                'A platform built for a new way of working',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black87,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),

          // BUTTON
          Positioned(
            top: 520,
            left: 0,
            right: 0,
            child: Center(
              child: SizedBox(
                width: 220,
                height: 40,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginPage(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF96F56D),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Get Started for Free',
                        style: TextStyle(fontSize: 16, color: Colors.black87),
                      ),
                      SizedBox(width: 5),
                      Icon(Icons.chevron_right, size: 16),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

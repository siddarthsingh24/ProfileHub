import 'package:flutter/material.dart';
import 'onboarding_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const OnboardingScreen()),
      );
    });

    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 365,
            left: 123,
            child: Image.asset(
              'assets/SoftAir.png',
              width: 129.4,
              height: 41.41,
            ),
          ),
          Positioned(
            top: 490,
            left: 58,
            child: Image.asset(
              'assets/splash.png',
              width: 258,
              height: 293,
            ),
          ),
        ],
      ),
    );
  }
}
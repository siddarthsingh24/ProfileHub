import 'package:flutter/material.dart';
import 'profile_page.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Stack(
          children: [
            Positioned(
              top: 99,
              left: 1,
              child: Image.asset(
                'assets/onboarding.png',
                width: 374,
                height: 364,
              ),
            ),
            Positioned(
              top: 552,
              left: 26,
              child: Container(
                width: 323,
                height: 205,
                padding: const EdgeInsets.all(16.0),
                decoration: const BoxDecoration(
                  color: Color(0x1A583EF2),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(0),
                    bottomLeft: Radius.circular(0),
                    bottomRight: Radius.circular(0),
                  ),
                ),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Welcome",
                      style: TextStyle(
                        color: Color(0xFF583EF2),
                        fontWeight: FontWeight.bold,
                        fontSize: 28,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      "What aspect of exploration interests you the most?",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.normal,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 721,
              left: 142,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: 91,
                    height: 36,
                    padding: const EdgeInsets.fromLTRB(37, 28, 37, 28),
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage('assets/proceed_bg.png'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(18),
                        topRight: Radius.circular(0),
                        bottomLeft: Radius.circular(0),
                        bottomRight: Radius.circular(0),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ProfilePage(),
                        ),
                      );
                    },
                    child: Image.asset(
                      'assets/proceed.png',
                      width: 91,
                      height: 36,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

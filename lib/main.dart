import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:splash/models/profile_model.dart';

import 'splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ProfileModel(), // Provide your ProfileModel here
      child: MaterialApp(
        title: 'Splash App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          fontFamily: 'Poppins',
        ),
        home: const SplashScreen(),
      ),
    );
  }
}

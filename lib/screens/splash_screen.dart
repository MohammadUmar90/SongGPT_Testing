import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'home_screen.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Icons.music_note,
      duration: 3000,
      splashTransition: SplashTransition.scaleTransition,
      backgroundColor: Colors.blue,
      nextScreen: HomeScreen(),
    );
  }
}

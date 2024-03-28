import 'dart:async';

import 'package:flutter/material.dart';
import 'package:roadside_heroes_app/constants.dart';
import 'package:roadside_heroes_app/screens/onboarding.dart';

import 'screens/user screens/images_data.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => const Onboarding(),
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = getScreenWidth(context);
    double screenHeight = getScreenHeight(context);
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.onBackground,
      body: Center(
        child: SizedBox(
          width: screenWidth * 0.8,
          height: screenHeight * 0.4,
          child: Image.asset(
            AppImages.androidSplashScreenImage,
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}

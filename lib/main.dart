import 'dart:io';

import 'package:flutter/material.dart';
import 'package:roadside_heroes_app/screens/onboarding.dart';
import 'package:roadside_heroes_app/splash_screen.dart';
import 'package:roadside_heroes_app/theme_data.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: appTheme,
      debugShowCheckedModeBanner: false,
      home: getHome(),
    );
  }

  Widget getHome() {
    if (Platform.isIOS) {
      return const Onboarding();
    } else {
      return const SplashScreen();
    }
  }
}

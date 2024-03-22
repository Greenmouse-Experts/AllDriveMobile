import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:roadside_heroes_app/screens/user%20screens/onboarding.dart';
import 'package:roadside_heroes_app/theme_data.dart';

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    FlutterNativeSplash.remove();

    return MaterialApp(
      theme: appTheme,
      debugShowCheckedModeBanner: false,
      home: const Scaffold(
        body: Onboarding(),
      ),
    );
  }
}

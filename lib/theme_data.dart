import 'package:flutter/material.dart';

final appcolorScheme = ColorScheme.fromSeed(
    seedColor: const Color.fromARGB(255, 20, 36, 76),
    onBackground: const Color.fromARGB(255, 20, 36, 76));

final containerColor = Colors.grey.withOpacity(0.3);

final appTheme = ThemeData(
  useMaterial3: true,
  colorScheme: appcolorScheme,
  scaffoldBackgroundColor: appcolorScheme.onBackground,
  appBarTheme: AppBarTheme(
    color: appcolorScheme.onBackground,
    titleTextStyle: const TextStyle(
        fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
  ),
);

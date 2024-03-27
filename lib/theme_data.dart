import 'package:flutter/material.dart';

final appcolorScheme = ColorScheme.fromSeed(
    seedColor: const Color.fromARGB(255, 20, 36, 76),
    onBackground: const Color.fromARGB(255, 20, 36, 76));

final containerColor = Colors.grey.withOpacity(0.3);

final appTheme = ThemeData(
  fontFamily: 'Gilroy',
  useMaterial3: true,
  colorScheme: appcolorScheme,
  scaffoldBackgroundColor: Colors.white,
  appBarTheme: AppBarTheme(
    color: Colors.white,
    titleTextStyle: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: appcolorScheme.onBackground),
  ),
);

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:roadside_heroes_app/constants.dart';

class RandomTextGenerator {
  static String generateRandomText() {
    List<String> texts = [
      'Lorem Ipsum',
      'Dolor Sit',
      'Amet Consectetur',
      'Adipiscing Elit',
      'Sed Do Eiusmod',
    ];
    Random random = Random();
    return texts[random.nextInt(texts.length)];
  }
}

class ServiceProvidersWidget extends StatelessWidget {
  const ServiceProvidersWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(5, (index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: ListTile(
            leading: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.blue, // Example color
              ),
              child: Image.asset(
                signedInScreenImage, // Replace with your image path
                fit: BoxFit.cover,
              ),
            ),
            title: Text(
              RandomTextGenerator.generateRandomText(),
              style: const TextStyle(color: Colors.white),
            ), // Random text
            trailing: Checkbox(
              value: false, // Example value, replace with your logic
              onChanged: (bool? value) {
                // Your logic here
              },
            ),
          ),
        );
      }),
    );
  }
}

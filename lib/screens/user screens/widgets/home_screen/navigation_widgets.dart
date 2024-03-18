import 'package:flutter/material.dart';
import 'package:roadside_heroes_app/constants.dart';
import 'package:roadside_heroes_app/screens/request_assistance.dart';

class NavigationWidget extends StatelessWidget {
  const NavigationWidget({super.key});

  Widget imageContainer(String imagePath, String text, context) {
    return GestureDetector(
      onTap: () => moveTo(const SignUpScreen(), context),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: 60,
            height: 60,
            child: Image.asset(
              imagePath,
              fit: BoxFit.contain,
            ),
          ),
          Text(
            text,
            style: const TextStyle(fontSize: 11),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              imageContainer(
                  "assets/images/Frame 1000009955.png", "Towing", context),
              addWidth(7),
              imageContainer("assets/images/Frame 1000009957.png",
                  "Fuel Delivery", context),
              addWidth(7),
              imageContainer(
                  "assets/images/Frame 1000009959.png", "Car Repair", context),
              addWidth(7),
              imageContainer(
                  "assets/images/Frame 1000009961.png", "Tire Change", context),
              addWidth(7),
              imageContainer(
                  "assets/images/Frame 1000009963.png", "Jump Start", context),
            ],
          ),
          addHeight(15),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              imageContainer("assets/images/row1.png", "Tire Pump", context),
              addWidth(7),
              imageContainer("assets/images/Frame 1000009957 (1).png",
                  "Car Lockout", context),
              addWidth(7),
              imageContainer("assets/images/Frame 1000009959 (1).png",
                  "Oil Leakage", context),
              addWidth(7),
              imageContainer("assets/images/Frame 1000009961 (1).png",
                  "Key Replace", context),
              addWidth(7),
              imageContainer(
                  "assets/images/Frame 1000009963 (1).png", "Battery", context),
            ],
          )
        ],
      ),
    );
  }
}

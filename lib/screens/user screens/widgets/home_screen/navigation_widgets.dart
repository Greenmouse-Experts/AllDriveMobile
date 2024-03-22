import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:roadside_heroes_app/constants.dart';
import 'package:roadside_heroes_app/screens/user%20screens/request_assistance.dart';

class NavigationWidget extends StatelessWidget {
  const NavigationWidget({super.key});

  Widget imageContainer(
      String imagePath, String text, context, BoxConstraints constraint) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context, rootNavigator: true).push(MaterialPageRoute(
          builder: (context) => const SignUpScreen(),
        ));
        return;
      },
      child: Container(
        width: constraint.maxWidth * 0.26,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: constraint.maxWidth * 0.20,
              height: 80,
              child: Image.asset(
                imagePath,
                fit: BoxFit.cover,
              ),
            ),
            addHeight(5),
            AutoSizeText(
              text,
              style: const TextStyle(fontWeight: FontWeight.w500),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: LayoutBuilder(
        builder: (context, constraints) => Column(
          children: [
            Container(
              width: constraints.maxWidth * 0.9,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(width: constraints.maxWidth * 0.02),
                  imageContainer(
                    "assets/images/Frame 1000009955.png",
                    "Towing service",
                    context,
                    constraints,
                  ),
                  SizedBox(width: constraints.maxWidth * 0.02),
                  imageContainer(
                    "assets/images/Frame 1000009957.png",
                    "Fuel Delivery",
                    context,
                    constraints,
                  ),
                  SizedBox(width: constraints.maxWidth * 0.02),
                  imageContainer(
                    "assets/images/Frame 1000009961.png",
                    "Tire Change",
                    context,
                    constraints,
                  ),
                ],
              ),
            ),
            addHeight(40),
            Container(
              width: constraints.maxWidth * 0.9,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(width: constraints.maxWidth * 0.02),
                  imageContainer(
                    "assets/images/Frame 1000009957 (1).png",
                    "Vehicle Lockout",
                    context,
                    constraints,
                  ),
                  SizedBox(width: constraints.maxWidth * 0.02),
                  imageContainer(
                    "assets/images/Frame 1000009963.png",
                    "Jump Start",
                    context,
                    constraints,
                  ),
                  SizedBox(width: constraints.maxWidth * 0.02),
                  imageContainer(
                    "assets/images/Frame 1000009963 (1).png",
                    "Battery Replacement",
                    context,
                    constraints,
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

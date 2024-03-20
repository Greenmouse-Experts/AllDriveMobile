import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:roadside_heroes_app/constants.dart';
import 'package:roadside_heroes_app/screens/request_assistance.dart';

class NavigationWidget extends StatelessWidget {
  final bool issignedIn;
  const NavigationWidget({super.key, required this.issignedIn});

  Widget imageContainer(
      String imagePath, String text, context, BoxConstraints constraint) {
    return GestureDetector(
      onTap: () => moveTo(SignUpScreen(),context),
      child: Column(
        children: [
          SizedBox(
            width: constraint.maxWidth * 0.25,
            height: 80,
            child: Image.asset(
              imagePath,
              fit: BoxFit.cover,
            ),
          ),
          addHeight(5),
          Container(
            width: constraint.maxWidth * 0.3,
            child: AutoSizeText(
              minFontSize: 10,
              text,
              style: const TextStyle(),
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
      child: LayoutBuilder(
        builder: (context, constraints) => Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                imageContainer("assets/images/Frame 1000009955.png", "Emergency Towing service",
                    context, constraints),
                addWidth(7),
                imageContainer("assets/images/Frame 1000009957.png",
                    "Fuel Delivery", context, constraints),
                addWidth(7),
         
                imageContainer("assets/images/Frame 1000009961.png",
                    "Tire Change", context, constraints),
                addWidth(7),
          
              ],
            ),
            addHeight(15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                imageContainer("assets/images/row1.png", "Tire Pump", context,
                    constraints),
                addWidth(7),
                imageContainer("assets/images/Frame 1000009957 (1).png",
                    "Vehicle Lockout", context, constraints),
              
                addWidth(7),
                imageContainer("assets/images/Frame 1000009961 (1).png",
                    "Jump Start", context, constraints),
                addWidth(7),
            
              ],
            ),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                     imageContainer("assets/images/Frame 1000009963.png",
                    "Jump Start", context, constraints),
                        imageContainer("assets/images/Frame 1000009963 (1).png",
                    "Battery Replacement", context, constraints),
              ],
            )
          ],
        ),
      ),
    );
  }
}

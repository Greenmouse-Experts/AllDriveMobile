import 'package:flutter/material.dart';
import 'package:roadside_heroes_app/constants.dart';
import 'package:roadside_heroes_app/screens/sign_up.dart';

class NavigationWidget extends StatelessWidget {
  const NavigationWidget({super.key});

  Widget imageContainer(String imagePath, String text, context) {
    return GestureDetector(
      onTap: () => moveTo(SignUpScreen(),context),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 70,
            height: 70,
            child: Image.asset(
              imagePath,
              fit: BoxFit.contain,
            ),
          ),
          addHeight(10),
          Text(text,style: TextStyle(fontSize: 14),)
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 3, vertical: 12),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              imageContainer("assets/images/Frame 1000009955.png", "Towing",context),
              addWidth(7),
              imageContainer(
                  "assets/images/Frame 1000009957.png", "Fuel Delivery",context),
                    addWidth(7),
              imageContainer(
                  "assets/images/Frame 1000009959.png", "Car Repair",context),
                   addWidth(7),
              imageContainer(
                  "assets/images/Frame 1000009961.png", "Tire Change",context),
       addWidth(7),
              imageContainer(
                  "assets/images/Frame 1000009963.png", "Jump Start",context),
            ],
          ),
          addHeight(20),
          Row(
            children: [
                imageContainer("assets/images/row1.png", "Tire Pump",context),
              addWidth(7),
              imageContainer(
                  "assets/images/Frame 1000009957 (1).png", "Car Lockout",context),
              addWidth(7),
              imageContainer(
                  "assets/images/Frame 1000009959 (1).png", "Oil Leakage",context),
               addWidth(7),
              imageContainer(
                  "assets/images/Frame 1000009961 (1).png", "Key Replace",context),
                  addWidth(7),
              imageContainer(
                  "assets/images/Frame 1000009963 (1).png", "Battery",context),

                  
             
            ],
          )
        ],
      ),
    );
  }
}

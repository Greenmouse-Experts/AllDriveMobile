import 'package:flutter/material.dart';
import 'package:roadside_heroes_app/screens/user%20screens/profile.dart';
import 'package:roadside_heroes_app/screens/user%20screens/request.dart';
import 'package:roadside_heroes_app/screens/user%20screens/signed_user_home.dart';

void moveTo(Widget screen, BuildContext context) {
  Navigator.of(context).push(MaterialPageRoute(
    builder: (context) => screen,
  ));
}

Widget addHeight(double height) {
  return SizedBox(
    height: height,
  );
}

Widget addWidth(double width) {
  return SizedBox(
    width: width,
  );
}

String signedInScreenImage = "assets/images/signed_in_image.png";

String unsignedInScreenImage = "assets/images/Frame 1000009840.png";

Map<String, String> requestImages = {
  "car repair": "assets/images/car_repair.png",
  "emergency towing": "assets/images/emergency_towing.png",
};

List<Widget> bodys = [
  SignedInUserHomeScreen(imagePath: signedInScreenImage),
  ProfileScreen(),
  RequestsScreen()
];

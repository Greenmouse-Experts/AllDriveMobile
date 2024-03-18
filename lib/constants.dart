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


double getScreenWidth(BuildContext context){
  return MediaQuery.of(context).size.width;

}

double getScreenHeight(BuildContext context){
  return MediaQuery.of(context).size.height;

}
Widget pageDivider({double thickeness = 10}) {
    double thickness = thickeness;
    return Divider(
      thickness: thickness,
      color: const Color(0xFFF4F4F4),
    );
  }
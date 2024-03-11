import 'package:flutter/material.dart';

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

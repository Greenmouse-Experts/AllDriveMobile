// ignore_for_file: constant_identifier_names

import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:roadside_heroes_app/screens/sign_in.dart';

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

double getScreenWidth(BuildContext context) {
  return MediaQuery.of(context).size.width;
}

double getScreenHeight(BuildContext context) {
  return MediaQuery.of(context).size.height;
}

Widget pageDivider({double thickeness = 10 , color}) {
  double thickness = thickeness;
  return Divider(
      
    thickness: thickness,
    color: color ??  const Color(0xFFF4F4F4),
  );
}

enum MenuAction {
  mark_all_as_read,
  filter_unread,
}

void showAlertDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return Platform.isIOS
          ? CupertinoAlertDialog(
              title: const Text("Sign In Required"),
              content: const Text("You have to sign in."),
              actions: <Widget>[
                CupertinoDialogAction(
                  onPressed: () {
                    Navigator.of(context).pop(); // Dismiss the dialog
                  },
                  child: const Text("Cancel"),
                ),
                CupertinoDialogAction(
                  onPressed: () {
                    moveTo(const SignInScreen(), context); // Dismiss the dialog
                  },
                  child: const Text("Sign In"),
                ),
              ],
            )
          : AlertDialog(
              title: const Text("Sign In Required"),
              content: const Text("You have to sign in."),
              actions: <Widget>[
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop(); // Dismiss the dialog
                  },
                  child: const Text("Cancel"),
                ),
                TextButton(
                  onPressed: () {
                    moveTo(const SignInScreen(), context); // Dismiss the dialog
                  },
                  child: const Text("Sign In"),
                ),
              ],
            );
    },
  );
}

enum NotificationCategory{booking,promotion,transaction,cancelled}

enum UserNotificationCategory { card, discount }

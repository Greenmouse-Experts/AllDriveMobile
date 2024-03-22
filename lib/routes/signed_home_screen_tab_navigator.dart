import 'package:flutter/material.dart';
import 'package:roadside_heroes_app/constants.dart';
import 'package:roadside_heroes_app/screens/user%20screens/profile.dart';
import 'package:roadside_heroes_app/screens/user%20screens/request.dart';
import 'package:roadside_heroes_app/screens/user%20screens/settings.dart';
import 'package:roadside_heroes_app/screens/user%20screens/signed_user_home_screen.dart';

// ignore: must_be_immutable
class SignedInTabNavigator extends StatelessWidget {
  GlobalKey<NavigatorState>? navigatorKey;
  String? tabItem;
  SignedInTabNavigator({super.key, this.navigatorKey, this.tabItem});

  @override
  Widget build(BuildContext context) {
    Widget child = Container();
    if (tabItem == "page1") {
      child = SignedInUserHomeScreen(
        imagePath: signedInScreenImage,
      );
    } else if (tabItem == "page2") {
      child = const ProfileScreen();
    } else if (tabItem == "page3") {
      child = const RequestsScreen();
    } else if (tabItem == "page4") {
      child = const SettingsScreen();
    }
    return Navigator(
      key: navigatorKey,
      onGenerateRoute: (settings) {
        return MaterialPageRoute(
          builder: (context) => child,
        );
      },
    );
  }
}

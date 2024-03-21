import 'package:flutter/material.dart';
import 'package:roadside_heroes_app/constants.dart';
import 'package:roadside_heroes_app/screens/user%20screens/about_app.dart';
import 'package:roadside_heroes_app/screens/user%20screens/terms_and_conditions.dart';
import 'package:roadside_heroes_app/screens/user%20screens/profile.dart';
import 'package:roadside_heroes_app/screens/user%20screens/request.dart';
import 'package:roadside_heroes_app/screens/user%20screens/signed_user_home.dart';
import 'package:roadside_heroes_app/screens/user%20screens/unsigned_home.dart';
import 'package:roadside_heroes_app/screens/user%20screens/unsigned_user_screen.dart';

// ignore: must_be_immutable
class UnSignedHomeScreenNavigator extends StatelessWidget {
  GlobalKey<NavigatorState>? navigatorKey;
  String? tabItem;
  UnSignedHomeScreenNavigator({super.key, this.navigatorKey, this.tabItem});

  @override
  Widget build(BuildContext context) {
    late Widget child;
    if (tabItem == "page1") {
      child = const UnSignedUserHomeScreen();
    } else if (tabItem == "page2") {
      child = const TermsAndConditionsScreen();
    } else if (tabItem == "page3") {
      child = const AboutApp();
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

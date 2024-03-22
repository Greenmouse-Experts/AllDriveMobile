import 'package:flutter/material.dart';
import 'package:roadside_heroes_app/screens/service%20personnel%20screens/profile.dart';
import 'package:roadside_heroes_app/screens/service%20personnel%20screens/requests.dart';
import 'package:roadside_heroes_app/screens/service%20personnel%20screens/service_home_screen.dart';
import 'package:roadside_heroes_app/screens/service%20personnel%20screens/settings.dart';

// ignore: must_be_immutable
class PersonnelTabNavigator extends StatelessWidget {
  GlobalKey<NavigatorState>? navigatorKey;
  String? tabItem;
  PersonnelTabNavigator({super.key, this.navigatorKey, this.tabItem});

  @override
  Widget build(BuildContext context) {
    Widget child = Container();
    if (tabItem == "page1") {
      child = const ServicePersonnelHomeScreen();
    } else if (tabItem == "page2") {
      child = const ServicePersonnelProfileScreen();
    } else if (tabItem == "page3") {
      child = const ServicePersonnelRequestScreen();
    } else if (tabItem == "page4") {
      child = const ServicePersonnelSettingScreen();
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

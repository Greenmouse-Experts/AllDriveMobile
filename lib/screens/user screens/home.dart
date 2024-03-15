import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:roadside_heroes_app/screens/user%20screens/more.dart';
import 'package:roadside_heroes_app/screens/user%20screens/profile.dart';
import 'package:roadside_heroes_app/screens/user%20screens/request.dart';
import 'package:roadside_heroes_app/screens/user%20screens/signed_user_home.dart';

Map<String, String> mapData = {"inactiveHome": ""};

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  final List<BottomNavigationBarItem> navBarItems = [
    BottomNavigationBarItem(
      activeIcon: SizedBox(
        width: 30,
        height: 40,
        child: Image.asset(
          "assets/images/head_active.png",
          fit: BoxFit.contain,
        ),
      ),
      icon: SizedBox(
        width: 30,
        height: 40,
        child: Image.asset(
          "assets/images/head_inactive.png",
          fit: BoxFit.contain,
        ),
      ),
      label: 'Home',
    ),
    BottomNavigationBarItem(
      activeIcon: SizedBox(
        width: 30,
        height: 40,
        child: Image.asset(
          "assets/images/active_profile.png",
          fit: BoxFit.contain,
        ),
      ),
      icon: SizedBox(
        width: 30,
        height: 40,
        child: Image.asset(
          "assets/images/inactive_profile.png",
          fit: BoxFit.contain,
        ),
      ),
      label: 'Profile',
    ),
    BottomNavigationBarItem(
        activeIcon: SizedBox(
          width: 30,
          height: 40,
          child: Image.asset(
            "assets/images/active_profile.png",
            fit: BoxFit.contain,
          ),
        ),
        icon: SizedBox(
          width: 30,
          height: 40,
          child: Image.asset(
            "assets/images/inactive_chat.png",
            fit: BoxFit.contain,
          ),
        ),
        label: 'Chat'),
    BottomNavigationBarItem(
      activeIcon: SizedBox(
        width: 30,
        height: 40,
        child: Image.asset(
          "assets/images/active_more.png",
          fit: BoxFit.contain,
        ),
      ),
      icon: SizedBox(
        width: 30,
        height: 40,
        child: Image.asset(
          "assets/images/inactive_more.png",
          fit: BoxFit.contain,
        ),
      ),
      label: 'More',
    ),
  ];

  final List<Widget> _tabs = [
    const SignedInUserHomeScreen(
      imagePath: 'assets/images/signed_in_image.png',
    ),
    const ProfileScreen(),
    const RequestsScreen(),
    const MoreDialog()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          onTap: (int index) {
            setState(() {
              _currentIndex = index;
            });
          },
          currentIndex: _currentIndex,
          items: navBarItems),
    );
  }
}

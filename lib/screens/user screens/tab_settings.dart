import 'package:flutter/material.dart';
import 'package:roadside_heroes_app/constants.dart';
import 'package:roadside_heroes_app/screens/user%20screens/notification.dart';

import 'package:roadside_heroes_app/screens/user%20screens/signed_user_home.dart';

class TabButtonSettings extends StatefulWidget {
  const TabButtonSettings({super.key});

  @override
  State<TabButtonSettings> createState() => _TabButtonSettingsState();
}

class _TabButtonSettingsState extends State<TabButtonSettings> {
  Widget settingContainer(
    String filePath,
    String text,
  ) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            moveToNextScreen(text);
          },
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color(0xFFEFF0F2),
            ),
            width: double.infinity,
            height: 55,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
              child: Row(
                children: [
                  SizedBox(
                    width: 20,
                    height: 30,
                    child: Image.asset(
                      filePath,
                      fit: BoxFit.contain,
                    ),
                  ),
                  addWidth(15),
                  Text(
                    text,
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.onBackground,
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        addHeight(20),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
        child: SafeArea(
          child: Column(
            children: [
              Center(
                child: SizedBox(
                    width: 200,
                    child: Image.asset(
                      "assets/images/settings_logo_image.png",
                      fit: BoxFit.contain,
                    )),
              ),
              addHeight(30),
              settingContainer(
                "assets/images/home.png",
                'Home',
              ),
              settingContainer(
                "assets/images/send.png",
                'Requests',
              ),
              settingContainer(
                "assets/images/bell.png",
                'Notifications',
              ),
              const Spacer(),
              settingContainer(
                "assets/images/settings.png",
                'Settings',
              ),
              settingContainer(
                "assets/images/log-out.png",
                'LogOut',
              ),
            ],
          ),
        ),
      ),
    );
  }

  void moveToNextScreen(String text) {
    if (text == "Home") {
      Navigator.of(context).pop();
    } else if (text == "Requests") {
      SignedHomeScreen.changePage(
        context,
        "page3",
        2,
      );
    } else if (text == "Notifications") {
      SignedHomeScreen.changePage(
        context,
        "page2",
        1,
        screen: UserNotificationScreen(),
      );
    } else if (text == "Settings") {
      SignedHomeScreen.changePage(
        context,
        "page4",
        3,
      );
    }
  }
}

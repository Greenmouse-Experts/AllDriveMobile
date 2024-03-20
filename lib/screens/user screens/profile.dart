import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:roadside_heroes_app/constants.dart';
import 'package:roadside_heroes_app/screens/user%20screens/profile_details.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  Widget profileContainers(
      {required String imagePath,
      required String text,
      required BuildContext context}) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color(0xFFEFF0F2)),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
            child: Row(
              children: [
                Container(
                  width: 30,
                  height: 30,
                  child: Image.asset(imagePath),
                ),
                addWidth(10),
                Text(
                  text,
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.onBackground,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                const Spacer(),
                Icon(Icons.arrow_forward_ios_rounded)
              ],
            ),
          ),
        ),
        addHeight(10),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: null,
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          "My Profile",
          style: TextStyle(
              color: Theme.of(context).colorScheme.onBackground,
              fontSize: 20,
              fontWeight: FontWeight.bold),
        ),
        titleTextStyle:
            TextStyle(color: Theme.of(context).colorScheme.onBackground),
      ),
      backgroundColor: Colors.white,
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () => moveTo(const ProfilDetail(), context),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: const Color(0xFFEFF0F2))),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 20),
                        child: Row(
                          children: [
                            Container(
                              width: 60,
                              height: 60,
                              child: Image.asset(
                                  "assets/images/signed_in_image.png"),
                            ),
                            addWidth(10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Dwaelo",
                                  style: TextStyle(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onBackground,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                                const Text(
                                  "Victor Okatta",
                                  style: TextStyle(
                                    color: const Color(0xFFBDBDBD),
                                  ),
                                ),
                              ],
                            ),
                            const Spacer(),
                            Icon(Icons.arrow_forward_ios_rounded)
                          ],
                        ),
                      ),
                    ),
                  ),
                  addHeight(20),
                  pageDivider(thickeness: 3),
                  addHeight(10),
                  Text(
                    "Settings and preferences",
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.onBackground,
                        fontSize: 17,
                        fontWeight: FontWeight.bold),
                  ),
                  addHeight(20),
                  profileContainers(
                      imagePath: "assets/images/notifications_profile.png",
                      text: "Notifcations",
                      context: context),
                  addHeight(10),
                  profileContainers(
                      imagePath: "assets/images/settings_icon.png",
                      text: "Settings",
                      context: context),
                  pageDivider(thickeness: 3),
                  addHeight(10),
                  Text(
                    "Support",
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.onBackground,
                        fontSize: 17,
                        fontWeight: FontWeight.bold),
                  ),
                  addHeight(20),
                  profileContainers(
                      imagePath: "assets/images/clipboardtext.png",
                      text: "Help Centre",
                      context: context)
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

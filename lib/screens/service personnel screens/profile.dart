import 'package:flutter/material.dart';
import 'package:roadside_heroes_app/constants.dart';
import 'package:roadside_heroes_app/screens/service%20personnel%20screens/notification.dart';
import 'package:roadside_heroes_app/screens/service%20personnel%20screens/profile_details.dart';
import 'package:roadside_heroes_app/screens/service%20personnel%20screens/service_company.dart';
import 'package:roadside_heroes_app/screens/service%20personnel%20screens/service_personnel_home.dart';
import 'package:roadside_heroes_app/screens/service%20personnel%20screens/settings.dart';

import '../user screens/images_data.dart';

class ServicePersonnelProfileScreen extends StatelessWidget {
  const ServicePersonnelProfileScreen({super.key});

  Widget profileContainers(
      {required String imagePath,
      required String text,
      required BuildContext context}) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            movetoNextScreen(text, context);
          },
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color(0xFFEFF0F2)),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              child: Row(
                children: [
                  SizedBox(
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
                        fontWeight: FontWeight.w500),
                  ),
                  const Spacer(),
                  const Icon(Icons.arrow_forward_ios_rounded)
                ],
              ),
            ),
          ),
        ),
        addHeight(10),
      ],
    );
  }

  void movetoNextScreen(String text, BuildContext context) {
    if (text == "Service Company") {
      moveTo(const ServiceCompany(), context);
    } else if (text == "Notifcations") {
      moveTo(const ServicePersonnelNotificationScreen(), context);
    } else if (text == "Settings") {
      ServicePersonnelHome.changePage(
        context,
        "page4",
        3,
      );
    } else if (text == "Help Centre") {}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
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
                    onTap: () => moveTo(
                        const ServicePersonnelProfileDetailsScreen(), context),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: const Color(0xFFEFF0F2))),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 20),
                        child: Row(
                          children: [
                            SizedBox(
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
                                      fontWeight: FontWeight.w600,
                                      fontSize: 20),
                                ),
                                const Text(
                                  "Victor Okatta",
                                  style: TextStyle(
                                    color: Color(0xFFBDBDBD),
                                  ),
                                ),
                              ],
                            ),
                            const Spacer(),
                            const Icon(Icons.arrow_forward_ios_rounded)
                          ],
                        ),
                      ),
                    ),
                  ),
                  addHeight(20),
                  profileContainers(
                      imagePath: AppImages.servicePersonnelProfileCompanyIcon,
                      text: "Service Company",
                      context: context),
                  pageDivider(thickeness: 3),
                  addHeight(10),
                  Text(
                    "Settings and preferences",
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.onBackground,
                        fontSize: 17,
                        fontWeight: FontWeight.w500),
                  ),
                  addHeight(20),
                  profileContainers(
                      imagePath:
                          AppImages.servicePersonnelProfileNotificationIcon,
                      text: "Notifcations",
                      context: context),
                  addHeight(10),
                  profileContainers(
                      imagePath: AppImages.servicePersonnelProfileSettingsIcon,
                      text: "Settings",
                      context: context),
                  pageDivider(thickeness: 3),
                  addHeight(10),
                  Text(
                    "Support",
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.onBackground,
                        fontSize: 17,
                        fontWeight: FontWeight.w500),
                  ),
                  addHeight(20),
                  profileContainers(
                      imagePath:
                          AppImages.servicePersonneProfilelHelpCentreIcon,
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

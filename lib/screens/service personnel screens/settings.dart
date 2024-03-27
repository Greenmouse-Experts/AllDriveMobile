import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:roadside_heroes_app/constants.dart';
import 'package:roadside_heroes_app/screens/service%20personnel%20screens/faq.dart';
import 'package:roadside_heroes_app/screens/service%20personnel%20screens/notification.dart';
import 'package:roadside_heroes_app/screens/service%20personnel%20screens/profile_details.dart';
import 'package:roadside_heroes_app/screens/user%20screens/authentication.dart';
import 'package:roadside_heroes_app/screens/user%20screens/terms_and_conditions.dart';

class ServicePersonnelSettingScreen extends StatelessWidget {
  const ServicePersonnelSettingScreen({super.key});

  Widget getListTile(String text, context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15), // Adjusted padding
      child: ListTile(
        onTap: () {
          movetoNextPage(text, context);
        },
        contentPadding: EdgeInsets
            .zero, // Added contentPadding to remove default ListTile padding

        leading: Text(
          text,
          style: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
        ),
        trailing: const Icon(Icons.arrow_forward_ios),
      ),
    );
  }

  void logOutDialog(context) {
    showModalBottomSheet(
      useRootNavigator: true,
      context: context,
      builder: (context) => Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Theme.of(context).colorScheme.onBackground,
        ),
        width: getScreenWidth(context),
        height: getScreenHeight(context) * 0.3,
        child: LayoutBuilder(builder: (context, constraints) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Log Out",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              addHeight(constraints.maxHeight * 0.05),
              const Text(
                "Are you sure you want to log out?",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
              ),
              addHeight(constraints.maxHeight * 0.1),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: constraints.maxWidth * 0.4,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      style: ElevatedButton.styleFrom(
                        side: const BorderSide(
                            width: 1.5,
                            color: Color.fromARGB(255, 194, 156, 100)),
                        backgroundColor: const Color.fromARGB(0, 0, 0, 0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        minimumSize: Size(constraints.maxWidth * 0.4,
                            constraints.maxHeight * 0.25),
                      ),
                      child: const Text(
                        "Cancel",
                        style: TextStyle(
                          color: Color.fromRGBO(254, 180, 112, 1),
                          fontWeight: FontWeight.w900,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                  addWidth(constraints.maxWidth * 0.05),
                  SizedBox(
                    width: constraints.maxWidth * 0.4,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => const AuthenticationScreen(),
                        ));
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromRGBO(254, 180, 112, 1),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        minimumSize: Size(constraints.maxWidth * 0.4,
                            constraints.maxHeight * 0.25),
                      ),
                      child: const Text(
                        "LogOut",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w900,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          );
        }),
      ),
    );
  }

  void movetoNextPage(text, context) {
    if (text == "FAQ") {
      moveTo(FaqScreen(), context);
    } else if (text == "Terms and Conditions") {
      moveTo(const TermsAndConditionsScreen(), context);
    } else if (text == "Notifications") {
      moveTo(const ServicePersonnelNotificationScreen(), context);
    } else if (text == "My Account") {
      moveTo(const ServicePersonnelProfileDetailsScreen(), context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: Colors.white,
        title: const Text(
          "Settings",
          style: TextStyle(fontSize: 18),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: LayoutBuilder(builder: (context, constraints) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              addHeight(constraints.maxHeight * 0.03),
              getListTile("My Account", context),
              getListTile("Notifications", context),
              getListTile("History and Requests", context),
              pageDivider(thickeness: 2),
              addHeight(10),
              const Text("Support",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              getListTile("FAQ", context),
              getListTile("Terms and Conditions", context),
              GestureDetector(
                onTap: () {
                  logOutDialog(context);
                },
                child: const Text(
                  "Log Out",
                  style: TextStyle(
                      decoration: TextDecoration.underline,
                      decorationColor: Color.fromRGBO(255, 0, 0,
                          1), // Optional: specify the underline color
                      decorationStyle: TextDecorationStyle.solid,
                      color: Color.fromRGBO(255, 0, 0, 1),
                      fontSize: 17,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ],
          );
        }),
      ),
    );
  }
}

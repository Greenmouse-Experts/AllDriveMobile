import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:roadside_heroes_app/constants.dart';
import 'package:roadside_heroes_app/screens/service%20personnel%20screens/service_personnel_home.dart';

class LocationScreen extends StatefulWidget {
  const LocationScreen({super.key});

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  Widget getSignInPage() {
    // if (value % 2 != 0) {
    return const ServicePersonnelHome();
    // }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.onBackground,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: LayoutBuilder(builder: (context, constraints) {
          double screenWidth = constraints.maxWidth;
          double screenHeight = constraints.maxHeight;
          bool isMobile = screenWidth < 600;
          return SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Center(child: Image.asset("assets/images/icon-location.png")),
                addHeight(30),
                const AutoSizeText(
                  textAlign: TextAlign.center,
                  "Enable precise\n"
                  "location",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
                addHeight(20),
                SizedBox(
                  width: constraints.maxWidth,
                  child: AutoSizeText(
                    maxLines: 3,
                    textAlign: TextAlign.center,
                    "You'll  need to be able to enable your location in order to \n"
                    "use this app",
                    style: TextStyle(
                        color: Colors.white.withOpacity(0.4),
                        fontWeight: FontWeight.bold),
                  ),
                ),
                addHeight(isMobile ? screenHeight * 0.2 : screenHeight * 0.3),
                Hero(
                        tag: "signin",
                  child: ElevatedButton(
                    onPressed: () => moveTo(getSignInPage(), context),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40),
                        // Add border side here
                      ),
                      minimumSize: isMobile
                          ? Size(screenWidth * 0.8, 60)
                          : Size(screenWidth * 0.6, 80),
                    ),
                    child: Text(
                      "Enable",
                      style: TextStyle(
                        color: const Color.fromARGB(255, 20, 36, 76),
                        fontWeight: FontWeight.w800,
                        fontSize: isMobile ? 15 : 20,
                      ),
                    ),
                  ),
                ),
                addHeight(isMobile ? screenHeight * 0.05 : screenHeight * 0.08),
              ],
            ),
          );
        }),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:roadside_heroes_app/constants.dart';
import 'package:roadside_heroes_app/screens/sign_in.dart';
import 'package:roadside_heroes_app/screens/user%20screens/unsigned_home.dart';

class AuthenticationScreen extends StatefulWidget {
  const AuthenticationScreen({Key? key}) : super(key: key);

  @override
  State<AuthenticationScreen> createState() => _AuthenticationScreenState();
}

class _AuthenticationScreenState extends State<AuthenticationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          double screenWidth = constraints.maxWidth;
          double screenHeight = constraints.maxHeight;
          bool isMobile = screenWidth < 600;

          return SingleChildScrollView(
            child: SizedBox(
              height: getScreenHeight(context),
              child: Stack(
                children: [
                  Positioned.fill(
                    child: Image.asset(
                      "assets/images/auth copy.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    top: 10,
                    left: 50,
                    right: 50,
                    child: SafeArea(
                      child: SizedBox(
                        width: 150,
                        height: 100,
                        child: Image.asset(
                          "assets/images/sos image.png",
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: isMobile ? screenHeight * 0.50 : screenHeight * 0.52,
                    left: isMobile ? 2 : screenWidth * 0.05,
                    right: isMobile ? 2 : screenWidth * 0.05,
                    child: SafeArea(
                      child: Column(
                        children: [
                          Text(
                            "Get booked through\n"
                            "your service company\n"
                            "to render help",
                            style: TextStyle(
                              fontSize: isMobile ? 31 : 55,
                              fontFamily: "Gilroy-SemiBold",
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          addHeight(40),
                          ElevatedButton(
                            onPressed: () => moveTo(
                              const unsignedHomeScreen(),
                              context,
                            ),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color.fromARGB(0, 0, 0, 0),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40),
                                side: const BorderSide(
                                    width: 1.5,
                                    color: Color.fromARGB(255, 194, 156,
                                        100)), // Add border side here
                              ),
                              minimumSize: isMobile
                                  ? Size(screenWidth * 0.9, 55)
                                  : Size(screenWidth * 0.8, 85),
                            ),
                            child: Text(
                              "Request Assistance",
                              style: TextStyle(
                                color: const Color.fromARGB(255, 194, 156, 100),
                                fontWeight: FontWeight.w900,
                                fontSize: isMobile ? 14 : 20,
                              ),
                            ),
                          ),
                          SizedBox(height: isMobile ? 10 : 20),
                          Hero(
                            tag: "signin",
                            child: ElevatedButton(
                              onPressed: () =>
                                  moveTo(const SignInScreen(), context),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(40),
                                  // Add border side here
                                ),
                                minimumSize: isMobile
                                    ? Size(screenWidth * 0.9, 55)
                                    : Size(screenWidth * 0.8, 85),
                              ),
                              child: Text(
                                "Sign in",
                                style: TextStyle(
                                  color: const Color.fromARGB(255, 20, 36, 76),
                                  fontWeight: FontWeight.w900,
                                  fontSize: isMobile ? 14 : 20,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

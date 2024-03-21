// sign_in.dart
import 'package:flutter/material.dart';
import 'package:roadside_heroes_app/constants.dart';
import 'package:roadside_heroes_app/screens/user%20screens/location.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  String enteredEmail = "";
  String enteredPassword = "";
  bool obscureText = true;
  final formKey = GlobalKey<FormState>();

  void _closeKeyboard() {
    FocusScope.of(context).unfocus();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _closeKeyboard,
      child: Scaffold(
        body: LayoutBuilder(
          builder: (context, constraints) {
            double screenWidth = constraints.maxWidth;
            double screenHeight = constraints.maxHeight;
            bool isMobile = screenWidth < 600;

            return SafeArea(
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.only(
                    left: isMobile ? 20 : screenWidth * 0.07,
                    right: isMobile ? 20 : screenWidth * 0.07,
                    top: isMobile ? 0 : screenHeight * 0.05,
                  ),
                  child: Form(
                    key: formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: isMobile ? 30 : 20),
                            child: SizedBox(
                              width: isMobile ? 100 : 150,
                              height: isMobile ? 100 : 150,
                              child: Image.asset(
                                "assets/images/sos image.png",
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                        ),
                        Text(
                          "Sign In",
                          style: TextStyle(
                            fontSize: isMobile ? 25 : 50,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        addHeight(isMobile ? 20 : 30),
                        Text(
                          "Sign in as Service Personnel or Motorist",
                          style: TextStyle(
                            fontSize: isMobile ? 15 : 30,
                            color: Colors.white.withOpacity(0.7),
                          ),
                        ),
                        addHeight(isMobile ? 30 : 50),
                        Text(
                          "Full Name",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: isMobile ? 15 : 25,
                              fontWeight: FontWeight.bold),
                        ),
                        addHeight(10),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.3),
                            borderRadius: BorderRadius.circular(14),
                          ),
                          height: isMobile ? 55 : 85,
                          width:
                              isMobile ? screenWidth * 0.9 : screenWidth * 0.8,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: SizedBox(
                                    width: isMobile ? 20 : 32,
                                    height: isMobile ? 20 : 40,
                                    child: Image.asset(
                                      "assets/images/usernameheader.png",
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                                addWidth(20),
                                Expanded(
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      hintStyle: TextStyle(
                                          color: Colors.white.withOpacity(0.3),
                                          fontSize: isMobile ? 18 : 22),
                                      hintText: "Username",
                                      border: InputBorder.none,
                                    ),
                                    keyboardType: TextInputType.emailAddress,
                                    autocorrect: false,
                                    textCapitalization: TextCapitalization.none,
                                    onSaved: (newValue) {
                                      enteredEmail = newValue!;
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        addHeight(20),
                        Text(
                          "Password",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: isMobile ? 15 : 25,
                              fontWeight: FontWeight.bold),
                        ),
                        addHeight(10),
                        Container(
                          height: isMobile ? 55 : 85,
                          width:
                              isMobile ? screenWidth * 0.9 : screenWidth * 0.8,
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.3),
                            borderRadius: BorderRadius.circular(14),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: SizedBox(
                                    width: isMobile ? 20 : 32,
                                    height: isMobile ? 20 : 40,
                                    child: Image.asset(
                                      "assets/images/Group 4.png",
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                                addWidth(20),
                                Expanded(
                                  child: TextFormField(
                                    obscureText: obscureText,
                                    decoration: InputDecoration(
                                      hintStyle: TextStyle(
                                          color: Colors.white.withOpacity(0.3),
                                          fontSize: isMobile ? 18 : 22),
                                      hintText: "Password",
                                      border: InputBorder.none,
                                    ),
                                    keyboardType: TextInputType.emailAddress,
                                    autocorrect: false,
                                    textCapitalization: TextCapitalization.none,
                                    onSaved: (newValue) {
                                      enteredEmail = newValue!;
                                    },
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        obscureText = !obscureText;
                                      });
                                    },
                                    child: Container(
                                      width: isMobile ? 30 : 32,
                                      height: isMobile ? 30 : 40,
                                      child: Image.asset(obscureText == true
                                          ? "assets/images/password_visibility_off.png"
                                          : "assets/images/password_visibility_on.png"),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        addHeight(10),
                        Row(
                          children: [
                            SizedBox(
                              width: isMobile ? 20 : 32,
                              height: isMobile ? 20 : 40,
                              child: Image.asset(
                                "assets/images/forgot_password.png",
                                fit: BoxFit.contain,
                              ),
                            ),
                            addWidth(20),
                            GestureDetector(
                              onTap: () {},
                              child: Text(
                                "Forgot Password?",
                                style: TextStyle(
                                    color: Colors.white.withOpacity(0.7),
                                    fontSize: isMobile ? 15 : 25),
                              ),
                            )
                          ],
                        ),
                        addHeight(50),
                        Hero(
                          tag: "signin",
                          child: ElevatedButton(
                            onPressed: () =>
                                moveTo(const LocationScreen(), context),
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
              ),
            );
          },
        ),
      ),
    );
  }
}

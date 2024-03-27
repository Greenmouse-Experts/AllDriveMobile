import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:roadside_heroes_app/constants.dart';


class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  String enteredEmail = "";

  String enteredPassword = "";

  bool obscureText = true;

  final formKey = GlobalKey<FormState>();

  void _closeKeyboard() {
    FocusScope.of(context).unfocus();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.onBackground,
      body: GestureDetector(
        onTap: _closeKeyboard,
        child: LayoutBuilder(
          builder: (context, constraints) {
            double screenWidth = constraints.maxWidth;
            double screenHeight = constraints.maxHeight;
            bool isMobile = screenWidth < 600;

            return SafeArea(
              child: Padding(
                padding: EdgeInsets.only(
                  left: isMobile ? 20 : screenWidth * 0.07,
                  right: isMobile ? 20 : screenWidth * 0.07,
                  top: isMobile ? screenHeight * 0.13 : screenHeight * 0.05,
                ),
                child: Form(
                  key: formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: isMobile ? 20 : 20),
                          child: SizedBox(
                            width: isMobile ? 150 : 150,
                            height: isMobile ? 150 : 150,
                            child: Image.asset(
                              "assets/images/sos image.png",
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ),
                       AutoSizeText(
                        maxLines: 2,
                        "Forgot Password?",
                        style: TextStyle(
                          fontSize: isMobile ? 20 : 50,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      addHeight(5),
                      AutoSizeText(
                        maxLines: 1,
                        "Enter the email address associated with your account",
                        style: TextStyle(
                          fontSize: isMobile ? 15 : 50,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      addHeight(isMobile ? 20 : 30),
                      Text(
                        "Email",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: isMobile ? 16 : 25,
                            fontWeight: FontWeight.bold),
                      ),
                      addHeight(10),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(14),
                        ),
                        height: isMobile ? 55 : 85,
                        width: isMobile ? screenWidth * 0.9 : screenWidth * 0.8,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Row(
                            children: [
                              Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SizedBox(
                            width: isMobile ? 27 : 32,
                            height: isMobile ? 27 : 40,
                            child: Image.asset(
                              "assets/images/email_pin.png",
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
                                    hintText: "Email",
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
                      addHeight(30),
                      Hero(
                        tag: "signin",
                        child: ElevatedButton(
                          onPressed: () {
                            // moveTo(const SignInScreen(), context),
                          },
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
                            "CONTINUE",
                            style: TextStyle(
                              color: const Color.fromARGB(255, 20, 36, 76),
                              fontWeight: FontWeight.w900,
                              fontSize: isMobile ? 14 : 20,
                            ),
                          ),
                        ),
                      ),
                      addHeight(20),
                        Row(
                          children: [
                            const Text("remembered your password?",style: TextStyle(color: Colors.white,fontSize:15 ),),
                            addWidth(5),
                            GestureDetector(
                              onTap: () {
                              Navigator.of(context).pop();
                              },
                              child: Text(
                                "Login",
                                style: TextStyle(
                                                        decoration: TextDecoration.underline,
                      decorationColor: Colors.white, // Optional: specify the underline color
                      decorationStyle: TextDecorationStyle.solid,
                      color: Colors.white,
                      fontSize: isMobile ? 15 : 20,
                      fontWeight: FontWeight.w600),
                              ),
                            )
                          ],
                        ),
                    ],
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

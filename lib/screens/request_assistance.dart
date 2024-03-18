import 'package:flutter/material.dart';
import 'package:roadside_heroes_app/constants.dart';
import 'package:roadside_heroes_app/image%20data/sign_up_image_data.dart';
import 'package:roadside_heroes_app/screens/home.dart';
import 'package:roadside_heroes_app/screens/sign_up_widgets/check_in_animation.dart';
import 'package:roadside_heroes_app/screens/sign_up_widgets/form_widgets/first_form_view.dart';
import 'package:roadside_heroes_app/screens/sign_up_widgets/form_widgets/second_form_view.dart';
import 'package:roadside_heroes_app/screens/sign_up_widgets/form_widgets/third_form_view.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  int index = 0;
  double indicatorValue = 0.5;

  void getIndicatorValue() {
    setState(() {
      indicatorValue = (index + 1) / 3;

      // Ensure that the value is clamped between 0 and 1
      indicatorValue = indicatorValue.clamp(0.0, 1.0);
    });
  }

  void showModalDialog(BuildContext context, double screenWidth) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          width: screenWidth,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color.fromARGB(255, 20, 36, 76),
          ),
          height: 400,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const CheckImageAnimation(),
                addHeight(20),
                const Text(
                  'Submitted succesfully',
                  style: TextStyle(fontSize: 25, color: Colors.white),
                ),
                addHeight(20),
                const Text(
                textAlign: TextAlign.center,
                  "You will get notified once your request has\n"
                  "been accepted",
                  style: TextStyle(fontSize: 17, color: Colors.white,),
                ),
                addHeight(40),
                SizedBox(
                  width: screenWidth * 0.9,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => HomeScreen()));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor:
                          Theme.of(context).colorScheme.onBackground,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40),
                        side: const BorderSide(
                            width: 1.5,
                            color: Colors.white), // Add border side here
                      ),
                      minimumSize: screenWidth < 600
                          ? Size(screenWidth * 0.5, 52)
                          : Size(screenWidth * 0.3, 85),
                    ),
                    child: const Text(
                      "Continue to App",
                      style: TextStyle(
                        color: Color.fromARGB(255, 205, 145, 56),
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    getIndicatorValue();
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: const Icon(
            Icons.arrow_back,
            size: 27,
            color: Colors.white,
          ),
        ),
        title: const Text(
          "Request Assistance",
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        elevation: 0,
        backgroundColor: const Color.fromARGB(255, 20, 36, 76),
      ),
      backgroundColor: const Color.fromARGB(255, 20, 36, 76),
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: LayoutBuilder(
          builder: (context, constraints) {
            final isMobile = constraints.maxWidth < 600;
            final screenWidth = MediaQuery.of(context).size.width;

            return SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    Center(
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.9,
                        child: Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.8,
                                height: 2,
                                child: LinearProgressIndicator(
                                  backgroundColor: Colors.grey,
                                  color: Colors.orange,
                                  value: indicatorValue,
                                  minHeight: 0.2,
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(2)),
                                    width: MediaQuery.of(context).size.width *
                                        0.15,
                                    height: 45,
                                    child: Image.asset(
                                      stepImages['first step']!,
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(2)),
                                    width: MediaQuery.of(context).size.width *
                                        0.15,
                                    height: 45,
                                    child: Image.asset(
                                      stepImages[index > 0
                                          ? 'complete second step'
                                          : 'incomplete second step']!,
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(2)),
                                    width: MediaQuery.of(context).size.width *
                                        0.15,
                                    height: 45,
                                    child: Image.asset(
                                      stepImages[index > 1
                                          ? "complete third step"
                                          : "incomplete third step"]!,
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    addHeight(25),
                    if (index == 0) ...[
                      const FirstFormView(),
                      addHeight(50),
                    ],
                    if (index == 1) ...[
                      const SecondFormView(),
                      addHeight(15),
                    ],
                    if (index >= 2) ...[
                      const ThirdFormView(),
                      addHeight(10),
                    ],
                    SizedBox(
                      width: screenWidth * 0.9,
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            if (index <= 2) {
                              index++;
                            }
                          });
                          if (index > 2) {
                            showModalDialog(context, screenWidth);
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40),
                          ),
                          minimumSize: isMobile
                              ? Size(screenWidth * 0.5, 52)
                              : Size(screenWidth * 0.3, 85),
                        ),
                        child: Text(
                          index < 2 ? "Next" : "Submit",
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
            );
          },
        ),
      ),
    );
  }
}

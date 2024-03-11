import 'package:flutter/material.dart';
import 'package:roadside_heroes_app/constants.dart';
import 'package:roadside_heroes_app/image%20data/sign_up_image_data.dart';
import 'package:roadside_heroes_app/screens/widgets.dart/first_form_view.dart';
import 'package:roadside_heroes_app/screens/widgets.dart/second_form_view.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  int index = 0;
  double indicatorValue = 0.3;

  void getIndicatorValue() {
    setState(() {
      indicatorValue = (index + 1) / 3;

      // Ensure that the value is clamped between 0 and 1
      indicatorValue = indicatorValue.clamp(0.0, 1.0);
    });
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
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        elevation: 0,
        backgroundColor: const Color.fromARGB(255, 20, 36, 76),
      ),
      backgroundColor: const Color.fromARGB(255, 20, 36, 76),
      body: GestureDetector(
        onTap: () {
          
        },
        child: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Center(
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.9,
                      child: Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(2)),
                                  width: MediaQuery.of(context).size.width * 0.15,
                                  height: 45,
                                  child: Image.asset(
                                    stepImages['first step']!,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(2)),
                                  width: MediaQuery.of(context).size.width * 0.15,
                                  height: 45,
                                  child: Image.asset(
                                    stepImages[index == 1 ? 'complete second step' : 'incomplete second step']!,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(2)),
                                  width: MediaQuery.of(context).size.width * 0.15,
                                  height: 45,
                                  child: Image.asset(
                                    stepImages[index == 2 ? "complete third step" : "incomplete third step"]!,
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
                  if (index == 0) ...[
                    FirstFormView(),
                    addHeight(50),
                  ],
                  if (index == 1 || index == 2) ...[
                    SecondFormView(),
                    addHeight(20),
                  ],
                  LayoutBuilder(
                    builder: (context, constraints) {
                         final isMobile = constraints.maxWidth < 600;
              final screenWidth = MediaQuery.of(context).size.width;
                      return SizedBox(
                        width: constraints.maxWidth * 0.9,
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              index++;
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40),
                            ),
                            minimumSize: isMobile ? Size(screenWidth * 0.5, 58) : Size(screenWidth * 0.3, 85),
                          ),
                          child: Text(
                            "Next",
                            style: TextStyle(
                              color: const Color.fromARGB(255, 20, 36, 76),
                              fontWeight: FontWeight.w900,
                              fontSize: isMobile ? 14 : 20,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:roadside_heroes_app/constants.dart';
import 'package:roadside_heroes_app/screens/sign_up_widgets/check_in_animation.dart';

class ProfilDetail extends StatefulWidget {
  const ProfilDetail({super.key});

  @override
  State<ProfilDetail> createState() => _ProfilDetailState();
}

class _ProfilDetailState extends State<ProfilDetail> {
  bool isEditing = false;

  int button_press_count = 0;

  void showModalDialog(BuildContext context, double screenWidth) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          width: screenWidth,
          height: 400,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color.fromARGB(255, 20, 36, 76),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const CheckImageAnimation(),
                addHeight(20),
                const Text(
                  'Profile Submitted succesfully',
                  style: TextStyle(fontSize: 25, color: Colors.white),
                ),
                SizedBox(
                  width: screenWidth * 0.9,
                  child: ElevatedButton(
                    onPressed: () {},
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
    final screenWidth = getScreenWidth(context);
    final screenHeight = getScreenHeight(context);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "My Profile",
          style: TextStyle(color: Theme.of(context).colorScheme.onBackground),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  button_press_count += 1;
                  isEditing = !isEditing;

                  if (button_press_count % 2 == 0) {
                    showModalDialog(context, screenWidth);
                    return;
                  }
                });
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: isEditing == true
                      ? Theme.of(context).colorScheme.onBackground
                      : Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  minimumSize: const Size(25, 40)),
              child: Text(
                isEditing ? "Done" : "Edit",
                style: TextStyle(
                  color: isEditing
                      ? Colors.white
                      : Theme.of(context).colorScheme.onBackground,
                  fontWeight: FontWeight.w900,
                  fontSize: 14,
                ),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(child: LayoutBuilder(
        builder: (context, constraints) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Form(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Container(
                      width: 100,
                      height: 100,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Image.asset("assets/images/signed_in_image.png",),
                          GestureDetector(
                            onTap: () {
                              log("sss");
                            },
                            child: Container(
                              width: 30,
                              height: 30,
                              child: Image.asset("assets/images/camera_icon.png"),),
                          )
                        ],
                      ),
                    ),
                  ),
                  Center(
                      child: Text(
                    "Victor okatta",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.onBackground),
                  )),
                  Center(
                    child: Text(
                      "victor@gmail.com",
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).colorScheme.onBackground),
                    ),
                  ),
                  const Text(
                    "First Name",
                    style: const TextStyle(
                        color: Color.fromRGBO(100, 116, 139, 1.0)),
                  ),
                  Container(
                    width: constraints.maxWidth * 0.9,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Color(0xFFF1F5F9),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      child: Expanded(
                        child: TextFormField(
                          enabled: isEditing,
                          initialValue: 'Victor',
                          decoration: InputDecoration(
                            border: InputBorder.none,
                          ),
                          keyboardType: TextInputType.name,
                          autocorrect: false,
                          textCapitalization: TextCapitalization.none,
                        ),
                      ),
                    ),
                  ),
                  addHeight(20),
                  const Text(
                    "Last Name",
                    style: const TextStyle(
                        color: Color.fromRGBO(100, 116, 139, 1.0)),
                  ),
                  addHeight(10),
                  Container(
                    width: constraints.maxWidth * 0.9,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Color(0xFFF1F5F9),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      child: Expanded(
                        child: TextFormField(
                          enabled: isEditing,
                          initialValue: 'Okatta',
                          decoration: InputDecoration(
                            border: InputBorder.none,
                          ),
                          keyboardType: TextInputType.name,
                          autocorrect: false,
                          textCapitalization: TextCapitalization.none,
                        ),
                      ),
                    ),
                  ),
                  addHeight(20),
                  const Text(
                    "Email Address",
                    style: const TextStyle(
                        color: Color.fromRGBO(100, 116, 139, 1.0)),
                  ),
                  addHeight(10),
                  Container(
                    width: constraints.maxWidth * 0.9,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Color(0xFFF1F5F9),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      child: Row(
                        children: [
                          Expanded(
                            child: TextFormField(
                              enabled: isEditing,
                              initialValue: 'victor@gmail.com',
                              decoration: InputDecoration(
                                hintStyle: TextStyle(
                                  fontSize: 15,
                                ),
                                border: InputBorder.none,
                              ),
                              keyboardType: TextInputType.emailAddress,
                              autocorrect: false,
                              textCapitalization: TextCapitalization.none,
                            ),
                          ),
                          addWidth(10),
                          Container(
                            width: 30,
                            height: 30,
                            child: Image.asset(
                                "assets/images/mdi_eye-lock-outline.png"),
                          ),
                        ],
                      ),
                    ),
                  ),
                  addHeight(20),
                  const Text(
                    "Resedential Address",
                    style: const TextStyle(
                        color: Color.fromRGBO(100, 116, 139, 1.0)),
                  ),
                  addHeight(10),
                  Container(
                    width: constraints.maxWidth * 0.9,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Color(0xFFF1F5F9),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      child: Expanded(
                        child: TextFormField(
                          enabled: isEditing,
                          initialValue: 'QueensPark Avenue,New York',
                          decoration: InputDecoration(
                            border: InputBorder.none,
                          ),
                          keyboardType: TextInputType.name,
                          autocorrect: false,
                          textCapitalization: TextCapitalization.none,
                        ),
                      ),
                    ),
                  ),
                  addHeight(20),
                  const Text(
                    "Password",
                    style: const TextStyle(
                        color: Color.fromRGBO(100, 116, 139, 1.0)),
                  ),
                  addHeight(10),
                  Container(
                    width: constraints.maxWidth * 0.9,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Color(0xFFF1F5F9),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      child: Row(
                        children: [
                          Expanded(
                            child: TextFormField(
                              enabled: isEditing,
                              initialValue: 'thatcreativeddesigners',
                              decoration: InputDecoration(
                                border: InputBorder.none,
                              ),
                              keyboardType: TextInputType.text,
                              autocorrect: false,
                              textCapitalization: TextCapitalization.none,
                            ),
                          ),
                          addWidth(10),
                          Container(
                            width: 30,
                            height: 30,
                            child: Image.asset(
                                "assets/images/mdi_eye-lock-outline.png"),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        },
      )),
    );
  }
}

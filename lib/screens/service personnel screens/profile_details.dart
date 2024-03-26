import 'package:flutter/material.dart';
import 'package:roadside_heroes_app/constants.dart';
import 'package:roadside_heroes_app/screens/user%20screens/images_data.dart';
import 'package:roadside_heroes_app/screens/sign_up_widgets/check_in_animation.dart';

class ServicePersonnelProfileDetailsScreen extends StatefulWidget {
  const ServicePersonnelProfileDetailsScreen({super.key});

  @override
  State<ServicePersonnelProfileDetailsScreen> createState() =>
      _ServicePersonnelProfileDetailsScreenState();
}

class _ServicePersonnelProfileDetailsScreenState
    extends State<ServicePersonnelProfileDetailsScreen> {
  bool isEditing = false;
  bool isEmailTextObscure = false;
  bool isPasswordTextObscure = false;

  int button_press_count = 0;

  void showModalDialog(BuildContext context, double screenWidth) {
    showModalBottomSheet(
      useRootNavigator: true,
      context: context,
      builder: (BuildContext context) {
        return Container(
          width: double.infinity,
          height: 300,
          color: const Color.fromARGB(255, 20, 36, 76),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const CheckImageAnimation(),
                addHeight(30),
                const Text(
                  'Profile Submitted succesfully',
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                addHeight(30),
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
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: SizedBox(
                      width: 100,
                      height: 100,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Image.asset(
                            "assets/images/signed_in_image.png",
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: SizedBox(
                              width: 30,
                              height: 30,
                              child:
                                  Image.asset("assets/images/camera_icon.png"),
                            ),
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
                    style: TextStyle(color: Color.fromRGBO(100, 116, 139, 1.0)),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Container(
                      width: screenWidth * 0.9,
                      height: 60,
                      decoration: BoxDecoration(
                        color: const Color(0xFFF1F5F9),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 15),
                        child: TextFormField(
                          enabled: isEditing,
                          initialValue: 'Victor',
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                          ),
                          keyboardType: TextInputType.name,
                          autocorrect: false,
                          textCapitalization: TextCapitalization.none,
                        ),
                      ),
                    ),
                  ),
                  addHeight(10),
                  const Text(
                    "Last Name",
                    style: TextStyle(color: Color.fromRGBO(100, 116, 139, 1.0)),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Container(
                      width: screenWidth * 0.9,
                      height: 60,
                      decoration: BoxDecoration(
                        color: const Color(0xFFF1F5F9),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 15),
                        child: TextFormField(
                          enabled: isEditing,
                          initialValue: 'Okatta',
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                          ),
                          keyboardType: TextInputType.name,
                          autocorrect: false,
                          textCapitalization: TextCapitalization.none,
                        ),
                      ),
                    ),
                  ),
                  addHeight(10),
                  const Text(
                    "Email Adress",
                    style: TextStyle(color: Color.fromRGBO(100, 116, 139, 1.0)),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Container(
                      width: screenWidth * 0.9,
                      height: 60,
                      decoration: BoxDecoration(
                        color: const Color(0xFFF1F5F9),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: SizedBox(
                              width: constraints.maxWidth * 0.7,
                              child: TextFormField(
                                obscureText: isEmailTextObscure,
                                enabled: isEditing,
                                initialValue: 'viktoh@gmail.com',
                                decoration: const InputDecoration(
                                  border: InputBorder.none,
                                ),
                                keyboardType: TextInputType.name,
                                autocorrect: false,
                                textCapitalization: TextCapitalization.none,
                              ),
                            ),
                          ),
                          addWidth(10),
                          GestureDetector(
                            onTap: () {
                              if (isEditing) {
                                setState(() {
                                  isEmailTextObscure = !isEmailTextObscure;
                                });
                              }
                            },
                            child: SizedBox(
                              width: 30,
                              height: 30,
                              child: Image.asset(isEmailTextObscure
                                  ? AppImages.profile_details_closed_password
                                  : AppImages.profile_details_open_password),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  addHeight(10),
                  const Text(
                    "Resedential Address",
                    style: TextStyle(color: Color.fromRGBO(100, 116, 139, 1.0)),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Container(
                      width: screenWidth * 0.9,
                      height: 60,
                      decoration: BoxDecoration(
                        color: const Color(0xFFF1F5F9),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 15),
                        child: TextFormField(
                          enabled: isEditing,
                          initialValue: 'Queens park avenue new york',
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                          ),
                          keyboardType: TextInputType.name,
                          autocorrect: false,
                          textCapitalization: TextCapitalization.none,
                        ),
                      ),
                    ),
                  ),
                  addHeight(10),
                  const Text(
                    "Password",
                    style: TextStyle(color: Color.fromRGBO(100, 116, 139, 1.0)),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Container(
                      width: screenWidth * 0.9,
                      height: 60,
                      decoration: BoxDecoration(
                        color: const Color(0xFFF1F5F9),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: SizedBox(
                              width: constraints.maxWidth * 0.7,
                              child: TextFormField(
                                obscureText: isPasswordTextObscure,
                                enabled: isEditing,
                                initialValue: 'thatcreative_designer99',
                                decoration: const InputDecoration(
                                  border: InputBorder.none,
                                ),
                                keyboardType: TextInputType.name,
                                autocorrect: false,
                                textCapitalization: TextCapitalization.none,
                              ),
                            ),
                          ),
                          addWidth(10),
                          GestureDetector(
                            onTap: () {
                              if (isEditing) {
                                setState(() {
                                  isPasswordTextObscure =
                                      !isPasswordTextObscure;
                                });
                              }
                            },
                            child: SizedBox(
                              width: 30,
                              height: 30,
                              child: Image.asset(isPasswordTextObscure
                                  ? AppImages.profile_details_closed_password
                                  : AppImages.profile_details_open_password),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  // Repeat the above pattern for other form fields
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

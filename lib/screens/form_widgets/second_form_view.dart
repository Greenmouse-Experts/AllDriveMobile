import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:roadside_heroes_app/constants.dart';
import 'package:roadside_heroes_app/screens/user%20screens/images_data.dart';

class SecondFormView extends StatefulWidget {
  const SecondFormView({Key? key}) : super(key: key);

  @override
  State<SecondFormView> createState() => _SecondFormViewState();
}

class _SecondFormViewState extends State<SecondFormView> {
  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      child: LayoutBuilder(
        builder: (context, constraints) {
          final isMobile = constraints.maxWidth < 600;
          final screenWidth = MediaQuery.of(context).size.width;

          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("First Name",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: isMobile ? 15 : 20)),
                        const SizedBox(height: 10),
                        Container(
                          height: isMobile ? 57 : 85,
                          width: constraints.maxWidth * 0.45,
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.3),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 8),
                                  child: SizedBox(
                                    width: isMobile ? 20 : 32,
                                    height: isMobile ? 25 : 40,
                                    child: SvgPicture.asset(
                                      AppImages.requestAssistanceprofileIcon,
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                                addWidth(5),
                                Expanded(
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      hintStyle: TextStyle(
                                        color: Colors.white.withOpacity(0.3),
                                        fontSize: isMobile ? 15 : 22,
                                      ),
                                      hintText: "First Name",
                                      border: InputBorder.none,
                                    ),
                                    keyboardType: TextInputType.name,
                                    autocorrect: false,
                                    textCapitalization: TextCapitalization.none,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    addWidth(constraints.maxWidth * 0.05),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                       Text("Last Name",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: isMobile ? 16 : 20)),
                        const SizedBox(height: 10),
                        Container(
                           height: isMobile ? 57 : 85,
                          width: constraints.maxWidth * 0.45,
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.3),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 8),
                                  child: SizedBox(
                                    width: isMobile ? 20 : 32,
                                    height: isMobile ? 25 : 40,
                                    child: SvgPicture.asset(
                                      AppImages.requestAssistanceprofileIcon,
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                                addWidth(5),
                                Expanded(
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      hintStyle: TextStyle(
                                        color: Colors.white.withOpacity(0.3),
                                        fontSize: isMobile ? 16  : 22,
                                      ),
                                      hintText: "Last Name",
                                      border: InputBorder.none,
                                    ),
                                    keyboardType: TextInputType.name,
                                    autocorrect: false,
                                    textCapitalization: TextCapitalization.none,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                addHeight(25),
                 Text("Email Address",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: isMobile ? 16 : 20)),
                addHeight(10),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  height: isMobile ? 57 : 85,
                  width: constraints.maxWidth,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SizedBox(
                            width: isMobile ? 27 : 32,
                            height: isMobile ? 27 : 40,
                            child: SvgPicture.asset(
                                AppImages.requestAssistanceEmailIcon),
                          ),
                        ),
                        const SizedBox(width: 20),
                        Expanded(
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintStyle: TextStyle(
                                color: Colors.white.withOpacity(0.3),
                                fontSize: isMobile ? 18 : 22,
                              ),
                              hintText: "Email Address",
                              border: InputBorder.none,
                            ),
                            keyboardType: TextInputType.emailAddress,
                            autocorrect: false,
                            textCapitalization: TextCapitalization.none,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                addHeight(25),
                const Text("Phone Number",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 15)),
                addHeight(10),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  height: isMobile ? 57 : 85,
                  width: constraints.maxWidth,
                  child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15), // Adjust the horizontal padding here
                      child: Row(
                        children: [
                          SizedBox(
                            width: isMobile ? 30 : 32,
                            height: isMobile ? 30 : 40,
                            child: SvgPicture.asset(AppImages.usaFlag),
                          ),
                          addWidth(10),
                          const Text(
                            "+1",
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                          addWidth(10),
                          Expanded(
                            child: TextFormField(
                              style: const TextStyle(color: Colors.white),
                              decoration: InputDecoration(
                                hintStyle: TextStyle(
                                  color: Colors.white.withOpacity(0.3),
                                  fontSize: isMobile ? 18 : 22,
                                ),
                                hintText: "Phone Number",
                                border: InputBorder.none,
                              ),
                              keyboardType: TextInputType.number,
                              autocorrect: false,
                              textCapitalization: TextCapitalization.none,
                            ),
                          )
                        ],
                      )),
                ),
                addHeight(25),
                const Text("Address",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 16)),
                addHeight(10),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  height: isMobile ? 57 : 85,
                  width: constraints.maxWidth,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SizedBox(
                            width: isMobile ? 30 : 32,
                            height: isMobile ? 30 : 40,
                            child: SvgPicture.asset(
                                AppImages.requestAssistanceAddressIcon),
                          ),
                        ),
                        const SizedBox(width: 20),
                        Expanded(
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintStyle: TextStyle(
                                color: Colors.white.withOpacity(0.3),
                                fontSize: isMobile ? 18 : 22,
                              ),
                              hintText: "Address",
                              border: InputBorder.none,
                            ),
                            keyboardType: TextInputType.streetAddress,
                            autocorrect: false,
                            textCapitalization: TextCapitalization.none,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

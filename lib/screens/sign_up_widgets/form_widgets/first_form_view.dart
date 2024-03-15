import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:roadside_heroes_app/constants.dart';

class FirstFormView extends StatefulWidget {
  const FirstFormView({Key? key}) : super(key: key);

  @override
  State<FirstFormView> createState() => _FirstFormViewState();
}

class _FirstFormViewState extends State<FirstFormView> {
  String initialCountry = 'CA';
  PhoneNumber number = PhoneNumber(isoCode: 'CA');
  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      child: LayoutBuilder(
        builder: (context, constraints) {
          final isMobile = constraints.maxWidth < 600;
          final screenWidth = MediaQuery.of(context).size.width;

          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("First Name",
                            style: GoogleFonts.lato().copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 15)),
                        const SizedBox(height: 10),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.3),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          height: isMobile ? 50 : 85,
                          width:
                              isMobile ? screenWidth * 0.4 : screenWidth * 0.4,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: SizedBox(
                                    width: isMobile ? 20 : 32,
                                    height: isMobile ? 25 : 40,
                                    child: Image.asset(
                                      "assets/images/usernameheader.png",
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                                addWidth(5),
                                Expanded(
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      labelStyle: TextStyle(
                                        color: Colors.white.withOpacity(0.3),
                                        fontSize: isMobile ? 15 : 22,
                                      ),
                                      labelText: "First Name",
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
                      ],
                    ),
                    addWidth(20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Last Name",
                            style: GoogleFonts.lato().copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 15)),
                        const SizedBox(height: 10),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.3),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          height: isMobile ? 50 : 85,
                          width:
                              isMobile ? screenWidth * 0.38 : screenWidth * 0.4,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: SizedBox(
                                    width: isMobile ? 20 : 32,
                                    height: isMobile ? 25 : 40,
                                    child: Image.asset(
                                      "assets/images/usernameheader.png",
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                                addWidth(5),
                                Expanded(
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      labelStyle: TextStyle(
                                        color: Colors.white.withOpacity(0.3),
                                        fontSize: isMobile ? 13 : 22,
                                      ),
                                      labelText: "Last Name",
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
                      ],
                    ),
                  ],
                ),
                addHeight(20),
                Text("Email Address",
                    style: GoogleFonts.lato().copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 15)),
                addHeight(10),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  height: isMobile ? 50 : 85,
                  width: isMobile ? screenWidth * 0.9 : screenWidth * 0.4,
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
                        const SizedBox(width: 20),
                        Expanded(
                          child: TextFormField(
                            decoration: InputDecoration(
                              labelStyle: TextStyle(
                                color: Colors.white.withOpacity(0.3),
                                fontSize: isMobile ? 18 : 22,
                              ),
                              labelText: "Email Address",
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
                addHeight(20),
                Text("Phone Number",
                    style: GoogleFonts.lato().copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 15)),
                addHeight(10),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  height: isMobile ? 55 : 85,
                  width: isMobile ? screenWidth * 0.9 : screenWidth * 0.4,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16), // Adjust the horizontal padding here
                    child: InternationalPhoneNumberInput(
                      hintText: '000 000 0000',
                      cursorColor: Colors.white,
                      onInputChanged: (PhoneNumber number) {},
                      spaceBetweenSelectorAndTextField: 0,
                      onInputValidated: (bool value) {},
                      selectorConfig: const SelectorConfig(
                        selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
                        useBottomSheetSafeArea: true,
                      ),
                      ignoreBlank: false,
                      autoValidateMode: AutovalidateMode.disabled,
                      selectorTextStyle: const TextStyle(color: Colors.black),
                      initialValue: number,
                      textFieldController: controller,
                      formatInput: true,
                      inputBorder:
                          const OutlineInputBorder(borderSide: BorderSide.none),
                      onSaved: (PhoneNumber number) {},
                    ),
                  ),
                ),
                addHeight(20),
                Text("Address",
                    style: GoogleFonts.lato().copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 16)),
                addHeight(10),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  height: isMobile ? 52 : 85,
                  width: isMobile ? screenWidth * 0.9 : screenWidth * 0.4,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SizedBox(
                            width: isMobile ? 30 : 32,
                            height: isMobile ? 30 : 40,
                            child: Image.asset(
                              "assets/images/map-pin.png",
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                        const SizedBox(width: 20),
                        Expanded(
                          child: TextFormField(
                            decoration: InputDecoration(
                              labelStyle: TextStyle(
                                color: Colors.white.withOpacity(0.3),
                                fontSize: isMobile ? 18 : 22,
                              ),
                              labelText: "Address",
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
              ],
            ),
          );
        },
      ),
    );
  }
}

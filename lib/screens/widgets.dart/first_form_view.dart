import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:roadside_heroes_app/constants.dart';

class FirstFormView extends StatefulWidget {
  const FirstFormView({Key? key}) : super(key: key);

  @override
  State<FirstFormView> createState() => _FirstFormViewState();
}

class _FirstFormViewState extends State<FirstFormView> {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: LayoutBuilder(
        builder: (context, constraints) {
          final isMobile = constraints.maxWidth < 600;
          final screenWidth = MediaQuery.of(context).size.width;

          return Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "First Name",
                          style: GoogleFonts.lato().copyWith(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 17)
                        ),
                        const SizedBox(height: 10),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.3),
                            borderRadius: BorderRadius.circular(14),
                          ),
                          height: isMobile ? 55 : 85,
                          width: isMobile ? screenWidth * 0.4 : screenWidth * 0.4,
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
                                const SizedBox(width: 20),
                                Expanded(
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      labelStyle: TextStyle(
                                        color: Colors.white.withOpacity(0.3),
                                        fontSize: isMobile ? 18 : 22,
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
                        Text(
                          "Last Name",
                              style: GoogleFonts.lato().copyWith(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 17)
                        ),
                        const SizedBox(height: 10),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.3),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          height: isMobile ? 55 : 85,
                          width: isMobile ? screenWidth * 0.4 : screenWidth * 0.4,
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
                                const SizedBox(width: 20),
                                Expanded(
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      labelStyle: TextStyle(
                                        color: Colors.white.withOpacity(0.3),
                                        fontSize: isMobile ? 15 : 22,
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
                 Text(
                          "Email Address",
                              style: GoogleFonts.lato().copyWith(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 17)
                        ),
                        addHeight(10),
                Container(
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.3),
                            borderRadius: BorderRadius.circular(14),
                          ),
                          height: isMobile ? 65 : 85,
                          width: isMobile ? screenWidth * 0.9 : screenWidth * 0.4,
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

                         Text(
                          "Phone Number",
                              style: GoogleFonts.lato().copyWith(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 17)
                        ),
                        addHeight(10),
                Container(
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.3),
                            borderRadius: BorderRadius.circular(14),
                          ),
                          height: isMobile ? 65 : 85,
                          width: isMobile ? screenWidth * 0.9 : screenWidth * 0.4,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 8),
                            child: IntlPhoneField(
                              dropdownIconPosition: IconPosition.trailing,
                              disableLengthCheck: true,
                              dropdownIcon: Icon(Icons.keyboard_arrow_down_rounded,color: Colors.white,),
                              showDropdownIcon: true,
                              style: TextStyle(color: Colors.white),
                              textAlign: TextAlign.center,
                                decoration: const InputDecoration(
                                  iconColor: Colors.white,
                                    labelText: '',
                                    border: OutlineInputBorder(
                                        borderSide: BorderSide.none,
                                    ),
                                ),
                                initialCountryCode: 'NG',
                                onChanged: (phone) {
                                },
                            ),
                          ),
                        ),
                         addHeight(20),

                         Text(
                          "Address",
                              style: GoogleFonts.lato().copyWith(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 17)
                        ),
                        addHeight(10),
                Container(
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.3),
                            borderRadius: BorderRadius.circular(14),
                          ),
                          height: isMobile ? 65 : 85,
                          width: isMobile ? screenWidth * 0.9 : screenWidth * 0.4,
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

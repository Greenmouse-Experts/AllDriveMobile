import 'package:flutter/material.dart';
import 'package:roadside_heroes_app/constants.dart';

class ThirdFormView extends StatefulWidget {
  const ThirdFormView({Key? key}) : super(key: key);

  @override
  State<ThirdFormView> createState() => _ThirdFormViewState();
}

class _ThirdFormViewState extends State<ThirdFormView> {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: LayoutBuilder(
        builder: (context, constraints) {
          final isMobile = constraints.maxWidth < 600;
          final screenWidth = MediaQuery.of(context).size.width;

          return Column(
            children: [
              Row(
                children: [
                  Column(
                    children: [
                      Text(
                        "Full Name",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: isMobile ? 15 : 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
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
                                  width: isMobile ? 20 : 32,
                                  height: isMobile ? 20 : 40,
                                  child: Image.asset(
                                    "assets/images/usernameheader.png",
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                              SizedBox(width: 20),
                              Expanded(
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    labelStyle: TextStyle(
                                      color: Colors.white.withOpacity(0.3),
                                      fontSize: isMobile ? 18 : 22,
                                    ),
                                    labelText: "Username",
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
            ],
          );
        },
      ),
    );
  }
}

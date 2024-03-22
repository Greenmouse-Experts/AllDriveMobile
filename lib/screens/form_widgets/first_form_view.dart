import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:roadside_heroes_app/constants.dart';

class FirstFormView extends StatefulWidget {
  const FirstFormView({Key? key}) : super(key: key);

  @override
  State<FirstFormView> createState() => _FirstFormViewState();
}

class _FirstFormViewState extends State<FirstFormView> {
  bool isAllWheelDrive = false;
  String _selectedItem = 'Option 1'; // Initially selected item

  @override
  Widget build(BuildContext context) {
    return Form(
      child: LayoutBuilder(
        builder: (context, constraints) {
          final isMobile = constraints.maxWidth < 600;
          final screenWidth = MediaQuery.of(context).size.width;

          return Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 8,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                buildTextInputField(
                    "Car Make", "Car Make", isMobile, screenWidth),
                buildTextInputField(
                    "Car Model", "Model", isMobile, screenWidth),
                buildTextInputField("Year", "Year", isMobile, screenWidth),
                buildTextInputField("Color", "Color", isMobile, screenWidth),
                Row(
                  children: [
                    SizedBox(
                      width: 30,
                      height: 5,
                      child: Checkbox(
                        activeColor: Colors.orange,
                        value: isAllWheelDrive,
                        onChanged: (bool? value) {
                          log(value.toString());
                          setState(() {
                            isAllWheelDrive = value!;
                          });
                        },
                      ),
                    ),
                    addWidth(10),
                    const Text(
                      "All-Wheel Drive",
                      style: TextStyle(
                        color: Color.fromRGBO(186, 186, 186, 1.0),
                        fontSize: 14,
                      ),
                    )
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget buildTextInputField(
    String headerText,
    String hintText,
    bool isMobile,
    double screenWidth,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          headerText,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 15,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 10),
        Container(
          decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.3),
            borderRadius: BorderRadius.circular(16),
          ),
          height: isMobile ? 52 : 85,
          width: isMobile ? screenWidth * 0.9 : screenWidth * 0.8,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: LayoutBuilder(builder: (context, container_constraints) {
              return Row(
                children: [
                  Container(
                    width: container_constraints.maxWidth * 0.7,
                    child: TextFormField(
                      style: const TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        hintStyle: TextStyle(
                          color: Colors.white.withOpacity(0.3),
                          fontSize: isMobile ? 18 : 22,
                        ),
                        hintText: hintText,
                        border: InputBorder.none,
                      ),
                      keyboardType: TextInputType.emailAddress,
                      autocorrect: false,
                      textCapitalization: TextCapitalization.none,
                    ),
                  ),
                  DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                      onChanged: (String? newValue) {
                        setState(() {
                          _selectedItem = newValue!;
                        });
                      },
                      items: <String>[
                        'Option 1',
                        'Option 2',
                        'Option 3',
                        'Option 4'
                      ].map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),
                ],
              );
            }),
          ),
        ),
        addHeight(20),
      ],
    );
  }
}

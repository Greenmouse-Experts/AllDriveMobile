import 'package:flutter/material.dart';
import 'package:roadside_heroes_app/constants.dart';

class SecondFormView extends StatefulWidget {
  const SecondFormView({Key? key}) : super(key: key);

  @override
  State<SecondFormView> createState() => _SecondFormViewState();
}

class _SecondFormViewState extends State<SecondFormView> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Form(
      child: LayoutBuilder(
        builder: (context, constraints) {
          final isMobile = constraints.maxWidth < 600;
          final screenWidth = MediaQuery.of(context).size.width;

          return Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                buildTextInputField(
                    "Car Make", "Car Make", isMobile, screenWidth),
                buildTextInputField(
                    "Car Model", "Model", isMobile, screenWidth),
                buildTextInputField("Year", "Year", isMobile, screenWidth),
                buildTextInputField("Color", "Color", isMobile, screenWidth),
                addHeight(20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Checkbox(
                      activeColor: Colors.orange,
                      value: isChecked,
                      onChanged: (bool? value) {
                        setState(() {
                          isChecked = value!;
                        });
                      },
                    ),
                    const Text(
                      "All-Wheel Drive",
                      style: TextStyle(
                        color: Color.fromRGBO(186, 186, 186, 1.0),
                        fontSize: 16,
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
    String labelText,
    String hintText,
    bool isMobile,
    double screenWidth,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          labelText,
          style: TextStyle(
            color: Colors.white,
            fontSize: isMobile ? 15 : 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),
        Container(
          decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.3),
            borderRadius: BorderRadius.circular(14),
          ),
          height: isMobile ? 55 : 85,
          width: isMobile ? screenWidth * 0.9 : screenWidth * 0.8,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelStyle: TextStyle(
                        color: Colors.white.withOpacity(0.3),
                        fontSize: isMobile ? 18 : 22,
                      ),
                      labelText: hintText,
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
      ],
    );
  }
}

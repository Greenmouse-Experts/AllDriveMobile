import 'package:flutter/material.dart';
import 'package:roadside_heroes_app/constants.dart';

class ThirdFormView extends StatefulWidget {
  const ThirdFormView({Key? key}) : super(key: key);

  @override
  State<ThirdFormView> createState() => _ThirdFormViewState();
}

class _ThirdFormViewState extends State<ThirdFormView> {
  Widget cardContainer(String imagePath) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(2)),
          child: Image.asset(
            imagePath,
            fit: BoxFit.contain,
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: LayoutBuilder(
        builder: (context, constraints) {
          final isMobile = constraints.maxWidth < 600;
          final screenWidth = MediaQuery.of(context).size.width;

          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildTextInputField(
                  "Card Info", "Card Number", isMobile, screenWidth),
              buildTextInputField(
                  "Expiry", "Expiry date", isMobile, screenWidth),
              buildTextInputField("CVV", "CVV", isMobile, screenWidth),
              buildTextInputField(
                  "Amount(CAD)", "Color", isMobile, screenWidth),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  cardContainer("assets/images/card_3.png"),
                  cardContainer("assets/images/card_2.png"),
                  cardContainer("assets/images/card_1.png"),
                ],
              ),
            ],
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

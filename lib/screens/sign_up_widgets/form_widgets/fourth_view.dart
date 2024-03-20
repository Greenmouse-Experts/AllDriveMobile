import 'package:flutter/material.dart';
import 'package:roadside_heroes_app/constants.dart';

class FourthFormView extends StatefulWidget {
  const FourthFormView({Key? key}) : super(key: key);

  @override
  State<FourthFormView> createState() => _FourthFormViewState();
}

class _FourthFormViewState extends State<FourthFormView> {
  Widget cardContainer(String imagePath) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Container(
          width: 30,
          height: 30,
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

          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                buildTextInputField(
                    "Card Info", "Card Number", isMobile, screenWidth),
                buildTextInputField(
                    "Expiry", "Expiry date", isMobile, screenWidth),
                buildTextInputField("CVV", "CVV", isMobile, screenWidth),
                buildTextInputField(
                    "Amount(Dollar)", "Amount", isMobile, screenWidth),
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
            child: Row(
              children: [
                Expanded(
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
                    keyboardType: TextInputType.number,
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

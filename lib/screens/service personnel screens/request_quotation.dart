import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:roadside_heroes_app/constants.dart';
import 'package:roadside_heroes_app/screens/sign_up_widgets/check_in_animation.dart';
import 'package:roadside_heroes_app/screens/user%20screens/images_data.dart';

class QuotationRequestScreen extends StatefulWidget {
  const QuotationRequestScreen({super.key});

  @override
  State<QuotationRequestScreen> createState() => _QuotationRequestScreenState();
}

class _QuotationRequestScreenState extends State<QuotationRequestScreen> {
  double sliderValue = 1;
  String _selectedItem = "";

  void showModalDialog(
      BuildContext context, double screenWidth, double screenHeight) {
    showModalBottomSheet(
      useRootNavigator: true,
      context: context,
      builder: (BuildContext context) {
        return Container(
          width: screenWidth,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color.fromARGB(255, 20, 36, 76),
          ),
          height: screenHeight * 0.4,
          child: Center(
            child: LayoutBuilder(builder: (context, constraint) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  SizedBox(
                      height: constraint.maxHeight * 0.25,
                      child: const FittedBox(child: CheckImageAnimation())),
                  addHeight(constraint.maxHeight * 0.15),
                  const AutoSizeText(
                    'Submitted succesfully',
                    minFontSize: 23,
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w700),
                  ),
                  addHeight(constraint.maxHeight * 0.15),
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
              );
            }),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: const Icon(Icons.arrow_back),
          iconSize: 30,
        ),
        title: const Text(
          "Requests",
          style: TextStyle(fontSize: 20),
        ),
      ),
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: LayoutBuilder(builder: (context, constraints) {
          final isMobile = constraints.maxWidth < 600;

          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: constraints.maxHeight * 0.38,
                width: constraints.maxWidth,
                child: const Text("ss"),
              ),
              SizedBox(
                height: constraints.maxHeight * 0.57,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: LayoutBuilder(builder: (context, bottomconstraints) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 15),
                          decoration: BoxDecoration(
                              color: Theme.of(context).colorScheme.onBackground,
                              borderRadius: BorderRadius.circular(15)),
                          child: Row(
                            children: [
                              SizedBox(
                                width: bottomconstraints.maxWidth * 0.1,
                                child: Image.asset(
                                  AppImages.servicePersonnelRequestImage,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              addWidth(bottomconstraints.maxWidth * 0.05),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "Fuel Delivery",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  addHeight(5),
                                  Row(
                                    children: [
                                      SizedBox(
                                        width:
                                            bottomconstraints.maxWidth * 0.05,
                                        child: Image.asset(
                                            AppImages.quotationRequestImage),
                                      ),
                                      const FittedBox(
                                        fit: BoxFit.scaleDown,
                                        child: Text(
                                          "1 Check Inn Close, 200285 Queens Ave",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12,
                                              fontWeight: FontWeight.w700),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        addHeight(bottomconstraints.maxHeight * 0.1),
                        Row(
                          children: [
                            const Text(
                              "Indicate Arrival time",
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w500),
                            ),
                            const Spacer(),
                            Container(
                              height: bottomconstraints.maxHeight * 0.1,
                              width: bottomconstraints.maxWidth * 0.3,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius
                                    .zero, // Set to zero for rectangular border
                                border: Border.all(
                                    width: 0.5,
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onBackground // Set your desired border color here
                                    ),
                              ),
                              child: DropdownButtonHideUnderline(
                                child: DropdownButton<String>(
                                  icon:
                                      const Icon(Icons.arrow_downward_outlined),
                                  iconSize: 15,
                                  isExpanded: true,
                                  hint: Text(
                                    _selectedItem,
                                    style: const TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  ),
                                  onChanged: (String? newValue) {
                                    setState(() {
                                      _selectedItem = newValue!;
                                    });
                                  },
                                  items: <String>[
                                    'Seconds',
                                    'Minutes',
                                    'Hour',
                                  ].map<DropdownMenuItem<String>>(
                                      (String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(value),
                                    );
                                  }).toList(),
                                ),
                              ),
                            )
                          ],
                        ),
                        Slider(
                          label: sliderValue.toInt().toString(),
                          max: 100,
                          divisions: 100,
                          value: sliderValue,
                          onChanged: (value) {
                            setState(() {
                              sliderValue = value;
                            });
                          },
                        ),
                        addHeight(bottomconstraints.maxHeight * 0.05),
                        const Text(
                          "Indicate Price Range",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w500),
                        ),
                        addHeight(bottomconstraints.maxHeight * 0.05),
                        Container(
                          height: bottomconstraints.maxHeight * 0.1,
                          width: bottomconstraints.maxWidth,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                                10), // Set to zero for rectangular border
                            border: Border.all(
                              width: 0.5,
                              color: Colors
                                  .grey, // Set your desired border color here
                            ),
                          ),
                          child: const TextField(
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                              hintStyle: TextStyle(
                                color: Colors.grey,
                                fontSize: 18,
                              ),
                              hintText: "\$0.0",
                              border: InputBorder.none,
                            ),
                            keyboardType: TextInputType.number,
                            autocorrect: false,
                            textCapitalization: TextCapitalization.none,
                          ),
                        ),
                        addHeight(bottomconstraints.maxHeight * 0.1),
                        SizedBox(
                          width: bottomconstraints.maxWidth,
                          child: ElevatedButton(
                            onPressed: () {
                              showModalDialog(context, getScreenWidth(context),
                                  getScreenHeight(context));
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  Theme.of(context).colorScheme.onBackground,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40),
                              ),
                              minimumSize: isMobile
                                  ? Size(constraints.maxWidth, 52)
                                  : Size(constraints.maxWidth, 85),
                            ),
                            child: const Text(
                              "Submit Quote",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w900,
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ),
                      ],
                    );
                  }),
                ),
              )
            ],
          );
        }),
      ),
    );
  }
}

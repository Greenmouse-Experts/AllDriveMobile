import 'package:auto_size_text/auto_size_text.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:roadside_heroes_app/constants.dart';
import 'package:roadside_heroes_app/screens/service%20personnel%20screens/request_quotation.dart';
import 'package:roadside_heroes_app/screens/user%20screens/images_data.dart';

class RequestDetailsScreen extends StatefulWidget {
  const RequestDetailsScreen({super.key});

  @override
  State<RequestDetailsScreen> createState() => _RequestDetailsScreenState();
}

class _RequestDetailsScreenState extends State<RequestDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        forceMaterialTransparency: true,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "Requests",
          style: TextStyle(fontSize: 19),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: SingleChildScrollView(
          child: LayoutBuilder(builder: (context, constraints) {
            final isMobile = constraints.maxWidth < 600;

            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Service Info",
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.onBackground,
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
                addHeight(10),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(20)),
                  child: LayoutBuilder(builder: (context, constraints) {
                    return Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5),
                          child: Row(
                            children: [
                              SizedBox(
                                width: constraints.maxWidth * 0.08,
                                child: Image.asset(
                                  AppImages
                                      .servicePersonnelFuelRequestDetailsIcon,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              addWidth(constraints.maxWidth * 0.05),
                              AutoSizeText(
                                "Fuel Delivery",
                                style: TextStyle(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onBackground,
                                    fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                        ),
                        const DottedLine(
                          dashColor: Colors.grey,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5),
                          child: Row(
                            children: [
                              SizedBox(
                                width: constraints.maxWidth * 0.08,
                                child: Image.asset(
                                  AppImages
                                      .servicePersonnelFuelRequestDetailsIcon,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              addWidth(constraints.maxWidth * 0.05),
                              AutoSizeText(
                                "Fuel Delivery",
                                style: TextStyle(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onBackground,
                                    fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                        ),
                      ],
                    );
                  }),
                ),
                addHeight(20),
                Text(
                  "Motorist Info",
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.onBackground,
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
                addHeight(10),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(20)),
                  child: LayoutBuilder(builder: (context, constraints) {
                    return Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5),
                          child: Row(
                            children: [
                              SizedBox(
                                width: constraints.maxWidth * 0.08,
                                child: Image.asset(
                                  AppImages
                                      .servicePersonnelFuelRequestDetailsIcon,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              addWidth(constraints.maxWidth * 0.05),
                              AutoSizeText(
                                "Fuel Delivery",
                                style: TextStyle(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onBackground,
                                    fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                        ),
                        const DottedLine(
                          dashColor: Colors.grey,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5),
                          child: Row(
                            children: [
                              SizedBox(
                                width: constraints.maxWidth * 0.08,
                                child: Image.asset(
                                  AppImages
                                      .servicePersonnelFuelRequestDetailsIcon,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              addWidth(constraints.maxWidth * 0.05),
                              AutoSizeText(
                                "Fuel Delivery",
                                style: TextStyle(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onBackground,
                                    fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                        ),
                      ],
                    );
                  }),
                ),
                addHeight(20),
                Text(
                  "Vehicle Info",
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.onBackground,
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
                addHeight(10),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(20)),
                  child: LayoutBuilder(builder: (context, constraints) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Car Type:",
                          style: TextStyle(
                            color: Color.fromRGBO(23, 39, 72, 0.7),
                            fontSize: 15,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: Text(
                            "Lexus",
                            style: TextStyle(
                                color:
                                    Theme.of(context).colorScheme.onBackground),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 10),
                          child: DottedLine(
                            dashColor: Colors.grey,
                          ),
                        ),
                        const Text(
                          "Car Model:",
                          style: TextStyle(
                            color: Color.fromRGBO(23, 39, 72, 0.7),
                            fontSize: 15,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: Text(
                            "RX 350",
                            style: TextStyle(
                                color:
                                    Theme.of(context).colorScheme.onBackground),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 10),
                          child: DottedLine(
                            dashColor: Colors.grey,
                          ),
                        ),
                        const Text(
                          "Year:",
                          style: TextStyle(
                            color: Color.fromRGBO(23, 39, 72, 0.7),
                            fontSize: 15,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: Text(
                            "2024",
                            style: TextStyle(
                                color:
                                    Theme.of(context).colorScheme.onBackground),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 10),
                          child: DottedLine(
                            dashColor: Colors.grey,
                          ),
                        ),
                        const Text(
                          "Color:",
                          style: TextStyle(
                            color: Color.fromRGBO(23, 39, 72, 0.7),
                            fontSize: 15,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10, bottom: 10),
                          child: Text(
                            "Black",
                            style: TextStyle(
                                color:
                                    Theme.of(context).colorScheme.onBackground),
                          ),
                        ),
                      ],
                    );
                  }),
                ),
                addHeight(20),
                SizedBox(
                  width: constraints.maxWidth,
                  child: ElevatedButton(
                    onPressed: () {
                      moveTo(QuotationRequestScreen(), context);
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
                      "Quote This Request",
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
      ),
    );
  }
}

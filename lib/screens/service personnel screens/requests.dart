import 'dart:developer';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:roadside_heroes_app/constants.dart';
import 'package:roadside_heroes_app/screens/user%20screens/images_data.dart';

class ServicePersonnelRequestScreen extends StatefulWidget {
  const ServicePersonnelRequestScreen({super.key});

  @override
  State<ServicePersonnelRequestScreen> createState() =>
      _ServicePersonnelRequestScreenState();
}

class _ServicePersonnelRequestScreenState
    extends State<ServicePersonnelRequestScreen> {
  Widget requestContainer(
      {required BoxConstraints constraints,
      required String request,
      required String phoneNumber,
      required String address}) {
    return Column(children: [
      Container(
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(20)),
        child: LayoutBuilder(builder: (context, containerConstraints) {
          return Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Row(
                  children: [
                    SizedBox(
                      width: containerConstraints.maxWidth * 0.15,
                      child:
                          Image.asset(AppImages.servicePersonnelRequestImage),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: containerConstraints.maxWidth * 0.4,
                            child: Text(
                              request,
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 17,
                                  color: Theme.of(context)
                                      .colorScheme
                                      .onBackground),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              SizedBox(
                                width: containerConstraints.maxWidth * 0.05,
                                child: Image.asset(
                                    AppImages.servicePersonnelPhoneNumberIcon),
                              ),
                              addWidth(10),
                              Text(phoneNumber)
                            ],
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: containerConstraints.maxWidth * 0.05,
                                child: Image.asset(
                                    AppImages.servicePersonnelLocationIcon),
                              ),
                              addWidth(10),
                              SizedBox(
                                width: constraints.maxWidth * 0.6,
                                child: AutoSizeText(
                                  address,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              pageDivider(thickeness: 3),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 15,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        log("ss");
                      },
                      child: SizedBox(
                        width: containerConstraints.maxWidth * 0.45,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: containerConstraints.maxWidth * 0.05,
                              child: Image.asset(
                                  AppImages.servicePersonnelViewDetailsIcon),
                            ),
                            addWidth(10),
                            const Text(
                              "View all Details",
                              style: TextStyle(
                                  color: Color.fromRGBO(255, 79, 0, 1)),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                      width: containerConstraints.maxWidth * 0.05,
                      child: const VerticalDivider(
                        color: Color(0xFFF4F4F4),
                        thickness: 3,
                      ),
                    ),
                    addWidth(10),
                    GestureDetector(
                      onTap: () {
                        log("tt");
                      },
                      child: SizedBox(
                        width: containerConstraints.maxWidth * 0.42,
                        child: Row(
                          children: [
                            SizedBox(
                              width: containerConstraints.maxWidth * 0.05,
                              child: Image.asset(
                                  AppImages.servicePersonnelSendQuotationIcon),
                            ),
                            addWidth(10),
                            const Text(
                              "Send Quotation",
                              style: TextStyle(
                                color: const Color.fromRGBO(50, 186, 119, 1),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          );
        }),
      ),
      addHeight(15),
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 246, 246, 246),
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "Requests",
          style: TextStyle(fontSize: 17, color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        child: LayoutBuilder(builder: (context, constraints) {
          return Builder(builder: (context) {
            return SingleChildScrollView(
              child: Column(
                children: [
                  requestContainer(
                      constraints: constraints,
                      request: "Fuel delivery",
                      phoneNumber: "+1 000 000 000",
                      address: "1 Check Inn Close, 200285 Queens Ave"),
                  requestContainer(
                      constraints: constraints,
                      request: "Fuel delivery",
                      phoneNumber: "+1 000 000 000",
                      address: "1 Check Inn Close, 200285 Queens Ave"),
                  requestContainer(
                      constraints: constraints,
                      request: "Fuel delivery",
                      phoneNumber: "+1 000 000 000",
                      address: "1 Check Inn Close, 200285 Queens Ave"),
                  requestContainer(
                      constraints: constraints,
                      request: "Fuel delivery",
                      phoneNumber: "+1 000 000 000",
                      address: "1 Check Inn Close, 200285 Queens Ave")
                ],
              ),
            );
          });
        }),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:roadside_heroes_app/constants.dart';
import 'package:roadside_heroes_app/screens/service%20personnel%20screens/requests.dart';
import 'package:roadside_heroes_app/screens/service%20personnel%20screens/widgets/service_ad_widget.dart';
import 'package:roadside_heroes_app/screens/service%20personnel%20screens/widgets/request_alert.dart';
import 'package:roadside_heroes_app/screens/service%20personnel%20screens/widgets/tab_bar.dart';
import 'package:roadside_heroes_app/screens/user%20screens/images_data.dart';
import 'package:roadside_heroes_app/screens/user%20screens/notification.dart';

class ServicePersonnelHomeScreen extends StatefulWidget {
  const ServicePersonnelHomeScreen({Key? key}) : super(key: key);

  @override
  State<ServicePersonnelHomeScreen> createState() =>
      _ServicePersonnelHomeScreenState();
}

class _ServicePersonnelHomeScreenState
    extends State<ServicePersonnelHomeScreen> {
  Widget drawerWidget(String filePath, String text, Widget screen) {
    return Column(
      children: [
        GestureDetector(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => screen),
          ),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color.fromARGB(125, 217, 217, 217),
            ),
            width: double.infinity,
            height: 55,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
              child: Row(
                children: [
                  SizedBox(
                    width: 20,
                    height: 30,
                    child: Image.asset(
                      filePath,
                      fit: BoxFit.contain,
                    ),
                  ),
                  addWidth(15),
                  Text(
                    text,
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.onBackground,
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        addHeight(30),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: Colors.white,
        title: Text(
          "Hello Greenmouse",
          style: TextStyle(
            color: Theme.of(context).colorScheme.onBackground,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: LayoutBuilder(builder: (context, constraints) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: Column(
            children: [
              SizedBox(
                  width: double.infinity,
                  height: constraints.maxHeight * 0.2,
                  child: ListView.builder(
                    itemCount: 3,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return ServiceHomeAdWidget(
                        constraint: constraints,
                      );
                    },
                  )),
              addHeight(15),
              pageDivider(thickeness: 5),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    RequestAlertWidget(
                      imagePath: AppImages.fuelDeliveryAlertIcon,
                      constraints: constraints,
                      request: "Fuel Delivery",
                    ),
                    RequestAlertWidget(
                      imagePath: AppImages.towingAlertIcon,
                      constraints: constraints,
                      request: "Car Repair",
                    ),
                    RequestAlertWidget(
                      imagePath: AppImages.carRepairDeliverAlertIcon,
                      constraints: constraints,
                      request: "Jump Start",
                    ),
                    RequestAlertWidget(
                      imagePath: AppImages.jumpStartAlertIcon,
                      constraints: constraints,
                      request: "Towing",
                    ),
                  ],
                ),
              ),
              pageDivider(thickeness: 5),
              addHeight(10),
              StackOver(
                constraints: constraints,
              )
            ],
          ),
        );
      }),
      drawerEnableOpenDragGesture: true,
      drawer: Builder(
        builder: (BuildContext context) {
          return Drawer(
            backgroundColor: Theme.of(context).colorScheme.onBackground,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: LayoutBuilder(
                builder: (context, constraints) => Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: constraints.maxWidth * 0.5,
                      height: constraints.maxHeight * 0.2,
                      child: Image.asset(AppImages.appLogo),
                    ),
                    addHeight(25),
                    drawerWidget("assets/images/home.png", 'Home',
                        const ServicePersonnelHomeScreen()),
                    drawerWidget("assets/images/send.png", 'Requests',
                        const ServicePersonnelRequestScreen()),
                    drawerWidget("assets/images/bell.png", 'Notifications',
                        const userNotificationScreen()),
                    drawerWidget("assets/images/clock.png", 'History',
                        const ServicePersonnelHomeScreen()),
                    drawerWidget("assets/images/settings.png", 'Settings',
                        const ServicePersonnelHomeScreen()),
                    drawerWidget("assets/images/log-out.png", 'LogOut',
                        const ServicePersonnelHomeScreen()),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

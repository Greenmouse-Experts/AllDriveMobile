import 'package:flutter/material.dart';
import 'package:roadside_heroes_app/constants.dart';

class ServicePersonnelSettingScreen extends StatelessWidget {
  const ServicePersonnelSettingScreen({super.key});

  Widget getListTile(String text) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          leading: Text(
            text,
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
          ),
          trailing: Icon(Icons.arrow_forward_ios),
        ),
        addHeight(8),
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
        title: const Text(
          "Settings",
          style: TextStyle(fontSize: 18),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: LayoutBuilder(builder: (context, constraints) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.onBackground,
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
                  child: Row(
                    children: [
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Place your",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                            "Adverts",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      const Spacer(),
                      SizedBox(
                        width: constraints.maxWidth * 0.4,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromRGBO(254, 180, 112, 1),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40),
                            ),
                            minimumSize: Size(constraints.maxWidth * 0.4, 52),
                          ),
                          child: const Text(
                            "Click Here",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w900,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              addHeight(constraints.maxHeight * 0.03),
              getListTile("My Account"),
              getListTile("Notifications"),
              getListTile("App updates"),
              getListTile("History and Requests"),
              pageDivider(thickeness: 2),
              Text("Support",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              getListTile("FAQ"),
              getListTile("Privacy Policy"),
              getListTile("Terms and Conditions"),
              Text(
                "Log Out",
                style: TextStyle(
                    decoration: TextDecoration.underline,
                    decorationColor: Color.fromRGBO(
                        255, 0, 0, 1), // Optional: specify the underline color
                    decorationStyle: TextDecorationStyle.solid,
                    color: Color.fromRGBO(255, 0, 0, 1),
                    fontSize: 15,
                    fontWeight: FontWeight.w600),
              ),
            ],
          );
        }),
      ),
    );
  }
}

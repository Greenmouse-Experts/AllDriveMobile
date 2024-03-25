import 'package:flutter/material.dart';
import 'package:roadside_heroes_app/constants.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  Widget getListTile(String text) {
    return 
        Padding(
          
    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5), // Adjusted padding
          child: ListTile(
                      contentPadding: EdgeInsets.zero, // Added contentPadding to remove default ListTile padding

            leading: Text(
              text,
              style: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),
            trailing: const Icon(Icons.arrow_forward_ios),
          ),
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
              const Text("Support",
                  style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              getListTile("FAQ"),
              getListTile("Privacy Policy"),
              getListTile("Terms and Conditions"),
              const Text(
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

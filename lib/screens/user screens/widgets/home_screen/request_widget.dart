import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:roadside_heroes_app/constants.dart';
import 'package:roadside_heroes_app/images_data.dart';
import 'package:roadside_heroes_app/routes/signed_home_screen_tab_navigator.dart';
import 'package:roadside_heroes_app/screens/user%20screens/request.dart';

class RequestWidget extends StatelessWidget {
  const RequestWidget({Key? key});

  Widget requestDetails(String imagePath, String request, String address,
      String amount, BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.2, // Adjust this percentage as needed
              height: MediaQuery.of(context).size.width * 0.2, // Adjust this percentage as needed
              child: Image.asset(imagePath, fit: BoxFit.cover),
            ),
            SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    request,
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.onBackground,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  addHeight(5),
                  SizedBox(
                    width: double.infinity,
                    child: Text(
                      address.trim(),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      style: TextStyle(
                          fontSize: 13,
                          color: Theme.of(context).colorScheme.onBackground),
                    ),
                  ),
                ],
              ),
            ),
            Text(
              "-\$$amount",
              style: TextStyle(
                  color: Theme.of(context).colorScheme.onBackground,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
        addHeight(20),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                "Requests",
                style: TextStyle(
                    color: Theme.of(context).colorScheme.onBackground,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              const Spacer(),
              GestureDetector(
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => RequestsScreen(),
                )),
                child: Text(
                  "see all",
                  style: TextStyle(
                      decoration: TextDecoration.underline,
                      decorationColor: Theme.of(context)
                          .colorScheme
                          .onBackground,
                      // Optional: specify the underline color
                      decorationStyle: TextDecorationStyle.solid,
                      color: Theme.of(context).colorScheme.onBackground,
                      fontSize: 15,
                      fontWeight: FontWeight.w600),
                ),
              )
            ],
          ),
          addHeight(20),
          requestDetails(
              requestImages["Car Repair"]!,
              "Car Repair",
              "10 Canlish Road . 10 GuildWood Parkwat",
              "2000",
              context),
          requestDetails(
              requestImages["Emergency Towing"]!,
              "Emergency towing",
              "10 Canlish Road . 10 GuildWood Parkwat",
              "3500",
              context)
        ],
      ),
    );
  }
}

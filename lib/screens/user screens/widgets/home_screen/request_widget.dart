import 'package:flutter/material.dart';
import 'package:roadside_heroes_app/constants.dart';
import 'package:roadside_heroes_app/screens/user%20screens/images_data.dart';
import 'package:roadside_heroes_app/screens/user%20screens/request.dart';

class RequestWidget extends StatelessWidget {
  const RequestWidget({super.key});

  Widget requestDetails(String imagePath, String request, String address,
      String amount, context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(width: 80, height: 80, child: Image.asset(imagePath)),
            Column(
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
                  width: 150,
                  child: Text(
                    address.trim(),
                    overflow:
                        TextOverflow.ellipsis, // Specify overflow handling
                    maxLines: 2,

                    // Optional: Specify text alignment
                    style: TextStyle(
                        fontSize: 13,
                        color: Theme.of(context).colorScheme.onBackground),
                  ),
                )
              ],
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
                          .onBackground, // Optional: specify the underline color
                      decorationStyle: TextDecorationStyle.solid,
                      color: Theme.of(context).colorScheme.onBackground,
                      fontSize: 15,
                      fontWeight: FontWeight.w600),
                ),
              )
            ],
          ),
          addHeight(20),
          requestDetails(userequestImages["Car Repair"]!, "Car Repair",
              "10 Canlish Road . 10 GuildWood Parkwat", "2000", context),
          requestDetails(
              userequestImages["Emergency Towing"]!,
              "Emergency towing",
              "10 Canlish Road . 10 GuildWood Parkwat",
              "3500",
              context)
        ],
      ),
    );
  }
}

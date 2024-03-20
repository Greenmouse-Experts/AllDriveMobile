import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:roadside_heroes_app/constants.dart';
import 'package:roadside_heroes_app/images_data.dart';

class RequestsScreen extends StatelessWidget {
  const RequestsScreen({Key? key});

  Widget requestContainer(String request, String address, String amount,
      String date, BoxConstraints constraints, context, bool isMobile) {
    return Column(
      children: [
        Container(
          width: constraints.maxWidth,
          height: constraints.maxHeight * 0.23,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5), color: Colors.white),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 6),
            child: Column(
              children: [
                Row(
                  children: [
                    SizedBox(
                        width: 60,
                        height: 60,
                        child: Image.asset(requestImages[request]!)),
                    addWidth(10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          request,
                          style: TextStyle(
                              color: Theme.of(context).colorScheme.onBackground,
                              fontSize: 18,
                              fontWeight: FontWeight.w600),
                        ),
                        addHeight(2),
                        SizedBox(
                          width: constraints.maxWidth * 0.6,
                          child: Text(
                            address,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,

                            // Optional: Specify text alignment
                            style: const TextStyle(
                                fontSize: 17, color: Colors.grey),
                          ),
                        )
                      ],
                    )
                  ],
                ),
                pageDivider(thickeness: 2),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "\$$amount",
                          style: TextStyle(
                              color: Theme.of(context).colorScheme.onBackground,
                              fontSize: 17,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          date,
                          style: const TextStyle(
                              color: Color.fromRGBO(23, 39, 72, 0.7),
                              fontSize: 12),
                        )
                      ],
                    ),
                    const Spacer(),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            Theme.of(context).colorScheme.onBackground,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        minimumSize: isMobile
                            ? Size(constraints.maxWidth * 0.1, 30)
                            : Size(constraints.maxWidth * 0.1, 45),
                      ),
                      child: Text(
                        "Details",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: isMobile ? 14 : 20,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        addHeight(10),
      ],
    );
  }

  Widget menuButton(context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: SizedBox(
        height: 40,
        width: 40,
        child: Stack(children: [
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                border: Border.all(
                    color: Theme.of(context)
                        .colorScheme
                        .onBackground), // Add border color
              ),
            ),
          ),
          PopupMenuButton<MenuAction>(
            color: Colors.white,
            icon: Icon(
              Icons.more_horiz,
              weight: 10,
              color: Theme.of(context).colorScheme.onBackground,
            ),
            itemBuilder: (context) {
              return [
                PopupMenuItem(
                  value: MenuAction.mark_all_as_read,
                  child: const Text('Mark all as read'),
                  onTap: () {},
                ),
                PopupMenuItem(
                  value: MenuAction.filter_unread,
                  child: const Text('Filter Unread'),
                  onTap: () {},
                ),
              ];
            },
          ),
        ]),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.width < 600;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        actions: [menuButton(context)],
        backgroundColor: const Color.fromARGB(255, 246, 246, 246),
        title: Text(
          "My Requests",
          style: TextStyle(
            color: Theme.of(context).colorScheme.onBackground,
            fontSize: 18,
          ),
        ),
        centerTitle: false, // Center align the title
      ),
      backgroundColor: const Color.fromARGB(255, 246, 246, 246),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: LayoutBuilder(
          builder: (context, constraints) {
            return SingleChildScrollView(
              child: Column(
                children: [
                  requestContainer(
                      "Car Repair",
                      "1 check inn close, 200285 queens avessssss",
                      "170",
                      "Feb 15 2024",
                      constraints,
                      context,
                      isMobile),
                  requestContainer(
                      "Car Repair",
                      "1 check inn close, 200285 queens avessssss",
                      "170",
                      "Feb 15 2024",
                      constraints,
                      context,
                      isMobile),
                  requestContainer(
                      "Car Repair",
                      "1 check inn close, 200285 queens avessssss",
                      "170",
                      "Feb 15 2024",
                      constraints,
                      context,
                      isMobile),
                  requestContainer(
                      "Car Repair",
                      "1 check inn close, 200285 queens avessssss",
                      "170",
                      "Feb 15 2024",
                      constraints,
                      context,
                      isMobile),
                  requestContainer(
                      "Car Repair",
                      "1 check inn close, 200285 queens avessssss",
                      "170",
                      "Feb 15 2024",
                      constraints,
                      context,
                      isMobile)
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:roadside_heroes_app/constants.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
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

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        actions: [menuButton(context)],
        backgroundColor: Colors.white,
        title: Text(
          "Notifications",
          style: TextStyle(
            color: Theme.of(context).colorScheme.onBackground,
            fontSize: 18,
          ),
        ),
        centerTitle: false, // Center align the title
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [],
        ),
      ),
    );
  }
}

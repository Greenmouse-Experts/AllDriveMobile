import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:roadside_heroes_app/constants.dart';
import 'package:roadside_heroes_app/screens/user%20screens/images_data.dart';

class ServicePersonnelNotificationScreen extends StatefulWidget {
  const ServicePersonnelNotificationScreen({super.key});

  @override
  State<ServicePersonnelNotificationScreen> createState() =>
      _ServicePersonnelNotificationScreenState();
}

class _ServicePersonnelNotificationScreenState
    extends State<ServicePersonnelNotificationScreen> {
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

  String getImageCategory(NotificationCategory category) {
    if (category == NotificationCategory.booking) {
      return "System booking";
    } else if (category == NotificationCategory.cancelled) {
      return "System cancelled";
    } else if (category == NotificationCategory.transaction) {
      return "System transaction";
    }
    return "Promotion";
  }

  String getMessage(NotificationCategory category, id) {
    if (category == NotificationCategory.booking) {
      return "Your booking $id has been succesfully completed";
    } else if (category == NotificationCategory.cancelled) {
      return "Your booking $id has been cancelled";
    } else if (category == NotificationCategory.transaction) {
      return "Thank you your transaction is complete";
    }
    return "Invite friends - get 3 coupon each";
  }

  Widget notificationContainer(
    String request,
    NotificationCategory category,
  ) {
    String message = getMessage(category, "#0334");
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[200],
        border: Border(
          bottom: BorderSide(width: 1.5, color: Colors.grey[300]!),
        ),
      ),
      child: LayoutBuilder(builder: (context, containerConstraints) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          child: Row(
            children: [
              SizedBox(
                width: containerConstraints.maxWidth * 0.16,
                height: 30,
                child: Image.asset(
                  AppImages.servicePersonnelNotificationImages[
                      getImageCategory(category)]!,
                  fit: BoxFit.contain,
                ),
              ),
              SizedBox(width: containerConstraints.maxWidth * 0.05),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    request,
                    style: TextStyle(
                        fontSize: 18,
                        color: Theme.of(context).colorScheme.onBackground,
                        fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    width: containerConstraints.maxWidth * 0.6,
                    child: AutoSizeText(message,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.onBackground,
                            fontWeight: FontWeight.w700)),
                  ),
                ],
              )
            ],
          ),
        );
      }),
    );
  }

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
          child: Padding(
        padding: const EdgeInsets.only(top: 15),
        child: Column(
          children: [
            notificationContainer(
              "System",
              NotificationCategory.promotion,
            ),
            notificationContainer(
              "System",
              NotificationCategory.cancelled,
            ),
            notificationContainer(
              "System",
              NotificationCategory.transaction,
            ),
            notificationContainer(
              "System",
              NotificationCategory.cancelled,
            ),
          ],
        ),
      )),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:roadside_heroes_app/constants.dart';
import 'package:roadside_heroes_app/models/user_notification_model.dart';
import 'package:roadside_heroes_app/screens/user%20screens/images_data.dart';

class UserNotificationScreen extends StatefulWidget {
  const UserNotificationScreen({Key? key}) : super(key: key);

  @override
  State<UserNotificationScreen> createState() => _UserNotificationScreenState();
}

class _UserNotificationScreenState extends State<UserNotificationScreen> {
  final Map<int, String> months = {
    1: 'January',
    2: 'February',
    3: 'March',
    4: 'April',
    5: 'May',
    6: 'June',
    7: 'July',
    8: 'August',
    9: 'September',
    10: 'October',
    11: 'November',
    12: 'December',
  };

  Widget menuButton(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: SizedBox(
        height: 40,
        width: 40,
        child: Stack(
          children: [
            Positioned.fill(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  border: Border.all(
                    color: Theme.of(context).colorScheme.onBackground,
                  ),
                ),
              ),
            ),
            PopupMenuButton<MenuAction>(
              color: Colors.white,
              icon: Icon(
                Icons.more_horiz,
                size: 20,
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
          ],
        ),
      ),
    );
  }

  String headerText(DateTime date) {
    final now = DateTime.now();
    if (date.year == now.year && date.month == now.month && date.day == now.day) {
      return 'Today';
    } else if (date.year == now.year && date.month == now.month && date.day == now.day - 1) {
      return 'Yesterday';
    } else {
      return '${months[date.month - 1]} ${date.day}';
    }
  }

  Widget buildNotificationList(List<UserNotificationModel> notifications) {
    Map<String, List<UserNotificationModel>> groupedNotifications = {};
    for (var notification in notifications) {
      String header = headerText(notification.date);
      if (!groupedNotifications.containsKey(header)) {
        groupedNotifications[header] = [];
      }
      groupedNotifications[header]!.add(notification);
    }

    List<Widget> widgets = [];
    groupedNotifications.forEach((header, notificationList) {
      widgets.add(
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 10),
              child: Text(
                header,
                style: TextStyle(
                  color: Theme.of(context).colorScheme.onBackground,
                  fontWeight: FontWeight.w700,
                  fontSize: 18,
                ),
              ),
            ),
            ...notificationList.map((notification) => notificationContainer(notification)).toList(),
          ],
        ),
      );
    });

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: widgets,
    );
  }

  Widget notificationContainer(UserNotificationModel notification) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        color: const Color.fromRGBO(239, 240, 242, 1),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          SvgPicture.asset(getImagePath(notification.category)),
          const SizedBox(width: 15),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  notification.headerText,
                  style: TextStyle(
                    fontSize: 16,
                    color: Theme.of(context).colorScheme.onBackground,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 5),
                AutoSizeText(
                  notification.details,
                  minFontSize: 15,
                  maxLines: 1,
                  style: const TextStyle(
                    color: Color.fromRGBO(23, 39, 72, 0.7),
                    fontWeight: FontWeight.w700,
                  ),
                ),
              
              ],
            ),
          ),
        ],
      ),
    );
  }

  String getImagePath(UserNotificationCategory category) {
    return category == UserNotificationCategory.card
        ? AppImages.userNotificationDefaultImage
        : AppImages.userNotificationDiscountImage;
  }

  @override
  Widget build(BuildContext context) {
    final notifications = [
      UserNotificationModel(
        category: UserNotificationCategory.card,
        issue: "towing",
        date: DateTime.now(),
      ),
      UserNotificationModel(
        category: UserNotificationCategory.discount,
        date: DateTime.now().subtract(const Duration(days: 1)),
      ),
      UserNotificationModel(
        category: UserNotificationCategory.card,
        issue: "towing",
        date: DateTime.now().subtract(const Duration(days: 2)),
      ),
      UserNotificationModel(
        category: UserNotificationCategory.discount,
        date: DateTime.now().subtract(const Duration(days: 2)),
      ),
      UserNotificationModel(
        category: UserNotificationCategory.card,
        issue: "towing",
        date: DateTime.now(),
      ),
      UserNotificationModel(
        category: UserNotificationCategory.card,
        issue: "towing",
        date: DateTime.now(),
      ),
    ];

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
          ),
        ),
        centerTitle: false,
      ),
      body: buildNotificationList(notifications),
    );
  }
}

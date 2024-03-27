import 'package:roadside_heroes_app/constants.dart';

class UserNotificationModel {
  UserNotificationModel({required this.category, String? issue, required this.date})
      : issue = issue ?? "towing" {
    if (category == UserNotificationCategory.card) {
      headerText = "Payment Successful";
      details = "Payment for $issue received";
    } else if (category == UserNotificationCategory.discount) {
      headerText = "30% special discount";
      details = "Do not miss out on our special discount";
    }
  }

  final UserNotificationCategory category;
  late String headerText;
  late String details;
  final String issue;
  final DateTime date;
}

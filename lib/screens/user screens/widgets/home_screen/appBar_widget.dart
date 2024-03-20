// ignore_for_file: file_names
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class AppBarWidget extends StatelessWidget {
  final String imagePath;
  final BoxConstraints constraint;
  final bool isignedIn;

  const AppBarWidget({
    super.key,
    required this.imagePath,
    required this.constraint,
  required this.isignedIn
  });


  @override
  Widget build(BuildContext context) {
    double appBarHeight = 60;

    // Calculate the maximum font size based on available space

    return Container(
      height: appBarHeight,
      constraints: BoxConstraints(
        maxWidth: constraint.maxWidth * 0.7,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(appBarHeight / 2),
        color: const Color(0xFFFCEFE2),
      ),
      child: Row(
        children: [
          Container(
            width: appBarHeight - 5,
            height: appBarHeight - 5,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(appBarHeight / 2),
            ),
            child: Image.asset(
              imagePath,
              fit: BoxFit.contain,
            ),
          ),
          const SizedBox(width: 10),
          const FittedBox(
            fit: BoxFit.fitWidth,
            child: Text("Good morning dwaelo"),
          )
        ],
      ),
    );
  }
}

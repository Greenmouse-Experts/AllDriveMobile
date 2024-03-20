import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:roadside_heroes_app/constants.dart';

class AppBarWidget extends StatelessWidget {
  final String imagePath;
  final BoxConstraints constraint;

  const AppBarWidget({
    Key? key,
    required this.imagePath,
    required this.constraint,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double appBarHeight = 60;
    double screenWidth = MediaQuery.of(context).size.width;

    // Calculate the maximum font size based on available space

    return Container(
      height: appBarHeight,
      constraints: BoxConstraints(
        maxWidth: constraint.maxWidth * 0.7,
      ),
      padding: EdgeInsets.symmetric(horizontal: 5),
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
          SizedBox(width: 10),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text("Good morning dwaelo"),
          )
        ],
      ),
    );
  }
}

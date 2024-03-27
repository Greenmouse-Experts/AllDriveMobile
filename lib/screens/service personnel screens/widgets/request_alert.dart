import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:roadside_heroes_app/constants.dart';

class RequestAlertWidget extends StatelessWidget {
  final String imagePath;
  final BoxConstraints constraints;
  final String request;
  const RequestAlertWidget(
      {super.key,
      required this.imagePath,
      required this.constraints,
      required this.request});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: constraints.maxWidth * 0.2,
          height: constraints.maxHeight * 0.1,
          child: Image.asset(imagePath),
        ),
        addHeight(5),
        AutoSizeText(
          request,
          style: const TextStyle(fontWeight: FontWeight.w400),
        )
      ],
    );
  }
}

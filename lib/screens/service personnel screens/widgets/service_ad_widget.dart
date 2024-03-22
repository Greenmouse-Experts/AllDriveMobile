import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:roadside_heroes_app/constants.dart';

class ServiceHomeAdWidget extends StatefulWidget {
  final BoxConstraints constraint;
  const ServiceHomeAdWidget({Key? key, required this.constraint})
      : super(key: key);

  @override
  State<ServiceHomeAdWidget> createState() => _ServiceHomeAdWidgetState();
}

class _ServiceHomeAdWidgetState extends State<ServiceHomeAdWidget>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Container(
              width: widget.constraint.maxWidth * 0.9,
              child: Stack(
                children: [
                  Positioned.fill(
                    child: Image.asset(
                      "assets/images/ad_background.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    left: widget.constraint.maxWidth *
                        0.05, // Adjust left position based on constraints
                    top: widget.constraint.maxHeight *
                        0.05, // Adjust top position based on constraints
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Get assistance requests from\n"
                          "distressed motorists",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                          ),
                        ),
                        addHeight(5),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                            minimumSize: const Size(100, 30),
                          ),
                          child: const Text(
                            "Learn more",
                            style: TextStyle(
                              color: Color.fromARGB(255, 20, 36, 76),
                              fontWeight: FontWeight.w900,
                              fontSize: 13,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
